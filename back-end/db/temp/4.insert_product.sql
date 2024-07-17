WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'Harry Potter', 
                10.99, 
                50, 
                50, 
                'Books - Harry Porter 8 books', 
                'arry Potter is a famous pillow book series for children and adults around the world. Therefore, it is very worthy of being in your precious book collection!',
                4.7, 
                40, 
                'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lo2fkkf8a0313b', 
                1
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 1);
WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'Great Writing', 
                10.99, 
                50, 
                50, 
                'Great Writing Fifth Edition (2019 Edition - latest version)', 
                'As of now (April 2021), this is the 5th version - the latest version of this famous Great Writing book series. The book includes 6 levels.As of now (April 2021), this is the 5th version - the latest version of this famous Great Writing book series. The book includes 6 levels.
This is a very good set of self-study books. At the beginning of each lesson, there is a grammar for writing section used in the lesson, and a Writer" Note and practice section after each instruction. There is an Example paragraph section that explains words in the reading comprehension lesson to learn vocabulary in the best way.',
                4.6, 
                40, 
                'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lo3rx5mx3njhda', 
                1
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 1);
WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'Doraemon', 
                9.99, 
                50, 
                50, 
                'DOREMON 24 BOOKS - ENGLISH - LONG STORY', 
                'DOREMON 24 BOOKS - ENGLISH - LONG STORY',
                4.9, 
                50, 
                'https://down-vn.img.susercontent.com/file/sg-11134201-7rd40-lut3jtjy5giib3', 
                1
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 1);
WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'The Great Gatsby', 
                10.99, 
                50, 
                50, 
                'A classic novel by F. Scott Fitzgerald', 
                'The Great Gatsby is a 1925 novel by American writer F. Scott Fitzgerald. Set in the Jazz Age on Long Island, near New York City, the novel depicts first-person narrator Nick Carraway''s interactions with mysterious millionaire Jay Gatsby and Gatsby''s obsession to reunite with his former lover, Daisy Buchanan.',
                4.8, 
                50, 
                'https://img.upanh.tv/2024/06/08/81QuEGw8VPL._AC_UF10001000_QL80_.jpg', 
                1
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 1);
WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'Dac Nhan Tam', 
                11.99, 
                50, 
                50, 
                'Personal development books', 
                'Famous book about personal development and communication',
                5, 
                50, 
                'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lp267r3nv61a6c', 
                1
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 1);
WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'Inception', 
                14.99, 
                50, 
                50, 
                'A mind-bending thriller by Christopher Nolan', 
                'Dom Cobb is a thief with the rare ability to enter people''s dreams and steal their secrets from their subconscious. His skill has made him a hot commodity in the world of corporate espionage but has also cost him everything he loves. Cobb gets a chance at redemption when he is offered a seemingly impossible task: Plant an idea in someone''s mind.',
                4.6, 
                70, 
                'https://img.upanh.tv/2024/06/08/MV5BMjAxMzY3NjcxNF5BMl5BanBnXkFtZTcwNTI5OTM0Mw._V1_.jpg', 
                2
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 2);
WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'Avengers: Infinity War', 
                49.99, 
                50, 
                50, 
                'Superhero movie', 
                'Famous superhero movie from Marvel Studios',
                4.5, 
                50, 
                'https://img.upanh.tv/2024/06/09/image355e3f6bc3b1a27c.png', 
                2
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 2);
WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'Forrest Gump', 
                50, 
                50, 
                50, 
                'Classic film', 
                'Classic filmFamous superhero movie from Marvel Studios',
                4.7, 
                40, 
                'https://img.upanh.tv/2024/06/09/image19527c8f0a25bb7f.png', 
                2
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 2);
WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'Tesla Model S', 
                99.99, 
                50, 
                50, 
                'An electric vehicle by Tesla', 
                'The Tesla Model S is an all-electric five-door liftback sedan produced by Tesla, Inc. It was introduced on June 22, 2012. As of August 2020, the Model S Long Range Plus has an EPA range of 402 miles (647 km), higher than that of any other battery electric car.',
                4.9, 
                70, 
                'https://img.upanh.tv/2024/06/08/2018_Tesla_Model_S_75D.jpg', 
                2
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 2);
WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'Honda Wave motorbike', 
                88.88, 
                50, 
                50, 
                'Motorcycles save fuel', 
                'Honda Wave motorbike with compact design and fuel economy',
                4.4, 
                60, 
                'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lun8fcfgb09xb8', 
                2
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 2);
WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'Toyota Corolla', 
                99.99, 
                50, 
                50, 
                'Popular sedans', 
                'One of Toyota"s popular and reliable sedan models.',
                4.9, 
                80, 
                'https://down-vn.img.susercontent.com/file/vn-50009109-fac1952b051897f9aaec3a41203e1fcb', 
                2
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 2);
WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'Sport bicycle', 
                70.99, 
                50, 
                50, 
                'Mountain bike', 
                'Strong and durable off-road sports bike',
                4.7, 
                30, 
                'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lto45t5zdnuyd8', 
                2
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 2);
WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'Men’s T-Shirt', 
                45.77, 
                50, 
                50, 
                'A comfortable cotton t-shirt', 
                'This classic cotton t-shirt is perfect for everyday wear. Made from 100% cotton, it is both soft and breathable. Available in multiple sizes and colors.',
                4.6, 
                100, 
                'https://img.upanh.tv/2024/06/08/tee1.webp', 
                3
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 3);
WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'Levi Jeans', 
                45.5, 
                50, 
                50, 
                'Classic jeans from the Levi brand', 
                'The youthful straight-leg jeans shape creates an extremely standard form for wearers. Large pockets are very convenient for storing smart phones or large wallets.',
                4.5, 
                90, 
                'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lo23rrevl8199f', 
                3
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 3);
WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'Polo T-Shirts', 
                30.5, 
                50, 
                50, 
                'Classic T-shirt with Polo TORNO Men logo.', 
                'TORANO Men"s Polo Shirt, breathable and comfortable, plain cotton fabric BASIC Masculine, Luxurious, Elegant TP038',
                4.4, 
                80, 
                'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lrxzynm5unq19e', 
                3
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 3);
WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'Ray-Ban sunglasses', 
                45.6, 
                50, 
                50, 
                'Fashion sunglasses', 
                'Ray-Ban sunglasses with stylish design and UV protection',
                4.3, 
                100, 
                'https://down-vn.img.susercontent.com/file/788b639d0c25b534af666964e0319ff9', 
                3
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 3);
WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'Balo laptop Samsonite', 
                43.5, 
                50, 
                50, 
                'Shockproof backpack', 
                'Samsonite Laptop Backpack with shockproof compartment protects laptop.',
                4.1, 
                50, 
                'https://down-vn.img.susercontent.com/file/vn-11134201-23020-d8w8cqzacunv37', 
                3
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 3);
WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'Casio G-Shock watch', 
                50, 
                50, 
                50, 
                'Sports watch', 
                'Casio G-Shock watches are waterproof and impact resistant',
                4.2, 
                30, 
                'https://down-vn.img.susercontent.com/file/vn-11134207-7qukw-lia0el0xzqvm0b', 
                3
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 3);
WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'Adidas T-shirt', 
                10, 
                50, 
                50, 
                'Sports shirt', 
                'Adidas T-shirt with cool material and dynamic design',
                4, 
                50, 
                'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lusote164vfp87', 
                3
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 3);
WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'Samsonite travel suitcase', 
                20.5, 
                50, 
                50, 
                'Durable and beautiful travel suitcase', 
                'Samsonite travel suitcase with durable material and convenient design',
                4.3, 
                40, 
                'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lufv0ieu8ht146', 
                3
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 3);
WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'Calvin Klein office shirt', 
                30.59, 
                50, 
                50, 
                'Men"s office shirt', 
                'Calvin Klein office shirt with cool material and luxurious design',
                4.4, 
                50, 
                'https://down-vn.img.susercontent.com/file/vn-11134201-7r98o-lqn1nuors4s7cf', 
                3
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 3);
WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'Nike Air Max sneakers', 
                45.99, 
                50, 
                50, 
                'Stylish sneakers', 
                'Nike Air Max sneakers with a stylish and comfortable design',
                4.7, 
                100, 
                'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lqsxjjdna7rmb6', 
                3
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 3);
WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'The North Face jacket', 
                44.99, 
                50, 
                50, 
                'Waterproof jacket', 
                'The North Face jacket is waterproof and keeps you warm',
                4.4, 
                78, 
                'https://down-vn.img.susercontent.com/file/vn-11134201-7r98o-lu08mtu9ru3d29', 
                3
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 3);
WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'Gucci handbags', 
                59.99, 
                50, 
                50, 
                'Fashion handbags', 
                'High-end and fashionable Gucci handbags.',
                4.5, 
                90, 
                'https://down-vn.img.susercontent.com/file/th-11134207-7r98q-ln17vgmwuys386', 
                3
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 3);
WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'Unisex fashion glasses', 
                49.5, 
                50, 
                50, 
                'Unisex Fashion Glasses Korean Style Square Half Frame Anti-Blue Light Glasses', 
                '- The frame legs are made from flexible plastic and metal, helping to wear the glasses for a long time without causing discomfort or pain in the ear. - The frame legs are made from flexible plastic and metal, helping to wear the glasses for a long time without causing discomfort or pain in the ear.

       - Frame-based glasses are 0-degree glasses that you can wear for fashion, dust protection or install close-up glasses.

       - Firm frame latches help keep eyeglasses form well.

       - Oval eyeglass frames are fashionably designed to suit both men and women, youthful and dynamic Korean style.',
                4.1, 
                45, 
                'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lmak0d83qy8v2c', 
                3
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 3);
WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'Men belts', 
                45.55, 
                50, 
                50, 
                'High quality men leather belt, luxury men automatic buckle belt, black leather belt TLD01', 
                'Sophisticated and sharp, beautifully shaped and plated, creating elegance and class for an accessory that easily attracts gentlemen and is a delicate highlight for every outfit.',
                4.3, 
                55, 
                'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lqurugc8jd1g94', 
                3
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 3);
WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'Men"s vest', 
                33.45, 
                50, 
                50, 
                'Elegant vest', 
                'Elegant and stylish men"s suit, suitable for important events.',
                4.5, 
                65, 
                'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lug9owihnkeq63', 
                3
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 3);
WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'Balo Da Teelab Local Brand Essentials Leather Backpack AC085', 
                55, 
                50, 
                50, 
                'You will never be younger than you are at this very moment “Enjoy Your Youth!', 
                'You will never be younger than you are at this very moment “Enjoy Your Youth!',
                4.3, 
                66, 
                'https://down-vn.img.susercontent.com/file/vn-11134207-7qukw-lk0sgv3fm2t0b9', 
                3
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 3);
WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'Balo MLKSRH KQES', 
                45, 
                50, 
                50, 
                'MLKSRH KQES backpack has large capacity, light weight, waterproof and easy to coordinate with fashion outfits', 
                'The textured printed fabric is light, comfortable to the touch, abrasion resistant and supple',
                4.1, 
                65, 
                'https://down-vn.img.susercontent.com/file/sg-11134201-22120-od1g8xu9xelv48', 
                3
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 3);
WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'New Men Sneakers 2024', 
                44, 
                50, 
                50, 
                'New 2024 men sports shoes, breathable mesh walking shoes, anti-slip soft sole FASA STORE', 
                'Design style: New Korean trend design 2024- Upper material: PU leather combined with breathable mesh fabric
