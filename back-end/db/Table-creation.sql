CREATE TABLE "users" (
  "id" SERIAL PRIMARY KEY,
  "email_address" varchar(100) UNIQUE NOT NULL,
  "hashed_pw" text,
  "auth_method" varchar(50) NOT NULL,
  "is_seller" BOOLEAN DEFAULT TRUE
);

CREATE TABLE "sellers" (
  "id" SERIAL PRIMARY KEY,
  "user_id" INTEGER REFERENCES "users"("id")
);

CREATE TABLE "addresses" (
  "id" SERIAL PRIMARY KEY,
  "address" varchar(300) NOT NULL,
  "phone_number" varchar(12) NOT NULL,
  UNIQUE ("address", "phone_number")
);

CREATE TABLE "categories" (
  "id" SERIAL PRIMARY KEY,
  "name" varchar(100) NOT NULL,
  "description" text,
  "url_slug" varchar(50)
);

CREATE TABLE "products" (
  "id" SERIAL PRIMARY KEY,
  "name" varchar(100) NOT NULL,
  "price" money NOT NULL,
  "available_stock_count" integer NOT NULL,
  "short_description" text,
  "long_description" text,
  "img_link" text DEFAULT 'https://img.upanh.tv/2024/05/30/San-phm-nay-khong-co-hinh-anh.png',
  "seller_id" INTEGER,
  "category_id" INTEGER
);

CREATE TABLE "cart_products" (
  "user_id" integer,
  "product_id" integer,
  PRIMARY KEY ("user_id", "product_id")
);

CREATE TABLE "orders" (
  "id" SERIAL PRIMARY KEY,
  "user_id" integer,
  "address_id" integer,
  "order_placed_time" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "status" varchar(100) NOT NULL,
  "total_cost" money NOT NULL
);

CREATE TABLE "order_products" (
  "order_id" integer,
  "product_id" integer,
  PRIMARY KEY ("order_id", "product_id")
);

CREATE TABLE "product_categories" (
  "product_id" integer,
  "category_id" integer,
  PRIMARY KEY ("product_id", "category_id")
);

CREATE TABLE "seller_products" (
  "product_id" integer,
  "seller_id" integer
);

ALTER TABLE "cart_products" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");
ALTER TABLE "cart_products" ADD FOREIGN KEY ("product_id") REFERENCES "products" ("id");
ALTER TABLE "orders" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");
ALTER TABLE "orders" ADD FOREIGN KEY ("address_id") REFERENCES "addresses" ("id");
ALTER TABLE "order_products" ADD FOREIGN KEY ("order_id") REFERENCES "orders" ("id");
ALTER TABLE "order_products" ADD FOREIGN KEY ("product_id") REFERENCES "products" ("id");
ALTER TABLE "product_categories" ADD FOREIGN KEY ("product_id") REFERENCES "products" ("id");
ALTER TABLE "product_categories" ADD FOREIGN KEY ("category_id") REFERENCES "categories" ("id");
ALTER TABLE "seller_products" ADD FOREIGN KEY ("seller_id") REFERENCES "sellers" ("id");
ALTER TABLE "seller_products" ADD FOREIGN KEY ("product_id") REFERENCES "products" ("id");