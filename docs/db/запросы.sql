-- вход
SELECT u.id, u.full_name, r.name AS role
FROM users u
JOIN roles r ON r.id = u.role_id
WHERE u.login = '1qz4kw@mail.com' AND u.password = 'gynQMT';

--  запрос каталога товаров
SELECT p.id, p.article, p.name, p.unit, p.price, p.discount, p.stock_qty,
p.description, p.photo,
c.name AS category, m.name AS manufacturer, s.name AS supplier
FROM products p
JOIN categories c ON c.id = p.category_id
JOIN manufacturers m ON m.id = p.manufacturer_id
JOIN suppliers s ON s.id = p.supplier_id;

-- поиск, фильтр и сортировка
SELECT p.id, p.article, p.name, p.unit, p.price, p.discount, p.stock_qty,
p.description, p.photo,
c.name AS category, m.name AS manufacturer, s.name AS supplier
FROM products p
JOIN categories c ON c.id = p.category_id
JOIN manufacturers m ON m.id = p.manufacturer_id
JOIN suppliers s ON s.id = p.supplier_id
WHERE p.name LIKE CONCAT('%Туфли%') AND p.supplier_id = 1
ORDER BY p.stock_qty DESC;

SELECT id, name FROM categories;
SELECT id, name FROM manufacturers;
SELECT id, name FROM suppliers;

-- запросы для добавления и редактирования
INSERT INTO products
(article, name, unit, price, discount, stock_qty, description, photo, category,
manufacturer, supplier)
VALUES ('PDSDJJJF', 'Туфли', 'шт', '1234', '23', 'красные женские туфли Kari', '4.png', 'Женская обувь', 'Kari', 'Kari');

SELECT * FROM products WHERE id = 1;

-- проверка на запрет удаления
UPDATE products
SET article='P764G4', name='Туфли', unit = 'шт.' , price='6867.00', discount='15', stock_qty = '15', description ='Туфли женские, ARGO, размер 38', photo='',
category_id = 1 ,  manufacturer_id = 2 , supplier_id = 2
WHERE id = 19;

SELECT COUNT(*) AS used_in_orders FROM prodorders WHERE product_id = 1;

DELETE FROM products WHERE id = 1;





