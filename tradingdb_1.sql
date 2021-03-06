USE [tradingdb]
GO
/****** Object:  Table [dbo].[trd_item]    Script Date: 06/26/2014 06:46:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[trd_item](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[itemsname] [varchar](50) NULL,
	[itemscode] [int] NULL,
	[qty] [int] NULL,
	[price] [int] NULL,
	[isactive] [int] NULL,
	[userid] [int] NULL,
	[usercreatedate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[trd_clients]    Script Date: 06/26/2014 06:46:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[trd_clients](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[clientname] [varchar](50) NULL,
	[address] [varchar](50) NULL,
	[phonenumber] [varchar](10) NULL,
	[email] [varchar](50) NULL,
	[isactive] [int] NULL,
	[userid] [int] NULL,
	[usercreatedate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[trd_usertype]    Script Date: 06/26/2014 06:46:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[trd_usertype](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userid] [int] NULL,
	[usertype] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[trd_user]    Script Date: 06/26/2014 06:46:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[trd_user](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[firstname] [varchar](50) NULL,
	[lastname] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[address] [varchar](50) NULL,
	[phonenumer] [varchar](10) NULL,
	[username] [varchar](20) NULL,
	[Password] [varchar](25) NULL,
	[isactive] [int] NULL,
	[userid] [int] NULL,
	[usercreatedate] [datetime] NULL,
	[usertype] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[trd_suppliers]    Script Date: 06/26/2014 06:46:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[trd_suppliers](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[suppliername] [varchar](50) NULL,
	[address] [varchar](50) NULL,
	[phonenumber] [varchar](10) NULL,
	[email] [varchar](30) NULL,
	[isactive] [int] NULL,
	[userid] [int] NULL,
	[usercreatedate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[trd_salereturn]    Script Date: 06/26/2014 06:46:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[trd_salereturn](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[saledetailid] [int] NULL,
	[itemsid] [int] NULL,
	[qty] [int] NULL,
	[isactive] [int] NULL,
	[userid] [int] NULL,
	[usercreatedate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[trd_salemaster]    Script Date: 06/26/2014 06:46:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[trd_salemaster](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[clientid] [int] NULL,
	[saledate] [datetime] NULL,
	[billno] [int] NULL,
	[totalamount] [bigint] NULL,
	[isactive] [int] NULL,
	[userid] [int] NULL,
	[usercreatedate] [datetime] NULL,
 CONSTRAINT [PK__trd_sale__3213E83F0AD2A005] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[trd_saledetail]    Script Date: 06/26/2014 06:46:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[trd_saledetail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[salemasterid] [int] NULL,
	[itemsid] [int] NULL,
	[qty] [int] NULL,
	[price] [int] NULL,
	[isactive] [int] NULL,
	[userid] [int] NULL,
	[usercreatedate] [datetime] NULL,
 CONSTRAINT [PK__trd_sale__3213E83F0EA330E9] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[trd_purchasereturn]    Script Date: 06/26/2014 06:46:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[trd_purchasereturn](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[purchasedetailid] [int] NULL,
	[itemsid] [int] NULL,
	[qty] [int] NULL,
	[isactive] [int] NULL,
	[userid] [int] NULL,
	[usercreatedate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[trd_purchasemaster]    Script Date: 06/26/2014 06:46:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[trd_purchasemaster](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[supplierid] [int] NULL,
	[purchasedate] [datetime] NULL,
	[billno] [int] NOT NULL,
	[totalamount] [int] NOT NULL,
	[isactive] [int] NULL,
	[userid] [int] NULL,
	[usercreatedate] [datetime] NULL,
 CONSTRAINT [PK__trd_purc__3213E83F108B795B] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[trd_purchasedetail]    Script Date: 06/26/2014 06:46:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[trd_purchasedetail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[purchasemasterid] [int] NULL,
	[itemsid] [int] NULL,
	[qty] [int] NULL,
	[price] [int] NOT NULL,
	[isactive] [int] NULL,
	[userid] [int] NULL,
	[usercreatedate] [datetime] NULL,
 CONSTRAINT [PK__trd_purc__3213E83F173876EA] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[trd_pro_user_save]    Script Date: 06/26/2014 06:46:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[trd_pro_user_save]
@id int,
--@firstname varchar(50),
--@lastname varchar(50),
--@email varchar(50),
--@address varchar(50),
--@phonenumer varchar(10),
@username varchar(20),
@password varchar(25),
@usertype varchar(50)

as
begin

if (@id = null or @id =0)
begin
insert into trd_user
             (username,[Password],usertype
             --,firstname,lastname,email,[address],phonenumer
             )
values       (@username,@password,@usertype
		--,@firstname,@lastname,@email,@address,@phonenumer
		)
end
else
begin
update trd_user set username=@username,[Password]=@password,usertype=@usertype
--,firstname=@firstname,lastname=@lastname,email=@email,[address]=@address,phonenumer=@phonenumer 
where id=@id
end
end
GO
/****** Object:  StoredProcedure [dbo].[trd_pro_supplier_save]    Script Date: 06/26/2014 06:46:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[trd_pro_supplier_save]
@id int,
@suppliername varchar(50),
@address varchar(50),
@phonenumber varchar(10),
@email varchar(30) 
as 
begin

if (@id is null or @id = 0)
Begin
insert into trd_suppliers (suppliername,[address],phonenumber,email) values
( @suppliername,@address,@phonenumber,@email)
End
else
begin
   update trd_suppliers set
   suppliername = @suppliername
   ,[address] = @address
   ,phonenumber = @phonenumber
   ,email = @email
   where id = @id
   
End

end
GO
/****** Object:  StoredProcedure [dbo].[trd_pro_supplier_listbyname]    Script Date: 06/26/2014 06:46:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create   procedure [dbo].[trd_pro_supplier_listbyname]
@suppliername varchar(50)
as 
begin
select * from trd_suppliers where suppliername like + @suppliername + '%'
end
GO
/****** Object:  StoredProcedure [dbo].[trd_pro_supplier_list]    Script Date: 06/26/2014 06:46:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[trd_pro_supplier_list]
as 
begin

select * from trd_suppliers
where isactive = 0 

end
GO
/****** Object:  StoredProcedure [dbo].[trd_pro_supplier_insert]    Script Date: 06/26/2014 06:46:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[trd_pro_supplier_insert]
@suppliername varchar(50),
@address varchar(50),
@phonenumber varchar(10),
@email varchar(30) 
as 
begin

insert into trd_suppliers (suppliername,[address],phonenumber,email) values
( @suppliername,@address,@phonenumber,@email)


end
GO
/****** Object:  StoredProcedure [dbo].[trd_pro_salemaster_save]    Script Date: 06/26/2014 06:46:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[trd_pro_salemaster_save]
@id int,
@clientid int,
@saledate datetime,
@billno int ,
@totalamount money , 
@userid int
as 
begin

if (@id is null or @id = 0)
Begin
insert into trd_salemaster 
(
	clientid,
	saledate,
	billno,
	totalamount,
	userid
	)
values
( 
	@clientid,
	@saledate,
	@billno,
	@totalamount,
	@userid
)
End
else
begin
   update trd_salemaster set
    clientid =@clientid,
	saledate =@saledate ,
	billno = @billno,
	totalamount = @totalamount,
	userid= @userid
   where id = @id
   
End

end
GO
/****** Object:  StoredProcedure [dbo].[trd_pro_salemaster_list]    Script Date: 06/26/2014 06:46:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[trd_pro_salemaster_list]
as 
begin

select trd_salemaster.* , trd_clients.clientname 
from trd_salemaster
join 
trd_clients
on
trd_salemaster.clientid = trd_clients.id
and trd_salemaster.isactive = 0 
order by trd_salemaster.id asc

end
GO
/****** Object:  StoredProcedure [dbo].[trd_pro_salemaster_GetMaxID]    Script Date: 06/26/2014 06:46:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[trd_pro_salemaster_GetMaxID]
as
begin
SELECT ISNULL(MAX(id), 0) AS id
FROM trd_salemaster
end
GO
/****** Object:  StoredProcedure [dbo].[trd_pro_saledetail_save]    Script Date: 06/26/2014 06:46:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[trd_pro_saledetail_save]
@id int,
@salemasterid int,
@itemsid int,
@qty int,
@price int,
@userid int

as
begin

if (@id = null or @id =0)
begin
insert into trd_saledetail
(
salemasterid,
itemsid,
qty,
price,
userid
)
values
(
@salemasterid,
@itemsid,
@qty,
@price,
@userid
)

update trd_item set 
qty = qty - @qty
where id = @itemsid
end

else 

begin
update trd_saledetail set
salemasterid = @salemasterid,
itemsid = @itemsid,
qty = @qty,
price = @price,
userid = @userid
where id = @id
 end
 
 end
GO
/****** Object:  StoredProcedure [dbo].[trd_pro_saledetail_list]    Script Date: 06/26/2014 06:46:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[trd_pro_saledetail_list]
@salemasterid int
as 
begin

select trd_saledetail.* , (trd_saledetail.qty * trd_saledetail.price)  as totalamount , trd_item.itemsname 
from trd_saledetail
join 
trd_item
on
trd_saledetail.itemsid = trd_item.id
and trd_saledetail.salemasterid = @salemasterid
and trd_saledetail.isactive = 0 
order by trd_saledetail.id asc

end
GO
/****** Object:  StoredProcedure [dbo].[trd_pro_purchasemaster_save]    Script Date: 06/26/2014 06:46:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[trd_pro_purchasemaster_save]
@id int,
@supplierid int,
@purchasedate datetime,
@billno int ,
@totalamount money , 
@userid int
as 
begin

if (@id is null or @id = 0)
Begin
insert into trd_purchasemaster 
(
	supplierid,
	purchasedate ,
	billno,
	totalamount,
	userid
	)
values
( 
	@supplierid,
	@purchasedate,
	@billno,
	@totalamount,
	@userid
)
End
else
begin
   update trd_purchasemaster set
    supplierid = @supplierid,
	purchasedate = @purchasedate ,
	billno = @billno,
	totalamount = @totalamount,
	userid= @userid
   where id = @id
   
End

end
GO
/****** Object:  StoredProcedure [dbo].[trd_pro_purchasemaster_GetMaxID]    Script Date: 06/26/2014 06:46:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[trd_pro_purchasemaster_GetMaxID]

as 
begin

SELECT ISNULL(MAX(id), 0) AS id
FROM trd_purchasemaster
end
GO
/****** Object:  StoredProcedure [dbo].[trd_pro_purchasedetail_save]    Script Date: 06/26/2014 06:46:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[trd_pro_purchasedetail_save]
@id int,
@purchasemasterid int,
@itemid int,
@qty int,
@price int , 
@userid int
as 
begin

if (@id is null or @id = 0)
Begin
insert into trd_purchasedetail
(
	purchasemasterid,
	itemsid ,
	qty,
	price,
	userid
	)
values
( 
	@purchasemasterid,
	@itemid,
	@qty,
	@price,
	@userid
)

  update trd_item set 
   qty = qty + @qty
   where id = @itemid
End
else
begin
   update trd_purchasedetail set
	purchasemasterid = @purchasemasterid,
	itemsid = @itemid ,
	qty = @qty,
	price = @price,
	userid= @userid
   where id = @id
   
End

end
GO
/****** Object:  StoredProcedure [dbo].[trd_pro_item_listbyname]    Script Date: 06/26/2014 06:46:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[trd_pro_item_listbyname]
@itemsname varchar(50)
as 
begin
select * from trd_item where itemsname like @itemsname  + '%'
end
GO
/****** Object:  StoredProcedure [dbo].[trd_pro_getlogin]    Script Date: 06/26/2014 06:46:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[trd_pro_getlogin]
@username varchar(50),
@password varchar(50)
as 
begin
select trd_user.id,trd_user.firstname as fullname,trd_usertype.usertype
from trd_user,trd_usertype
where trd_user.usertype = trd_usertype.id
and trd_user.username = @username
and trd_user.[password]= @password
end
GO
/****** Object:  StoredProcedure [dbo].[trd_pro_client_listbyname]    Script Date: 06/26/2014 06:46:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  procedure [dbo].[trd_pro_client_listbyname]
@clientname varchar(50)
as 
begin
select * from trd_clients where clientname like + @clientname + '%'
end
GO
/****** Object:  StoredProcedure [dbo].[trading_pro_user_list]    Script Date: 06/26/2014 06:46:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[trading_pro_user_list]
 as 
 begin
 select * from trd_user
 where isactive = 0
 end
GO
/****** Object:  StoredProcedure [dbo].[trading_pro_supplier_update]    Script Date: 06/26/2014 06:46:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[trading_pro_supplier_update]
@id int,
@suppliername varchar(50),
@address varchar(50),
@phonenumber varchar(10),
@email varchar(30) 
as 
begin
update trd_suppliers set suppliername=@suppliername,[address]=@address, phonenumber=@phonenumber,email=@email where id=@id
end
GO
/****** Object:  StoredProcedure [dbo].[trading_pro_supplier_delete]    Script Date: 06/26/2014 06:46:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[trading_pro_supplier_delete]
@id int 

as
begin
  Update trd_suppliers set 
  isactive = 1 
  where id = @id
end
GO
/****** Object:  StoredProcedure [dbo].[trading_pro_purchasemaster_listvybillno]    Script Date: 06/26/2014 06:46:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[trading_pro_purchasemaster_listvybillno]
 @billno int
 as 
 begin
 select trd_purchasemaster.id,trd_purchasemaster.billno,
 trd_purchasemaster.purchasedate,
 trd_purchasemaster.totalamount, trd_suppliers.suppliername 
 from trd_purchasemaster , trd_suppliers
 where  trd_purchasemaster.supplierid = trd_suppliers.id
 and
 trd_purchasemaster.isactive = 0
 AND 
 trd_purchasemaster.billno like + convert(varchar(20),@billno,120) + '%'   
 
 end
GO
/****** Object:  StoredProcedure [dbo].[trading_pro_purchasemaster_list]    Script Date: 06/26/2014 06:46:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[trading_pro_purchasemaster_list]
 as 
 begin
 select trd_purchasemaster.id,trd_purchasemaster.billno,
 trd_purchasemaster.purchasedate,
 trd_purchasemaster.totalamount, trd_suppliers.suppliername 
 from trd_purchasemaster , trd_suppliers
 where  trd_purchasemaster.supplierid = trd_suppliers.id
 and
 trd_purchasemaster.isactive = 0
 
 end
GO
/****** Object:  StoredProcedure [dbo].[trading_pro_purchasedetail_listbyid]    Script Date: 06/26/2014 06:46:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[trading_pro_purchasedetail_listbyid]
 @purchasemasterid int
 as 
 begin
 select trd_purchasedetail.* , trd_item.itemsname
 from trd_purchasedetail , trd_item
 where  trd_purchasedetail.itemsid = trd_item.id
 and
 trd_purchasedetail.isactive = 0
 and trd_purchasedetail.purchasemasterid = @purchasemasterid
 
 end
GO
/****** Object:  StoredProcedure [dbo].[trading_pro_purchasedetail_listbybillno]    Script Date: 06/26/2014 06:46:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[trading_pro_purchasedetail_listbybillno]
 @billno int
 as 
 begin
 select trd_purchasedetail.* , trd_item.itemsname
 from trd_purchasedetail , trd_item , trd_purchasemaster 
 where  trd_purchasedetail.itemsid = trd_item.id
 and
 trd_purchasemaster.id = trd_purchasedetail.purchasemasterid
 and trd_purchasedetail.isactive = 0
 and trd_purchasemaster.billno = @billno
 
 end
GO
/****** Object:  StoredProcedure [dbo].[trading_pro_items_save]    Script Date: 06/26/2014 06:46:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[trading_pro_items_save]
@id int ,
@itemsname varchar(50),
@itemscode int,
@qty int,
@price Money,
@userid int
 as
 begin
 if(@id is null or @id = 0)
 begin
	 insert into trd_item 
	 (
		itemsname,
		itemscode,
		qty,
		price,
		userid
	  )
	 values 
	 (
		@itemsname,
		@itemscode,
		@qty,
		@price,
		@userid
	)
	 end
 else 
 begin
	update trd_item set
		itemsname=@itemsname,
		itemscode =@itemscode,
		qty=@qty,
		price=@price
	where id=@id

 end 
 end
GO
/****** Object:  StoredProcedure [dbo].[trading_pro_items_list]    Script Date: 06/26/2014 06:46:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[trading_pro_items_list]
 as 
 begin
 select * from trd_item
 where isactive = 0
 end
GO
/****** Object:  StoredProcedure [dbo].[trading_pro_items_checkqty]    Script Date: 06/26/2014 06:46:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[trading_pro_items_checkqty]
	@id int,
	@qty int
 as 
 begin
 select COUNT(id) as id from trd_item
 where isactive = 0
 and id = @id 
 and qty > @qty
 end
GO
/****** Object:  StoredProcedure [dbo].[trading_pro_items_checkitemsname]    Script Date: 06/26/2014 06:46:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[trading_pro_items_checkitemsname]
	@itemsname varchar(50)
 as 
 begin
 select COUNT(id) as id from trd_item
 where isactive = 0
 and itemsname = @itemsname
 end
GO
/****** Object:  StoredProcedure [dbo].[trading_pro_item_update]    Script Date: 06/26/2014 06:46:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[trading_pro_item_update]
@id int,
@itemsname varchar(50),
@itemscode int,
@qty int,
@price int

as 
begin
update trd_item set itemsname=@itemsname,itemscode =@itemscode, qty=@qty,price=@price where id=@id
end
GO
/****** Object:  StoredProcedure [dbo].[trading_pro_item_delete]    Script Date: 06/26/2014 06:46:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[trading_pro_item_delete]
@id int 

as
begin
  Update trd_item set 
  isactive = 1 
  where id = @id
end
GO
/****** Object:  StoredProcedure [dbo].[trading_pro_clients_insert]    Script Date: 06/26/2014 06:46:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[trading_pro_clients_insert]
  @id int ,
  @clientname varchar(50),
  @address varchar(50),
  @phonenumber varchar(50),
  @email varchar(50)

  as 
  begin
  if (@id = 0 or @id is null)
  begin
		  insert into trd_clients(clientname,[address],phonenumber,email)
		  values 
		  (@clientname,@address,@phonenumber,@email)
   end
   
   else 
   begin
			update trd_clients set
			clientname=@clientname,
			[address]=@address,
			phonenumber=@phonenumber,
			email=@email
			where id=@id
   end
   end
GO
/****** Object:  StoredProcedure [dbo].[trading_pro_client_list]    Script Date: 06/26/2014 06:46:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  procedure [dbo].[trading_pro_client_list]
 as 
 begin
 select * from trd_clients
 where isactive = 0
 end
GO
/****** Object:  StoredProcedure [dbo].[trading_pro_client_delete]    Script Date: 06/26/2014 06:46:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[trading_pro_client_delete]
@id int 

as
begin
  Update trd_clients set 
  isactive = 1 
  where id = @id
end
GO
/****** Object:  StoredProcedure [dbo].[pro_usertype_save]    Script Date: 06/26/2014 06:46:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[pro_usertype_save]
@id int,
@usertype varchar(30),
@userid int
as
begin
if(@id=0 or @id is null)
begin
insert into trd_usertype(usertype,userid)
values(@usertype,@userid)
end
else
begin
update trd_usertype set usertype=@usertype,userid=@userid where id=@id
end
end
GO
/****** Object:  Default [DF__trd_item__isacti__412EB0B6]    Script Date: 06/26/2014 06:46:00 ******/
ALTER TABLE [dbo].[trd_item] ADD  DEFAULT ((0)) FOR [isactive]
GO
/****** Object:  Default [DF__trd_item__usercr__4222D4EF]    Script Date: 06/26/2014 06:46:00 ******/
ALTER TABLE [dbo].[trd_item] ADD  DEFAULT (getdate()) FOR [usercreatedate]
GO
/****** Object:  Default [DF__trd_clien__isact__3F466844]    Script Date: 06/26/2014 06:46:00 ******/
ALTER TABLE [dbo].[trd_clients] ADD  DEFAULT ((0)) FOR [isactive]
GO
/****** Object:  Default [DF__trd_clien__userc__403A8C7D]    Script Date: 06/26/2014 06:46:00 ******/
ALTER TABLE [dbo].[trd_clients] ADD  DEFAULT (getdate()) FOR [usercreatedate]
GO
/****** Object:  Default [DF__trd_user__isacti__52593CB8]    Script Date: 06/26/2014 06:46:00 ******/
ALTER TABLE [dbo].[trd_user] ADD  DEFAULT ((0)) FOR [isactive]
GO
/****** Object:  Default [DF__trd_user__usercr__534D60F1]    Script Date: 06/26/2014 06:46:00 ******/
ALTER TABLE [dbo].[trd_user] ADD  DEFAULT (getdate()) FOR [usercreatedate]
GO
/****** Object:  Default [DF__trd_suppl__isact__5070F446]    Script Date: 06/26/2014 06:46:00 ******/
ALTER TABLE [dbo].[trd_suppliers] ADD  DEFAULT ((0)) FOR [isactive]
GO
/****** Object:  Default [DF__trd_suppl__userc__5165187F]    Script Date: 06/26/2014 06:46:00 ******/
ALTER TABLE [dbo].[trd_suppliers] ADD  DEFAULT (getdate()) FOR [usercreatedate]
GO
/****** Object:  Default [DF__trd_saler__isact__4E88ABD4]    Script Date: 06/26/2014 06:46:00 ******/
ALTER TABLE [dbo].[trd_salereturn] ADD  DEFAULT ((0)) FOR [isactive]
GO
/****** Object:  Default [DF__trd_saler__userc__4F7CD00D]    Script Date: 06/26/2014 06:46:00 ******/
ALTER TABLE [dbo].[trd_salereturn] ADD  DEFAULT (getdate()) FOR [usercreatedate]
GO
/****** Object:  Default [DF__trd_salem__saled__403A8C7D]    Script Date: 06/26/2014 06:46:00 ******/
ALTER TABLE [dbo].[trd_salemaster] ADD  CONSTRAINT [DF__trd_salem__saled__403A8C7D]  DEFAULT (getdate()) FOR [saledate]
GO
/****** Object:  Default [DF__trd_salem__isact__412EB0B6]    Script Date: 06/26/2014 06:46:00 ******/
ALTER TABLE [dbo].[trd_salemaster] ADD  CONSTRAINT [DF__trd_salem__isact__412EB0B6]  DEFAULT ((0)) FOR [isactive]
GO
/****** Object:  Default [DF__trd_salem__userc__4222D4EF]    Script Date: 06/26/2014 06:46:00 ******/
ALTER TABLE [dbo].[trd_salemaster] ADD  CONSTRAINT [DF__trd_salem__userc__4222D4EF]  DEFAULT (getdate()) FOR [usercreatedate]
GO
/****** Object:  Default [DF__trd_saled__isact__3E52440B]    Script Date: 06/26/2014 06:46:00 ******/
ALTER TABLE [dbo].[trd_saledetail] ADD  CONSTRAINT [DF__trd_saled__isact__3E52440B]  DEFAULT ((0)) FOR [isactive]
GO
/****** Object:  Default [DF__trd_saled__userc__3F466844]    Script Date: 06/26/2014 06:46:00 ******/
ALTER TABLE [dbo].[trd_saledetail] ADD  CONSTRAINT [DF__trd_saled__userc__3F466844]  DEFAULT (getdate()) FOR [usercreatedate]
GO
/****** Object:  Default [DF__trd_purch__isact__47DBAE45]    Script Date: 06/26/2014 06:46:00 ******/
ALTER TABLE [dbo].[trd_purchasereturn] ADD  DEFAULT ((0)) FOR [isactive]
GO
/****** Object:  Default [DF__trd_purch__userc__48CFD27E]    Script Date: 06/26/2014 06:46:00 ******/
ALTER TABLE [dbo].[trd_purchasereturn] ADD  DEFAULT (getdate()) FOR [usercreatedate]
GO
/****** Object:  Default [DF__trd_purch__purch__1273C1CD]    Script Date: 06/26/2014 06:46:00 ******/
ALTER TABLE [dbo].[trd_purchasemaster] ADD  CONSTRAINT [DF__trd_purch__purch__1273C1CD]  DEFAULT (getdate()) FOR [purchasedate]
GO
/****** Object:  Default [DF__trd_purch__isact__1367E606]    Script Date: 06/26/2014 06:46:00 ******/
ALTER TABLE [dbo].[trd_purchasemaster] ADD  CONSTRAINT [DF__trd_purch__isact__1367E606]  DEFAULT ((0)) FOR [isactive]
GO
/****** Object:  Default [DF__trd_purch__userc__145C0A3F]    Script Date: 06/26/2014 06:46:00 ******/
ALTER TABLE [dbo].[trd_purchasemaster] ADD  CONSTRAINT [DF__trd_purch__userc__145C0A3F]  DEFAULT (getdate()) FOR [usercreatedate]
GO
/****** Object:  Default [DF__trd_purch__isact__1920BF5C]    Script Date: 06/26/2014 06:46:00 ******/
ALTER TABLE [dbo].[trd_purchasedetail] ADD  CONSTRAINT [DF__trd_purch__isact__1920BF5C]  DEFAULT ((0)) FOR [isactive]
GO
/****** Object:  Default [DF__trd_purch__userc__1A14E395]    Script Date: 06/26/2014 06:46:00 ******/
ALTER TABLE [dbo].[trd_purchasedetail] ADD  CONSTRAINT [DF__trd_purch__userc__1A14E395]  DEFAULT (getdate()) FOR [usercreatedate]
GO
