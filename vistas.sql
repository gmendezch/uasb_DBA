--Listar el top 5 de las canciones más vendidas por genero
create view cancionestop as
	select distinct(t.trackid), t.name as cancion, count(*) as venta
	from invoiceline as i inner join track as t 
	on t.trackid=i.trackid 
	group by t.trackid, t.name
	order by count(*) desc
	limit 5;
	
--Listar los 3 clientes que han comprado más canciones
create view compracliente as
	select cust.firstname, cust.lastname, count(invl.quantity) AS compra
	from customer cust, invoice invo, invoiceline invl
	where ((cust.customerid = invo.customerid) AND (invo.invoiceid = invl.invoiceid))
	group by cust.firstname, cust.lastname
	order by count(invl.quantity) desc
	limit 3;

--Listar las 20 canciones que tienen mayor duración agrupados por tipo de medio
create view mayorduracion as
	select t.trackid, t.name, t.miliseconds
	from track as t inner join mediatype as mdt
	on t.mediatypeid=mdt.mediatypeid
	where ((t.trackid in ( select dura.trackid
				from (select tr.trackid, tr.name, tr.miliseconds, md.name
					from track tr, mediatype md
					where ((tr.mediatypeid = md.mediatypeid) and (md.mediatypeid = mdt.mediatypeid))
			order by md.name, tr.miliseconds desc
			limit 20) dura(trackid, name, miliseconds, name_1))) and (t.mediatypeid = mdt.mediatypeid))
	order by mdt.name;

--Listar total ventas por mes agrupadas por el vendedor
create view ventames as
	select emp.lastname, emp.firstname, date_part('year'::text, inv.invoicedate) as anio,
	to_char(inv.invoicedate, 'MM'::text) as mes, sum(inv.total) as sum
	from employee emp, (customer cus cross join invoice inv)
	where ((emp.employeeid = cus.supportrepid) and (cus.customerid = inv.customerid))
	group by emp.lastname, emp.firstname, date_part('year'::text, inv.invoicedate), to_char(inv.invoicedate, 'MM'::text)
	order by emp.lastname, emp.firstname, date_part('year'::text, inv.invoicedate), to_char(inv.invoicedate, 'MM'::text);
