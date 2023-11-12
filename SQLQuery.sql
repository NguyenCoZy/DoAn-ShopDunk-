Create table Category (
IDCate Int constraint PK_CATE primary key,
CateName nvarchar(20)
)
Alter table SanPham add constraint FK_Category_SanPham foreign key (IDCate) References Category(IDCate)
Create table SanPham (
IDSP  Int  constraint PK_SP primary key,
IDCate int,
TenSP nvarchar(50),
GiaMoi Decimal (18,2),
GiaCu  Decimal (18,2),
GiamGia Int ,
ChiTietSP nvarchar(MAX),
ThongSoKyThuat nvarchar(MAX),
MoTa nvarchar(MAX)
)
Alter table CTSP add constraint FK_CTSP_SanPham foreign key (IDSP) References SanPham(IDSP)
Create table CTSP (
IDCT Int constraint PK_CTSP primary key,
IDSP Int,
IDCTDH int,
IDColor int,
TenSPCT nvarchar(100),
DanhGia nvarchar(MAX)
)


alter table CTSP add constraint FK_CTSP_Color foreign key (IDColor) references Color(IdColor)


/*Create table GioHang (
IDGioHang Int constraint PK_CTGH primary key,
IDDonHang int,
SoLuong int ,
TongCong Decimal(18,2),
TongPhu Decimal (18,2),
DiaChi nvarchar(max),
HinhThucTT nvarchar(max)
)*/

Create table CTDH (
IDCTDH int constraint PK_CTDH primary key,
IDDonHang int,
IDCT int,
SoLuong int ,
TongCong Decimal(18,2),
TongPhu Decimal (18,2),
DiaChi nvarchar(max),
HinhThucTT nvarchar(max)
)

Create table DONHANG (
IDDonHang int constraint PK_DH primary key,
Email nvarchar(255),
NgayDat datetime ,
TongTien Decimal(18,2)
)

Create table KHACHHANG (
Email nvarchar(255) constraint PK_Khachhang primary key,
TenKH nvarchar(50),
GioiTinh char(3),
NgaySinh datetime,
SDT char(20),
passwords varchar(255)
)

Create table ADMINUSER (
IDAMIN int Constraint PK_AD primary key, 
ADPassword varchar(255),
Role nvarchar(50)
)

Create table Color (
IDColor int constraint PK_Color primary key,
ColorName nvarchar(50),
RGB varChar(255)
)
alter table Images add constraint FK_Images_CTSP foreign key (IDCT) references CTSP(IDCT)
Create table Images (
IDIma Int constraint PK_Images primary key,
IDCT int ,
ImagesName nvarchar(max)
)




