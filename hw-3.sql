Задача 1.
Вывести данные о товарах (проекция: название товара, цена, название категории, название компании поставщика)

SELECT 
Products.ProductName,
Products.Price,
Categories.CategoryName,
Suppliers.SupplierName

FROM Products

JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID
JOIN Categories ON Products.CategoryID = Categories.CategoryID

Задача2.
Вывести список стран, которые поставляют морепродукты

SELECT 
    Suppliers.Country
FROM Products

JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID
JOIN Categories ON Products.CategoryID = Categories.CategoryID
WHERE 
    Categories.CategoryName = 'Seafood'

Задача 3.
Вывести два самых дорогих товара из категории Beverages из USA

SELECT *
FROM Products

JOIN Categories ON Products.CategoryID = Categories.CategoryID

JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID

WHERE 
City = 'USA'
 AND CategoryName = 'Beverages'

ORDER BY Price DESC
LIMIT 2

Задача 4.
Вывести название и стоимость в USD одного самого дорогого проданного товара

 SELECT
  ProductName,
  Price AS Price_USA
FROM Products

ORDER BY Price DESC
LIMIT 1

Задача 5. Дайте короткий ответ на вопрос: в чем отличие БД от СУБД

БД -  данные, как таковые
СУБД - программа (для взаимодействия с данными)
