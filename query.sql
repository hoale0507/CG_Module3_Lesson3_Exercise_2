use salesmanagement;
insert into customer (customerID, customerName, customerAge)
VALUES (1, 'Minh Quan', 10),
       (2, 'Ngoc Oanh', 20),
       (3, 'Hong Ha', 50);
insert into orderList (customerID, orderDate, totalPrice)
VALUES (1, '2006-03-21', NULL),
       (2, '2006-03-23', NULL),
       (1, '2006-03-16', NULL);
INSERT INTO product (productName, price)
VALUES ('May giat', 3),
       ('Tu lanh', 5),
       ('Dieu hoa', 7),
       ('Quat', 1),
       ('Bep dien', 2);
insert into orderdetail (oderID, productID, orderQty)
VALUES (1,1,3),
       (1,3,7),
       (1,4,2),
       (2,1,1),
       (3,1,8),
       (2,5,4),
       (2,3,3);
select oderID, orderDate, totalPrice from orderlist;
select c.customerID, c.customerName, ol.oderID, p.productName
from customer c join orderlist ol on c.customerID = ol.customerID join orderdetail od on od.oderID = ol.oderID
                join product p on p.productID = od.productID;
select customerName
from customer c left join orderlist ol on c.customerID = ol.customerID
where oderID is null;
select ol.oderID, ol.orderDate, sum(price*orderQty) as totalPrice
from orderlist ol join orderdetail o on ol.oderID = o.oderID join product p on o.productID = p.productID
group by ol.oderID;

