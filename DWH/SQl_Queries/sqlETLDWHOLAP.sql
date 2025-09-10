select * from Dim_Date

select * from Fact_Book_sales

alter table Fact_Book_sales drop fk6_fact 

select * from Date_dim

drop table Date_dim

alter table Fact_Book_sales add constraint  fk6_fact_date foreign key  (date_fk) references Dim_Date (Date_SK)

select * from dim_time

select * from time_dim

drop table time_dim

alter table Fact_Book_sales drop fk5_fact 

alter table Fact_Book_sales add constraint  fk6_fact_time foreign key  (time_fk) references dim_time (time_SK)


select * from Author

drop table Dim_Date
drop table Dim_Time




alter table book alter column language_code nvarchar (20)




alter table shipping_method add cost float , start_date date ,end_date date, iscurrent tinyint

alter table shipping_method add start_date date


select * from fact_book_sales

alter table fact_book_sales drop column shiping_cost

alter table shipping_method drop column start_date, end_date,iscurrent

ALTER TABLE dbo.shipping_method
ADD [start_date] DATETIME,
    end_date DATETIME,
    iscurrent BIT;


	alter table order_history_status drop column status_date

	alter table order_history_status add status_date date , status_time time


	select * from order_history_status

SELECT 
    TABLE_SCHEMA,
    TABLE_NAME,
    COLUMN_NAME,
    DATA_TYPE,
    CHARACTER_MAXIMUM_LENGTH,
    NUMERIC_PRECISION,
    NUMERIC_SCALE,
    IS_NULLABLE
FROM INFORMATION_SCHEMA.COLUMNS
where TABLE_NAME = 'order_history_status'
ORDER BY TABLE_NAME, ORDINAL_POSITION

ALTER TABLE order_history_status
ALTER COLUMN status_time ;


SELECT COLUMN_NAME, DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'order_history_status';


INSERT INTO order_history_status ( history_Bk, status_value, status_date, status_time)
VALUES ( 100, 'Active', CAST(GETDATE() AS DATE), CAST(GETDATE() AS TIME(0)));


ALTER TABLE [dbo].[order_history_status]
alter column status_time TIME(7)

delete from  [order_history_status]


select * from [order_history_status]



select * from customer_dim

select * from shipping_method

select c.* from customer_dim c join adress_cust_dim ca on ca.adress_fk = a.adress_dim 
join adress_dim a on a.Adress_Bk = ca.adress_fk
where c.CustomerID_Bk = 1044

select *  from customer_dim
where CustomerID_Bk = 1088

select * from order_history_status
where history_Bk = 99999


select * from Fact_Book_sales

truncate table Fact_Book_sales