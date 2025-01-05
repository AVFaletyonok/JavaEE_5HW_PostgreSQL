CREATE TABLE IF NOT EXISTS products(
    "id" bigint primary key not null,
    "name" varchar,
    "price" bigint
);

CREATE TABLE IF NOT EXISTS cart (
    "id" bigint primary key not null,
    "owner" varchar
);

CREATE TABLE IF NOT EXISTS product_cart(
    "cart_id" bigint,
    FOREIGN KEY (cart_id) REFERENCES cart(id),
    "product_id" bigint,
    FOREIGN KEY (product_id) REFERENCES products(id)
);