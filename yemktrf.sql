USE [master]
GO
/****** Object:  Database [YemekTarifi]    Script Date: 6.05.2019 17:30:34 ******/
CREATE DATABASE [YemekTarifi]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'YemekTarifi', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\YemekTarifi.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'YemekTarifi_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\YemekTarifi_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [YemekTarifi] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [YemekTarifi].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [YemekTarifi] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [YemekTarifi] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [YemekTarifi] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [YemekTarifi] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [YemekTarifi] SET ARITHABORT OFF 
GO
ALTER DATABASE [YemekTarifi] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [YemekTarifi] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [YemekTarifi] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [YemekTarifi] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [YemekTarifi] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [YemekTarifi] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [YemekTarifi] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [YemekTarifi] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [YemekTarifi] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [YemekTarifi] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [YemekTarifi] SET  DISABLE_BROKER 
GO
ALTER DATABASE [YemekTarifi] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [YemekTarifi] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [YemekTarifi] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [YemekTarifi] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [YemekTarifi] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [YemekTarifi] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [YemekTarifi] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [YemekTarifi] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [YemekTarifi] SET  MULTI_USER 
GO
ALTER DATABASE [YemekTarifi] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [YemekTarifi] SET DB_CHAINING OFF 
GO
ALTER DATABASE [YemekTarifi] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [YemekTarifi] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [YemekTarifi]
GO
/****** Object:  Table [dbo].[iletisim]    Script Date: 6.05.2019 17:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[iletisim](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[AdSoyad] [nvarchar](50) NULL,
	[mailAdres] [nvarchar](80) NULL,
	[Baslik] [nvarchar](50) NULL,
	[konu] [nvarchar](500) NULL,
 CONSTRAINT [PK_iletisim] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Kategori]    Script Date: 6.05.2019 17:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kategori](
	[kategoriId] [int] IDENTITY(1,1) NOT NULL,
	[kategoriAdi] [nvarchar](50) NULL,
 CONSTRAINT [PK_Kategori] PRIMARY KEY CLUSTERED 
(
	[kategoriId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tarif]    Script Date: 6.05.2019 17:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tarif](
	[TarifId] [int] IDENTITY(1,1) NOT NULL,
	[TarifBaslik] [nvarchar](50) NULL,
	[TarifIcerik] [nvarchar](max) NULL,
	[YayinTarihi] [datetime] NULL,
	[kategoriId] [int] NULL,
	[ResimYolu] [nvarchar](4000) NULL,
 CONSTRAINT [PK_Tarif] PRIMARY KEY CLUSTERED 
(
	[TarifId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Kategori] ON 

INSERT [dbo].[Kategori] ([kategoriId], [kategoriAdi]) VALUES (1, N'AnaYemek')
INSERT [dbo].[Kategori] ([kategoriId], [kategoriAdi]) VALUES (2, N'Tatlı')
INSERT [dbo].[Kategori] ([kategoriId], [kategoriAdi]) VALUES (3, N'Icecek')
INSERT [dbo].[Kategori] ([kategoriId], [kategoriAdi]) VALUES (4, N'Corba')
SET IDENTITY_INSERT [dbo].[Kategori] OFF
SET IDENTITY_INSERT [dbo].[Tarif] ON 

INSERT [dbo].[Tarif] ([TarifId], [TarifBaslik], [TarifIcerik], [YayinTarihi], [kategoriId], [ResimYolu]) VALUES (20, N'Köfteli Çorba Tarifi Nasıl Yapılır?', N'asdf', CAST(0x0000A9E800000000 AS DateTime), 4, N'images/makale/kofteli-corba-tarifi.jpg')
INSERT [dbo].[Tarif] ([TarifId], [TarifBaslik], [TarifIcerik], [YayinTarihi], [kategoriId], [ResimYolu]) VALUES (1022, N'Elmalı Turta ', N'
1.Hamurumuzu hazırladıktan sonra turta kalıbında önceden yağlanmış şekilde hazırlıyoruz.
2.Elmaları rendeleyip şeker ile kaynatıyoruz suyunu salıp çektikten sonra tarçın ve ceviz de ekleyip kalıbın ortasına yayıyoruz.
3.Daha sonra şekil verdiğimiz turtanın üzerine yumurta sarısı sürüp 180 derece fırında 30-35 dakika bekliyoruz. Ama yine de siz kontrol edin fırından fırına değişiklik gösterebilir pişme süresi 🥰
', CAST(0x0000A9E800AD08E0 AS DateTime), 2, N'images/makale/elmali-turta-filmdekileri-aratmicak-turden.jpg')
INSERT [dbo].[Tarif] ([TarifId], [TarifBaslik], [TarifIcerik], [YayinTarihi], [kategoriId], [ResimYolu]) VALUES (1023, N'Tavuklu Arpa Şehriye Pilavı Tarifi Yapılışı', N'
1.Derin bir tavaya yemeklik doğranmış soğan ve tereyağ eklenip kavrulur.
2.Kuşbaşı doğranmış tavuk eti eklenir ve bir kaç dakika kavrulur.
3.Şehriye ve sıvı yağ ilave edilir ve yaklaşık 10 dakika sürekli karıştırarak kavrulur.
4.Küp küp doğranmış domates eklenir ve domates yumuşayana kadar kavrulmaya devam edilir.
5.Baharatlar ve su eklenip karıştırılır ve kapağı kapatılır.
6.Orta ısıda suyunu çekene kadar pişirilir.
7.Pişen pilavın üzerine mutfak kağıdı serilir ve demlendikten sonra servis edilir.
', CAST(0x0000A9E800AD08E0 AS DateTime), 1, N'images/makale/tavuklu-arpa-sehriye-pilavi-10.jpg')
INSERT [dbo].[Tarif] ([TarifId], [TarifBaslik], [TarifIcerik], [YayinTarihi], [kategoriId], [ResimYolu]) VALUES (1024, N'Böğürtlenli Yaz İçeceği Malzemeleri', N'
1 bardak böğürtlen
2 yemek kaşığı fıstık ezmesi
1/2 bardak yoğurt
1 çay bardağı fındık
Böğürtlenli Yaz İçeceği Nasıl Yapılır?
Tüm malzemeleri rondodan geçirin.
Soğuk olarak servis edin.', CAST(0x0000A9E800AD08E0 AS DateTime), 3, N'images/makale/1500550772_400.jpg')
INSERT [dbo].[Tarif] ([TarifId], [TarifBaslik], [TarifIcerik], [YayinTarihi], [kategoriId], [ResimYolu]) VALUES (1025, N'Böğürtlenli Enerji Içeceği Malzemeleri', N'
25 adet böğürtlen
2 adet elma
1 adet ananas
Böğürtlenli Enerji Içeceği Nasıl Yapılır?
Elmaların kabuğunu soyun ve dörde bölün.
Ananası soyduktan sonra halka halka dilimleyin. 
Tüm malzemeleri belnderdan geçirin. 
Buzdolabında soğuduktan sonra nane yapraklarıyla süsleyerek servis edin.', CAST(0x0000A9E800AD08E0 AS DateTime), 3, N'images/makale/1470127011_400.jpg')
INSERT [dbo].[Tarif] ([TarifId], [TarifBaslik], [TarifIcerik], [YayinTarihi], [kategoriId], [ResimYolu]) VALUES (1026, N'Limonata', N'Limonata Malzemeleri
6 adet büyük boy limon
1 adet portakal
1 su bardağı toz şeker
1 su bardağı sıcak su
1 litre soğuk su
½ demet taze nane
Limonata Nasıl Yapılır?
Limon ve portakalların kabuklarını bir kaba rendeleyin.
Üzerine şeker ilave edin elinizle iyice ovun.
Ardından üzerine sıcak su döküp şeker eriyinceye kadar karıştırın.
Kabuklarını rendelediğiniz portakal ve limonların suyunu sıkıp şekerli karışıma ilave edin.
Limonata özünü süzgeçten geçirin ve buzdolabında soğuttuktan sonra üzerine su ve nane yaprakları ilave edip servis edin.', CAST(0x0000A9E800AD08E0 AS DateTime), 3, N'images/makale/1466719158_400.jpg')
INSERT [dbo].[Tarif] ([TarifId], [TarifBaslik], [TarifIcerik], [YayinTarihi], [kategoriId], [ResimYolu]) VALUES (1027, N'Pancar Çorbası', N'Pancar Çorbası Malzemeleri
600 gram pancar
2 su bardağı pancar suyu
1 su bardağı portakal suyu
2 su bardağı sıcak su
1 soğan
1 diş sarımsak
50 gram tereyağ
Tuz 
Karabiber
Pancar Çorbası Nasıl Yapılır?
Pancar, sarımsak ve soğanları dilimleyin.
Tereyağını tencereye ekleyin.
Soğan ve sarımsakları soteleyin.
Baharatları da ilave edin.
Pancarları da ekleyin ve 5 dakika soteleyin.
Pancar suyu, portakal suyu ve suyu ilave edin.
Pancarlar yumuşayana kadar pişirin.
Son olarak blenderdan geçirin.', CAST(0x0000A9E800AD08E0 AS DateTime), 4, N'images/makale/sfdadsjpg.jpg')
INSERT [dbo].[Tarif] ([TarifId], [TarifBaslik], [TarifIcerik], [YayinTarihi], [kategoriId], [ResimYolu]) VALUES (1028, N'Tarhana Çorbası nasıl yapılır', N'Tarhana Çorbası Malzemeleri
6 yemek kaşığı tarhana
1 litre (5 su bardağı) su ya da et suyu
1 yemek kaşığı domates salçası
4 yemek kaşığı zeytinyağı
1 diş sarımsak
tuz
Tarhana Çorbası Nasıl Yapılır?
Tarhanayı 1 su bardağı su ile iyice karıştırın.
Salça, dövülmüş 1 diş sarımsak ve yağı çorbayı pişireceğiniz tencereye alın. Sarımsak kokusu çıkıncaya kadar kavurun.
Tencereye 4 su bardağı suyu ilave edin ve kaynatın. Erittiğiniz tarhanayı içine ilave edip kısık ateşte koyulaşıncaya kadar karıştırarak pişirin.', CAST(0x0000A9E800AD08E0 AS DateTime), 1, N'images/makale/1469019443_400.jpg')
INSERT [dbo].[Tarif] ([TarifId], [TarifBaslik], [TarifIcerik], [YayinTarihi], [kategoriId], [ResimYolu]) VALUES (1029, N'pizza Tarifi', N'Pizza Malzemeleri
5 Su bardağı un
1 Adet yumurta
1 Tatlı kaşığı yaş bira mayası
1.5 Su bardağı süt
1 Tatlı kaşığı tozşeker
1 Tatlı kaşığı tuz
Yarım paket margarin
Sos için :
2 Çorba kaşığı salça
1 Çorba kaşığı ketçap
1 Adet domates
Kekik
Üzerine :
200 gr kaşar peyniri veya dil peyniri rendesi
Dilidiğiniz kadar dilimlenmiş sosis, sucuk ve mantar
2 Adet domates
2 Adet yeşil biber
Pizza Nasıl Yapılır?
Unu, hamur yoğuracağınız kaba eleyin.
Ortasını havuz gibi açın.
Şekerli sütte ezilmiş bira mayası, oda sıcaklığında yumuşatılmış margarin, yumurta ve tuzu koyup yumuşak bir hamur haline getirin.
Üzerini nemli bezle örtün ve ılık bir yerde, hamur iki katı hacme ulaşana dek bekletin.
Yağlanmış bir fırın tepsisine hamuru bastırarak yerleştirin.
Kenarlarını biraz yükseltin.
Üzerine salça, ketçap, domates rendesi ve kekikten oluşan sosu sürün (gerekirse biraz sulandırın).
Üzerine peynir rendesini serpiştirin.
Dilimlenmiş sosis, sucuk ve mantarı yerleştirin.
Halka halka kesilmiş domates ve doğranmış biberleri de koyduktan sonra orta hararetli fırında pizzanın altı pembeleşene dek pişirin.)
Pizza yemeği tarifi', CAST(0x0000A9E800AD08E0 AS DateTime), 1, N'images/makale/dfasdf.jpg')
INSERT [dbo].[Tarif] ([TarifId], [TarifBaslik], [TarifIcerik], [YayinTarihi], [kategoriId], [ResimYolu]) VALUES (1030, N'Kolay Fıstıklı Baklava Tarifi', N'Kolay Fıstıklı Baklava Malzemeleri
1/2 kg ince baklavalık yufka
1 bardak eritilmiş tereyağı
2 bardak kadar kıyılmış antepfıstığı
Şurubu için:
3 bardak toz şeker
2 bardak su
1 limonun suyu
Kolay Fıstıklı Baklava Nasıl Yapılır?
Hazır baklavalık yufkaları üst üste koyun.
Keskin bir bıçakla yufkaları 20 cm çapında bir tepsiye göre yuvarlak şekilde kesin.
Yufkanın bir yaprağını yağlanmış tepsiye serin.
Üzerine eritilmiş yağdan yarım kaşık kadar serpin.
İkinci yufkayı tepsiye serin.
Üstünü de aynı biçimde yağlayın.
Artan parçaları yanyana getirerek dizin.
Üzerini yağlayın.
Böylece yufkanın yarısı üst üste dizilince, kavrulup, dövülmüş olan antepfıstığını yayın.
Antepfıstıklarının üzerine de geri kalan yufkaları aynı biçimde aralarını yağlayarak döşeyin.
Yufkaların serilmesi işi bitince, çok keskin bir bıçakla yufkaları baklava şeklinde kesin.
Kalan yağı tepsinin üzerine gezdirin.
Ortadan az ısılı fırına koyup, yufkaların üstü pembeleşene dek 1,5 saat kadar pişirin.
Bu sırada toz şeker, su ve limon suyunu orta ısılı ateşte onbeş-yirmi dakika kadar kaynatıp, oldukça koyu bir şerbet elde edin.
Tepsiyi fırından çıkardıktan sonra 10 dakika kadar soğutun.
Bir fırçayla baklavaların üzerine yağ sürün. Şerbeti tepsinin üzerine azar azar dökerek baklavaya yedirin.', CAST(0x0000A9EC00AD08E0 AS DateTime), 2, N'images/makale/1469716737_400.jpg')
SET IDENTITY_INSERT [dbo].[Tarif] OFF
ALTER TABLE [dbo].[Tarif]  WITH CHECK ADD  CONSTRAINT [FK_Tarif_Kategori] FOREIGN KEY([kategoriId])
REFERENCES [dbo].[Kategori] ([kategoriId])
GO
ALTER TABLE [dbo].[Tarif] CHECK CONSTRAINT [FK_Tarif_Kategori]
GO
USE [master]
GO
ALTER DATABASE [YemekTarifi] SET  READ_WRITE 
GO
