import { redirect, useLoaderData } from "react-router-dom";

import InlineErrorPage from "../../components/InlineErrorPage/InlineErrorPage";
import ProductFeedItem from "./ProductFeedItem";

import utilStyles from "../../App/utilStyles.module.css";
import styles from "./ProductFeed.module.css";

async function fetchCategoryData(categorySlug) {
  const res = await fetch(`${process.env.REACT_APP_API_BASE_URL}/categories`);
  if (!res.ok) {
    throw new Error("Unsuccessful categories fetch.");
  }
  const categories = await res.json();

  const filteredCategories = categories.filter(c => c.url_slug === categorySlug);
  if (filteredCategories.length === 0) {
    throw new Response("Not Found", { status: 404 });
  }
  return filteredCategories[0];
}

export async function productFeedLoader({ params, request }) {
  try {
    const url = new URL(request.url);
    let productsFetchURL = `${process.env.REACT_APP_API_BASE_URL}/products`;
    let categoryData = null;
    let searchTerm = null;

    if (params.categorySlug) {
      categoryData = await fetchCategoryData(params.categorySlug);
      productsFetchURL += `?category_id=${categoryData.id}`;

    } else if (url.pathname.includes("search")) {
      searchTerm = url.searchParams.get("q");
      if (!searchTerm) {
        return redirect("/");
      }
      productsFetchURL += `?search_term=${searchTerm}`;
    }

    const res = await fetch(productsFetchURL);
    if (!res.ok) {
      throw new Error("Unsuccessful products fetch.");
    }
    const productsData = await res.json();

    return { productsData, categoryData, searchTerm };

  } catch (error) {
    if (error.status === 404) {
      throw error;
    }
    return { error: "Sorry, products could not be loaded." };
  }
}

export function ProductFeed({ isSearchResults }) {
  const { categoryData, productsData, searchTerm, error } = useLoaderData();

  if (error) {
    return <InlineErrorPage pageName="Error" message={error} />;
  }

  function getHeadingText() {
    if (isSearchResults) {
      return "Search Results";
    } else if (categoryData) {
      return categoryData.name;
    } else {
      return "All Products";
    }
  }

  function getDescriptionText() {
    if (isSearchResults) {
      const productCount = productsData.length;
      const resultText = productCount !== 1 ? "results" : "result";
      return `${productCount} ${resultText} for "${searchTerm}".`;

    } else if (categoryData) {
      return categoryData.description;

    } else {
      return "Browse our full range of products.";
    }
  }

  function renderFeedItems() {
    if (productsData.length === 0) {
      return <p className={utilStyles.emptyFeedMessage}>Sorry, no products were found.</p>;
    }
    const feedItems = productsData.map(p => <ProductFeedItem key={p.id} productData={p} />);
    return <div className={styles.productGrid}>{feedItems}</div>;
  }

  return (
    <div className={utilStyles.pagePadding}>
      <div className={utilStyles.mb4rem}>
        <h1 className={utilStyles.h1}>{getHeadingText()}</h1>
        <p>{getDescriptionText()}</p>
      </div>
      {renderFeedItems()}
    </div>
  );
}