- Sole material: Solid molded rubber sole with anti-slip texture
- Heel height: flat heel, sole height about 3 cm
- Color classification: Brown, Gray
- Shoe size: 39, 40, 41, 42, 43, 44',
                4.2, 
                60, 
                'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lqm5869j5i5z6b', 
                3
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 3);
WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'Neutrogena sunscreen', 
                45.5, 
                50, 
                50, 
                'Sunscreen SPF 50', 
                'Neutrogena sunscreen with SPF 50 protects skin from UV rays',
                4.2, 
                67, 
                'https://down-vn.img.susercontent.com/file/fda9914210217b76c4f557d6d0b311c8', 
                3
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 3);
WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'MAC lipstick', 
                55.55, 
                50, 
                50, 
                'High quality lipstick', 
                'MAC lipstick with bright and long-lasting colors.',
                4.3, 
                70, 
                'https://down-vn.img.susercontent.com/file/vn-11134201-7r98o-lt3ro99gor6y14', 
                3
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 3);
WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'Amour Bad Boy Plus Men Perfumer', 
                49.99, 
                50, 
                50, 
                'Amour Bad Boy Plus Men Perfume French Imported Ingredients Sweet, Mysterious, Alluring Fragrance Spray 10ml and 2ml', 
                'A:MOUR - Is a local brand specializing in manufacturing and researching perfume lines with affordable prices, elegant, youthful scents with long lasting scent.',
                4.5, 
                70, 
                'https://down-vn.img.susercontent.com/file/sg-11134201-22120-nsdzqkhbcukv6c', 
                3
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 3);
WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'Modern Sofa', 
                45.99, 
                50, 
                50, 
                'A stylish and comfortable sofa', 
                'This modern sofa is perfect for any living room. It features a sleek design and is upholstered in high-quality fabric. The sofa is both comfortable and durable, making it a great addition to your home.',
                4.4, 
                80, 
                'https://img.upanh.tv/2024/06/08/European-Luxury-Modern-Living-Room-Genuine-Leather-U-Shape-LED-Sofa.webp', 
                4
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 4);
WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'Wooden wardrobe', 
                30, 
                50, 
                50, 
                'Convenient wardrobe', 
                'Wooden wardrobe with convenient design and many compartments',
                4.6, 
                66, 
                'https://down-vn.img.susercontent.com/file/22426cb8f55de0dbb9238b00b5158e0e', 
                4
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 4);
WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'Smart study desk', 
                45.65, 
                50, 
                50, 
                'Multi-purpose study desk', 
                'Smart study desk with convenient design and many storage compartments',
                4.7, 
                65, 
                'https://down-vn.img.susercontent.com/file/vn-11134207-7qukw-lifpnrvnpmh8e4', 
                4
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 4);
WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'ZingZingMart pillowcase', 
                75.99, 
                50, 
                50, 
                'ZingZingMart pillowcase made of soft and cool poly cotton (suitable for 20cm diameter intestine)', 
                'Use it to add variety to your bedroom space or use it with your family"s old set to make it easier to change laundry (especially when it"s hot and humid).',
                4.6, 
                44, 
                'https://down-vn.img.susercontent.com/file/0f795c74231b510e6ff95b3e8f18acd4', 
                4
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 4);
WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'Wooden wardrobe', 
                79.99, 
                50, 
                50, 
                'Convenient wardrobe', 
                'Wooden wardrobe with convenient design and many compartments.',
                4.4, 
                65, 
                'https://down-vn.img.susercontent.com/file/22426cb8f55de0dbb9238b00b5158e0e', 
                4
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 4);
WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'Leather sofa set', 
                69.99, 
                50, 
                50, 
                'High quality leather sofa', 
                'High quality leather sofa set with luxurious and comfortable design',
                4.5, 
                66, 
                'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lq6ekru0xuj624', 
                4
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 4);
WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'Smart study desk', 
                79.99, 
                50, 
                50, 
                'Multi-purpose study desk', 
                'Smart study desk with convenient design and many storage compartments',
                4.5, 
                66, 
                'https://down-vn.img.susercontent.com/file/vn-11134207-7qukw-lifpnrvnpmh8e4', 
                4
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 4);
WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'Office swivel chair', 
                85.5, 
                50, 
                50, 
                'Comfortable swivel chair', 
                'Office swivel chair with soft cushion and back support design',
                5, 
                77, 
                'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lmeyof3jbilbe9', 
                4
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 4);
WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'Full body massage chair', 
                35.78, 
                50, 
                50, 
                'Relaxing massage chair', 
                'Full body massage chair with many massage modes and luxurious design',
                5, 
                88, 
                'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lu0d9dnbr3f56a', 
                4
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 4);
WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'Ikea wooden bookshelf', 
                45.76, 
                50, 
                50, 
                'Convenient bookshelf', 
                'Ikea wooden bookshelf with simple design and large storage capacity',
                5, 
                90, 
                'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-llm3d31ojfss9e', 
                4
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 4);
WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'Earphone Apple AirPods with Charging Case 2nd gen', 
                45.66, 
                50, 
                50, 
                'Earphone Apple AirPods with Charging Case 2nd gen', 
                'With optimal talk time, breakthrough technology and combined with the Charging Case, AirPods provide the ultimate wireless headset experience like never before. The headset can be used with all your devices (2). Once inserted, the headphones connect instantly, immersing you in rich, high-fidelity sound. All great.',
                5, 
                88, 
                'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lmd1u9d71pen39', 
                4
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 4);
WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'Mini Bluetooth Speaker', 
                56.89, 
                50, 
                50, 
                'ini Bluetooth Speaker Handheld portable mini bluetooth speaker 💥Color Changing LED Light💥 - Free Charging Cord, Bluetooth 5.0 technology', 
                'ini Bluetooth Speaker Handheld portable mini bluetooth speaker 💥Color Changing LED Light💥 - Free Charging Cord, Bluetooth 5.0 technology',
                4.5, 
                56, 
                'https://down-vn.img.susercontent.com/file/vn-11134207-7qukw-lg0cvov1tvfuc7', 
                4
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 4);
WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'HUAWEI WATCH FIT', 
                56.78, 
                50, 
                50, 
                'HUAWEI WATCH FIT 3 Smart Watch Gray (Nylon Strap) | Slim and Light Design | 1.82" AMOLED Screen | Comprehensive Workout Management | Up to 10 Days of Usage', 
                'HUAWEI WATCH FIT 3 Smart Watch Gray (Nylon Strap) | Slim and Light Design | 1.82" AMOLED Screen | Comprehensive Workout Management | Up to 10 Days of Usage',
                4.3, 
                45, 
                'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lvnznrev5ri172', 
                4
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 4);
WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'Giá đỡ LAPTOP, ĐIỆN THOẠI', 
                45.98, 
                50, 
                50, 
                'Aluminum LAPTOP, PHONE, COMPUTER stand with adjustable height, laptop stand', 
                'The laptop stand can be adjusted to different heights, helping you relieve shoulder and waist pain, protecting your eyes, eliminating hand fatigue, and ventilation design to prevent the device from overheating.',
                4.4, 
                60, 
                'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lvnznrev5ri172', 
                4
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 4);
WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'Mini Handheld Massage Machine', 
                90.5, 
                50, 
                50, 
                'Handheld massage gun for back punching, neck and shoulder therapeutic massage, 4 heads, 6 modes, good product', 
                'Uses and Functions:Uses and Functions:
       - Standard ball massage head: suitable for massaging large muscle forces such as waist, back, thighs...
       -shaped massage head: used for neck and spine massage.
       - Flat massage head: suitable for large muscle areas such as biceps, thighs, and calves
       - Conical massage head: suitable for massaging palms, soles, heels....',
                4.3, 
                55, 
                'https://down-vn.img.susercontent.com/file/vn-11134207-7qukw-lg5wu1a0wd8705', 
                4
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 4);
WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'Medical Gloves', 
                45.88, 
                50, 
                50, 
                'Powdered medical gloves, powder-free medical gloves', 
                'Powder-free medical gloves with 7-80c powder box',
                4.3, 
                45, 
                'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-ltz32pbw5amp63', 
                4
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 4);
WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'Samsung refrigerator', 
                56.87, 
                50, 
                50, 
                'Large capacity refrigerator', 
                'Samsung refrigerator with large capacity and many convenient features',
                4.3, 
                100, 
                'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-loz7ji6k6mhadf', 
                4
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 4);
WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'LG Inverter washing machine', 
                56.88, 
                50, 
                50, 
                'Washing machine saves electricity', 
                'LG Inverter washing machine with energy saving technology and effective cleaning',
                4.3, 
                44, 
                'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lt7vsysz443o84', 
                4
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 4);
WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'Philips table lamp', 
                56.9, 
                50, 
                50, 
                'LED table lamp', 
                'Philips table lamp with energy-saving LED light',
                4.5, 
                65, 
                'https://down-vn.img.susercontent.com/file/vn-11134201-7r98o-lvyi4itubudod3', 
                4
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 4);
WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'Dyson vacuum cleaner', 
                56.8, 
                50, 
                50, 
                'Cordless vacuum cleaner', 
                'Dyson cordless vacuum cleaner with powerful suction',
                4.3, 
                66, 
                'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-ltnb844pvk7e40', 
                4
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 4);
WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'Nespresso coffee machine', 
                45.54, 
                50, 
                50, 
                'Capsule coffee maker', 
                'Nespresso coffee maker is convenient and fast',
                4.6, 
                100, 
                'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-llnasdce574fa1', 
                4
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 4);
WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'Philips oil-free fryer', 
                58.99, 
                50, 
                50, 
                'Modern oil-free fryer', 
                'Philips oil-free fryer with oil-free frying technology and easy to use',
                4.5, 
                100, 
                'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lw55nzre5knvf2', 
                4
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 4);
WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'Kuvings juicer', 
                87.99, 
                50, 
                50, 
                'Slow juicer', 
                'Kuvings slow juicer preserves nutrition',
                4.7, 
                100, 
                'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-luyocoqtyko5fd', 
                4
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 4);
WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'Bosch induction cooker', 
                76.99, 
                50, 
                50, 
                'Induction cooker saves electricity', 
                'Bosch induction cooker with energy saving technology and quick cooking',
                4.5, 
                100, 
                'https://down-vn.img.susercontent.com/file/1ecef7490e0d075d309ee75d9b72c4be', 
                4
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 4);
WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'Philips blender', 
                67.99, 
                50, 
                50, 
                'High capacity blender', 
                'Philips blender with sharp blades and powerful motor',
                4.3, 
                100, 
                'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lw55jndwll23c4', 
                4
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 4);
WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'Sony WH-1000XM4 headphones', 
                67.88, 
                50, 
                50, 
                'Noise-canceling headphones', 
                'Sony WH-1000XM4 headphones with advanced noise canceling technology',
                4.3, 
                100, 
                'https://down-vn.img.susercontent.com/file/vn-11134201-7r98o-lvx828jtj3r28c', 
                4
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 4);
WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'Canon EOS M50 camera', 
                87.66, 
                50, 
                50, 
                'Mirrorless camera', 
                'Canon EOS M50 camera with excellent image quality and ease of use',
                4.7, 
                100, 
                'https://down-vn.img.susercontent.com/file/vn-11134201-7r98o-lvmwc7h6td8oa8', 
                4
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 4);
WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'TV Samsung 55 inch', 
                56.77, 
                50, 
                50, 
                '4K Smart TV', 
                'Samsung 55-inch TV with 4K resolution and smart features',
                4.6, 
                100, 
                'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lr5obh6o1rbtaa', 
                4
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 4);
WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'Bose SoundLink speaker', 
                78.87, 
                50, 
                50, 
                'Portable Bluetooth speaker', 
                'Bose SoundLink portable Bluetooth speaker with high-quality sound',
                4.9, 
                100, 
                'https://down-vn.img.susercontent.com/file/87ce851a9d5b2c29812baf0465fb06ef', 
                4
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 4);
WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'Razer mechanical keyboard', 
                67.78, 
                50, 
                50, 
                'Gaming keyboard', 
                'Razer mechanical keyboard for gamers with high sensitivity.',
                4.1, 
                100, 
                'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lvl9vl1nw32p1a', 
                4
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 4);
WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'Canon EOS camera', 
                67.87, 
                50, 
                50, 
                'Professional camera', 
                'Canon EOS camera with high image quality and many features',
                4.3, 
                100, 
                'https://down-vn.img.susercontent.com/file/sg-11134201-7rd4y-lw2b6wmmx3wo6a', 
                4
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 4);
WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'Tablet Samsung Galaxy Tab', 
                67.87, 
                50, 
                50, 
                'Android Tablet', 
                'Samsung Galaxy Tab tablet with large screen and high performance',
                4.4, 
                100, 
                'https://down-vn.img.susercontent.com/file/vn-11134207-7qukw-lkcsibfi19d45c', 
                4
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 4);
WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'HP LaserJet Printer', 
                67.87, 
                50, 
                50, 
                'Black and white laser printer', 
                'HP LaserJet printer with fast printing speed and high quality',
                4.7, 
                100, 
                'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lqsvacectu7rde', 
                4
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 4);
WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'Hikvision security cameras', 
                67.99, 
                50, 
                50, 
                'HD security cameras', 
                'Hikvision security camera with HD resolution and wireless connection',
                4.6, 
                100, 
                'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lqy6m3fogb6hd6', 
                4
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 4);
WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'Everlast boxing gloves', 
                87.77, 
                50, 
                50, 
                'Professional boxing gloves', 
                'Everlast boxing gloves with protective padding and sturdy design',
                4.3, 
                100, 
                'https://down-vn.img.susercontent.com/file/acb3f37261d846470637d20e51058e19', 
                4
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 4);
WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'Cabernet Sauvignon red wine', 
                98.99, 
                50, 
                50, 
                'Quality wine', 
                'Cabernet Sauvignon red wine from Napa Valley',
                4.7, 
                100, 
                'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lkkf16ybc7hm82', 
                4
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 4);
WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'Johnnie Walker whiskey', 
                88.99, 
                50, 
                50, 
                'Premium whiskey', 
                'High quality Johnnie Walker Red Label whiskey.',
                4.8, 
                100, 
                'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lvef7npr6s84ea', 
                4
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 4);
WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'Repair kit', 
                78.88, 
                50, 
                50, 
                'Multi-purpose tool set', 
                'Multi-purpose repair kit with many different types of tools.',
                4.4, 
                100, 
                'https://down-vn.img.susercontent.com/file/5394feeb73bb1b48baf6da02fe679ec0', 
                4
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 4);
WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'Yamaha guitars', 
                99.99, 
                50, 
                50, 
                'Acoustic guitar', 
                'Yamaha acoustic guitar with warm and quality sound',
                4.7, 
                100, 
                'https://down-vn.img.susercontent.com/file/5bedace211cbc47191075c751be1a11a', 
                4
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 4);
WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'Umbrella', 
                23.55, 
                50, 
                50, 
                'Foldable umbrella with anti-UV coating, portable outdoor sun and rain umbrella', 
                'Compact folding umbrella with eye-catching designs and colors, creating aesthetics for the user, thick Taffeta fabric, effective waterproof',
                4.6, 
                100, 
                'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lsb3cmki0p1g74', 
                4
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 4);
WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'Hairdryer', 
                44.33, 
                50, 
                50, 
                'Modern 2-way hot and cold salon styling hair dryer with high capacity of 3500w', 
                'Hair dryer with very large design capacity of 3500w, wind speed and heat are good enough, meeting the needs of individuals and families.',
                4.3, 
                100, 
                'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lnlptgcgux2le6', 
                4
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 4);
WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'Flashlight', 
                23.33, 
                50, 
                50, 
                '3W Super Bright LED Flashlight (Random Color Delivery: Black/Red/Silver)', 
                'Mini flashlights like keychains, pockets...etc',
                4.4, 
                100, 
                'https://down-vn.img.susercontent.com/file/vn-50009109-0bef9fdb751252b12de4eddc032b71e3', 
                4
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 4);
WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'Battery backup', 
                33.55, 
                50, 
                50, 
                'Backup Battery 30000mah 2 Charging Ports - 1 Year Warranty-anhstore99', 
                '3 charging ports support Quick Charge 2.0 (Micro usb, Type C), you can use IPhone / Micro usb / Type C cable to charge this battery. Therefore, the product does not include a charging cable or charger to reduce product costs.',
                4.3, 
                100, 
                'https://down-vn.img.susercontent.com/file/vn-11134207-7qukw-lgg82s6m5qev32', 
                4
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 4);
WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'Xiaomi Redmi tempered glass', 
                77.66, 
                50, 
                50, 
                'Tempered glass Xiaomi Redmi 9D Screen Note 10/Note 9/Note 8/Note 7/Pro/Mi 11 lite/10T/9T/9C/9A/9s/', 
                'Xiaomi Redmi Tempered Glass Full 9D Screen Redmi Note 10/ Redmi note 10 pro/Mi 10t/ mi 10t pro/ mi 10t lite/ mi 11t lite/ redmi Note 9/ redmi note 9 pro/ redmi note 9s/redmi Note 8/ redmi note 8 pro/ redmi Note7/ redmi note 7 pro/ redmi 9a/ redmi 9c/ redmi 9/ redmi 9t/ redmi 8/ redmi 8a/ redmi 7/ mi 8/ mi 8 pro/ mi 9 se',
                4.5, 
                100, 
                'https://down-vn.img.susercontent.com/file/e25b0bc9e706b1721ee7c6e8b45ed3fe', 
                4
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 4);
WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'Porcelain tea set', 
                66.77, 
                50, 
                50, 
                'Traditional tea set', 
                'Beautiful and convenient porcelain tea set for enjoying tea.',
                4.7, 
                100, 
                'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lknhvez52jrk9e', 
                4
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 4);
WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'Mini Projector T9 Android 7.0', 
                66.5, 
                50, 
                50, 
                'Mini Projector T9 Android 7.0 Full HD 1080P,YAMAZAKI Connect Phone, innovate Movie Legend', 
                'The projector is a low-cost but impressive quality projector that can provide a great entertainment experience for watching full HD movies and listening to music.',
                4.8, 
                100, 
                'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lv3269usbeux29', 
                4
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 4);
WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'Smartphone iPhone 13', 
                99.77, 
                50, 
                50, 
                'Smartphone', 
                'iPhone 13 phone with many modern features and great camera',
                4.9, 
                100, 
                'https://down-vn.img.susercontent.com/file/vn-50009109-1cf19d05fb4006d505c008471e5a56b7', 
                4
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 4);
WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'Laptop Dell XPS 13', 
                66.99, 
                50, 
                50, 
                'Ultra thin laptop', 
                'Dell XPS 13 laptop with powerful performance and ultra-thin design',
                4.6, 
                100, 
                'https://down-vn.img.susercontent.com/file/vn-50009109-d851329f3c4a8c69292bbb5fd791186b', 
                4
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 4);
WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'Bosch dishwasher', 
                77.88, 
                50, 
                50, 
                'Large capacity dishwasher', 
                'Bosch dishwasher with large capacity and many washing modes',
                4.6, 
                100, 
                'https://down-vn.img.susercontent.com/file/vn-11134201-7r98o-lvvzrlu3b0pka8', 
                4
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 4);
WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'Neutrogena sunscreen', 
                66.77, 
                50, 
                50, 
                'Sunscreen SPF 50', 
                'Neutrogena sunscreen with SPF 50 protects skin from UV rays',
                4.5, 
                100, 
                'https://down-vn.img.susercontent.com/file/fda9914210217b76c4f557d6d0b311c8', 
                4
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 4);
WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'Sharp air purifier', 
                55.66, 
                50, 
                50, 
                'Effective air purifier', 
                'Sharp air purifier with effective dust filtering and deodorizing technology',
                4.7, 
                100, 
                'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lw2u1f6bmk0r59', 
                4
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 4);
WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'PlayStation 5 gaming console', 
                66.77, 
                50, 
                50, 
                'New generation game console', 
                'PlayStation 5 console with advanced graphics and smooth gaming experience',
                4.5, 
                100, 
                'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lnh04gjkeewd20', 
                4
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 4);
WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'Roland electric piano', 
                66.33, 
                50, 
                50, 
                'Professional electric piano', 
                'Roland electric piano with high quality sound and many features',
                4.5, 
                100, 
                'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lmbah99dr1svec', 
                4
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 4);
WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'LG air conditioner unit', 
                33.5, 
                50, 
                50, 
                'Air conditioning saves electricity', 
                'LG air conditioner with energy saving and fast cooling technology',
                4.8, 
                100, 
                'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lufv2bgn75sifa', 
                4
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 4);
WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'Water purifier A.O. Smith', 
                99.99, 
                50, 
                50, 
                'Effective water purifier', 
                'Water purifier A.O. Smith with advanced water filtration technology and health protection',
                4.5, 
                100, 
                'https://down-vn.img.susercontent.com/file/sg-11134201-22110-x0auum3t4ijv54', 
                4
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 4);
WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'Foreo facial cleanser', 
                99.99, 
                50, 
                50, 
                'High-tech facial washing machine', 
                'Foreo facial cleanser with ultrasonic vibration technology and effective skin cleansing',
                4.8, 
                100, 
                'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-luu7yat484rp90', 
                4
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 4);
WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'Smartwatch Apple Watch Series 9', 
                99.99, 
                50, 
                50, 
                'Latest Apple smartwatch', 
                'Apple Watch Series 9 smartwatch with larger screen and advanced health features',
                4.9, 
                100, 
                'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lnau033n4tq285', 
                4
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 4);
WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'High quality chess set', 
                99, 
                50, 
                50, 
                'Wooden chess set', 
                'Chess set made from high-quality wood with sophisticated details and luxurious chessboard',
                5, 
                100, 
                'https://down-vn.img.susercontent.com/file/sg-11134201-22100-54vsx7nunbjva3', 
                4
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 4);
WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'Women"s evening dress', 
                87.5, 
                50, 
                50, 
                'Luxurious evening dress', 
                'Women"s evening dress with delicate design and soft fabric',
                4.5, 
                100, 
                'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-loxh5stzzp0bbe', 
                4
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 4);
WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'Oculus Quest 2 virtual reality glasses', 
                50.99, 
                50, 
                50, 
                'Wireless virtual reality glasses', 
                'Oculus Quest 2 virtual reality glasses with high resolution and great gaming experience',
                4.6, 
                100, 
                'https://down-vn.img.susercontent.com/file/d1dca31376411004a76c2fc38ab10cb2', 
                4
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 4);
WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'Baking tools', 
                54.5, 
                50, 
                50, 
                'Multi-purpose baking tool', 
                'Tefal baking tool set with many accessories and high quality materials',
                4.8, 
                100, 
                'https://down-vn.img.susercontent.com/file/vn-11134201-7r98o-lw82hrqyz5xaf5', 
                4
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 4);
WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'Liforme yoga mat', 
                45.5, 
                50, 
                50, 
                'High quality yoga mat', 
                'Liforme yoga mat with good grip and environmentally friendly materials',
                4.2, 
                100, 
                'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-ln5h0evvf4tvec', 
                4
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 4);
WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'LG TwinWash washing machine', 
                99.5, 
                50, 
                50, 
                'High quality yoga mat', 
                'LG TwinWash washing machine with the ability to wash two lots of clothes at the same time and many smart washing modes',
                4.7, 
                100, 
                'https://down-vn.img.susercontent.com/file/vn-11134207-7qukw-ljtn21nxxngi7c', 
                4
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 4);
WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'Dyson HP00 bladeless fan', 
                65.5, 
                50, 
                50, 
                'Advanced cooling fan', 
                'Dyson HP00 bladeless fan with safe design and high cooling efficiency',
                4.8, 
                100, 
                'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-ltnkk34q42z13f', 
                4
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 4);
WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'Lego Star Wars set', 
                45.33, 
                50, 
                50, 
                'Lego toys', 
                'Lego Star Wars sets for fans',
                4.6, 
                100, 
                'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lq32kb0r638208', 
                4
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 4);
WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'XINYIMEI', 
                34.5, 
                50, 
                50, 
                'XINYIMEI New fashion high quality PU small square crossbody bag for men and women', 
                'We have rich experience and high-quality products, focusing on quality and low prices! Bring you the best shopping experience!',
                4.5, 
                100, 
                'https://down-vn.img.susercontent.com/file/fdef7767441a48b030e9145f863da071', 
                4
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 4);
WITH product_row AS (
        INSERT INTO products(
            name, 
            price, 
            stock_count, 
            available_stock_count, 
            short_description, 
            long_description,
            avg_rating, 
            rating_count, 
            img_link, 
            category_id
        ) VALUES 
            (
                'Spalding Basketball', 
                33.5, 
                50, 
                50, 
                'Professional basketball', 
                'Spalding basketball is used in professional matches',
                4.4, 
                100, 
                'https://down-vn.img.susercontent.com/file/sg-11134201-23010-hc2s86bywulvf2', 
                4
            )
        RETURNING id
    )
    INSERT INTO product_categories(product_id, category_id)
    VALUES
        ((SELECT id FROM product_row), 4);
