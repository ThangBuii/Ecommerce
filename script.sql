USE [Ecommerce]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 3/23/2023 4:30:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[ProductID] [int] NULL,
	[Quantity] [int] NULL,
	[Subtotal] [money] NULL,
	[UserID] [int] NULL,
	[Price] [money] NULL,
	[ProductImage] [nvarchar](200) NULL,
	[ProductName] [nchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 3/23/2023 4:30:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryID] [int] NOT NULL,
	[Name] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderSummary]    Script Date: 3/23/2023 4:30:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderSummary](
	[UserID] [int] NOT NULL,
	[Subtotal] [money] NULL,
	[Tax] [money] NULL,
	[Total] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductsDetail]    Script Date: 3/23/2023 4:30:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductsDetail](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Price] [money] NULL,
	[Img_Main] [nvarchar](100) NULL,
	[Img_Sub1] [nvarchar](100) NULL,
	[Img_Sub2] [nvarchar](100) NULL,
	[Img_Sub3] [nvarchar](100) NULL,
	[Description] [nvarchar](2000) NULL,
	[Cid] [int] NULL,
	[Sid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShoppingHistory]    Script Date: 3/23/2023 4:30:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShoppingHistory](
	[ProductID] [int] NULL,
	[Quantity] [int] NULL,
	[Subtotal] [money] NULL,
	[UserID] [int] NULL,
	[Price] [money] NULL,
	[ProductImage] [nchar](100) NULL,
	[ProductName] [nchar](100) NULL,
	[OrderID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShoppingSummary]    Script Date: 3/23/2023 4:30:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShoppingSummary](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[Total] [money] NULL,
	[ProductAmount] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 3/23/2023 4:30:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[Account] [nvarchar](100) NOT NULL,
	[Password] [nvarchar](100) NULL,
	[Email] [nvarchar](100) NULL,
	[isAdmin] [int] NULL,
	[isSeller] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Account] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Category] ([CategoryID], [Name]) VALUES (1, N'Lifestyle')
INSERT [dbo].[Category] ([CategoryID], [Name]) VALUES (2, N'Basketball')
INSERT [dbo].[Category] ([CategoryID], [Name]) VALUES (3, N'Running')
GO
SET IDENTITY_INSERT [dbo].[ProductsDetail] ON 

INSERT [dbo].[ProductsDetail] ([ProductID], [Name], [Price], [Img_Main], [Img_Sub1], [Img_Sub2], [Img_Sub3], [Description], [Cid], [Sid]) VALUES (1, N'Air Jordan 1 Mid SE', 235.0000, N'img/img1.png', N'img/img1-1.png', N'img/img1-2.png', N'img/img1-3.png', N'Kevin Durant thrives on big games. When the stakes are high, he''ll play every minute if it means getting a crucial victory. The KD15 is ready to go the distance. Lighter than his previous signature shoe, it helps you stay bouncy and comfortable at crunch time. The ride is as smooth as KD''s pull-up jumper and the cushioning is as plush as his right-to-left crossover in traffic, so that you can feel contained when your team needs you the most.', 1, 1)
INSERT [dbo].[ProductsDetail] ([ProductID], [Name], [Price], [Img_Main], [Img_Sub1], [Img_Sub2], [Img_Sub3], [Description], [Cid], [Sid]) VALUES (2, N'Nike Dunk Low Retro', 165.0000, N'img/img2.png', N'img/img2-1.png', N'img/img2-2.png', N'img/img2-3.png', N'Created for the hardwood but taken to the streets, the basketball icon returns with classic details and throwback hoops flair. Channelling 80s vibes, its padded, low-cut collar lets you take your game anywhere—in comfort.', 2, 1)
INSERT [dbo].[ProductsDetail] ([ProductID], [Name], [Price], [Img_Main], [Img_Sub1], [Img_Sub2], [Img_Sub3], [Description], [Cid], [Sid]) VALUES (3, N'Nike Air Force 1 ''07', 189.0000, N'img/img3.png', N'img/img3-1.png', N'img/img3-2.png', N'img/img3-3.png', N'The radiance lives on in the Nike Air Force 1 ''07, the basketball original that puts a fresh spin on what you know best: durably stitched overlays, clean finishes and the perfect amount of flash to make you shine.', 1, 1)
INSERT [dbo].[ProductsDetail] ([ProductID], [Name], [Price], [Img_Main], [Img_Sub1], [Img_Sub2], [Img_Sub3], [Description], [Cid], [Sid]) VALUES (4, N'Nike Dunk High Retro Premium', 209.0000, N'img/img4.png', N'img/img4-1.png', N'img/img4-2.png', N'img/img4-3.png', N'Quench your thirst for style with this salty take on the hoops original. Preserving everything you know best—era-echoing construction, ultra-padded design and nothin''but-net style—its cracked leather, salt-washed colours and weathered accents maintain its status as the coveted off-court shoe.', 1, 1)
INSERT [dbo].[ProductsDetail] ([ProductID], [Name], [Price], [Img_Main], [Img_Sub1], [Img_Sub2], [Img_Sub3], [Description], [Cid], [Sid]) VALUES (5, N'Nike Air Trainer 1', 219.0000, N'img/img5.png', N'img/img5-1.png', N'img/img5-2.png', N'img/img5-3.png', N'Where will you take your sneakers? Anywhere and everywhere? These essential shoes, just like the originals from ''87, let you cross between all parts of the city without a glitch. With retro details you love, like the forefoot strap and layered midsole, as well as crisp leather in classic grayscale, it keeps the legend alive and well. So, again, where will you take your sneakers? Anywhere and everywhere, indeed.', 1, 1)
INSERT [dbo].[ProductsDetail] ([ProductID], [Name], [Price], [Img_Main], [Img_Sub1], [Img_Sub2], [Img_Sub3], [Description], [Cid], [Sid]) VALUES (6, N'Nike Court Vision Low', 119.0000, N'img/img6.png', N'img/img6-1.png', N'img/img6-2.png', N'img/img6-3.png', N'In love with the look of old-school basketball but craving the fast-paced nature of today''s game. Meet the Nike Court Vision Low. These everyday kicks are made from materials that echo b-ball shoes of the ''80s. To give them an even stronger retro feel, we added university-inspired details sure to remind you of your days on campus.', 1, 1)
INSERT [dbo].[ProductsDetail] ([ProductID], [Name], [Price], [Img_Main], [Img_Sub1], [Img_Sub2], [Img_Sub3], [Description], [Cid], [Sid]) VALUES (7, N'Nike Blazer Mid Pro Club', 189.0000, N'img/img7.png', N'img/img7-1.png', N'img/img7-2.png', N'img/img7-3.png', N'Being rooted doesn''t mean you can''t step forwards. Keeping the classic simplicity and comfort you love, your favourite wardrobe staple gets remastered for the modern era. Extra rubber extends from the midsole to the Swoosh for a bold twist (and a little nod to Nike innovation from the ''70s). The patchwork upper adds the perfect amount of retro attitude.', 1, 3)
INSERT [dbo].[ProductsDetail] ([ProductID], [Name], [Price], [Img_Main], [Img_Sub1], [Img_Sub2], [Img_Sub3], [Description], [Cid], [Sid]) VALUES (8, N'Nike Air Max 97 SE', 279.0000, N'img/img8.png', N'img/img8-1.png', N'img/img8-2.png', N'img/img8-3.png', N'Find out what moves you in the Nike Air Max 97. Our iconic design, originally inspired by Japanese bullet trains, now tells a playful story rooted in our history of moving people. The textile upper, hemp accents and snail-trail stitching nod to our fictional "NIKE MOVING CO.". And to top it off on the bottom, visible Nike Air cushioning lets you ride in first-class comfort. So, where next?', 1, 3)
INSERT [dbo].[ProductsDetail] ([ProductID], [Name], [Price], [Img_Main], [Img_Sub1], [Img_Sub2], [Img_Sub3], [Description], [Cid], [Sid]) VALUES (9, N'Nike Air Zoom Flight 95', 249.0000, N'img/img9.png', N'img/img9-1.png', N'img/img9-2.png', N'img/img9-3.png', N'Have you ever had déjà shoe? Flash back to one of the first shoes to popularise Zoom Air technology and relive the hoops revolution. With its flowing lines, patent leather accents and futuristic ''bug eye'' detailing, the Air Zoom Flight 95 is no dream—it''s your ticket to turn heads.', 2, 3)
INSERT [dbo].[ProductsDetail] ([ProductID], [Name], [Price], [Img_Main], [Img_Sub1], [Img_Sub2], [Img_Sub3], [Description], [Cid], [Sid]) VALUES (10, N'Nike Air Force 1 Mid ''07 LX', 229.0000, N'img/img10.png', N'img/img10-1.png', N'img/img10-2.png', N'img/img10-3.png', N'The celebrations just keep coming. Unbox the AF-1 for a fireside feel and a whole lotta style. The joyful take on the hoops icon pairs crisp leather with seasonally perfect prints and colours. And don''t worry—even if you''ve been naughty, you''re gonna look nice.', 2, 3)
INSERT [dbo].[ProductsDetail] ([ProductID], [Name], [Price], [Img_Main], [Img_Sub1], [Img_Sub2], [Img_Sub3], [Description], [Cid], [Sid]) VALUES (11, N'Jordan Why Not 6', 239.0000, N'img/img11.png', N'img/img11-1.png', N'img/img11-2.png', N'img/img11-3.png', N'Russell Westbrook''s 6th signature shoe is—you guessed it—all about speed. To get you goin'' as fast as possible, we''ve wrapped the rubber outsole nearly up to the midsole, so you''re not gonna slip when you explode from 0 to 100', 2, 3)
INSERT [dbo].[ProductsDetail] ([ProductID], [Name], [Price], [Img_Main], [Img_Sub1], [Img_Sub2], [Img_Sub3], [Description], [Cid], [Sid]) VALUES (12, N'Zion 2 PF', 205.0000, N'img/img12.png', N'img/img12-1.png', N'img/img12-2.png', N'img/img12-3.png', N'Channel new levels of speed and power in shoes designed for Zion and built for ballers at any level. An adjustable strap up top helps lock your foot in place while a firm midsole supports high-paced play. A wider outsole provides extra stability—perfect for playing on outdoor courts', 2, 1)
INSERT [dbo].[ProductsDetail] ([ProductID], [Name], [Price], [Img_Main], [Img_Sub1], [Img_Sub2], [Img_Sub3], [Description], [Cid], [Sid]) VALUES (13, N'Nike Cosmic Unity 2', 235.0000, N'img/img13.png', N'img/img13-1.png', N'img/img13-2.png', N'img/img13-3.png', N'Celebrate the love and joy of the game with the Nike Cosmic Unity 2. Made from at least 20% recycled content by weight, it provides enhanced responsiveness and support. This shoe will help keep you fresh and secure without overloading it with extra grams, so that you can focus on locking down the perimeter defensively or starting the fast break after a rebound.', 2, 1)
INSERT [dbo].[ProductsDetail] ([ProductID], [Name], [Price], [Img_Main], [Img_Sub1], [Img_Sub2], [Img_Sub3], [Description], [Cid], [Sid]) VALUES (14, N'Nike Air Deldon ''Deldon Designs''', 205.0000, N'img/img14.png', N'img/img14-1.png', N'img/img14-2.png', N'img/img14-3.png', N'Elena Delle Donne''s basketball shoe invites everyone to step in and take a shot at the game. Made for everyone, it has a collapsible heel and a large strap, so you can get in and lock in with 1 hand.', 2, 1)
INSERT [dbo].[ProductsDetail] ([ProductID], [Name], [Price], [Img_Main], [Img_Sub1], [Img_Sub2], [Img_Sub3], [Description], [Cid], [Sid]) VALUES (15, N'KD15 EP', 235.0000, N'img/img15.png', N'img/img15-1.png', N'img/img15-2.png', N'img/img15-3.png', N'Kevin Durant thrives on big games. When the stakes are high, he''ll play every minute if it means getting a crucial victory. The KD15 is ready to go the distance. Lighter than his previous signature shoe, it helps you stay bouncy and comfortable at crunch time. The ride is as smooth as KD''s pull-up jumper and the cushioning is as plush as his right-to-left crossover in traffic, so that you can feel contained when your team needs you the most.', 2, 1)
INSERT [dbo].[ProductsDetail] ([ProductID], [Name], [Price], [Img_Main], [Img_Sub1], [Img_Sub2], [Img_Sub3], [Description], [Cid], [Sid]) VALUES (16, N'Jordan Stay Loyal 2', 199.0000, N'img/img16.png', N'img/img16-1.png', N'img/img16-2.png', N'img/img16-3.png', N'Inspired by generations of Js, these kicks are a collage of cool. Design details recall decades of legendary shoes while paying homage to MJs storied career. Breathable mesh, sturdy leather and lightweight Air cushioning in the heel make it that much easier to walk in the footsteps of greatness.', 2, 3)
INSERT [dbo].[ProductsDetail] ([ProductID], [Name], [Price], [Img_Main], [Img_Sub1], [Img_Sub2], [Img_Sub3], [Description], [Cid], [Sid]) VALUES (17, N'Air Jordan XXXVII PF', 275.0000, N'img/img17.png', N'img/img17-1.png', N'img/img17-2.png', N'img/img17-3.png', N'You''ve got the hops and the speed—lace up in shoes that enhance what you bring to the court. The latest AJ is all about take-offs and landings, with multiple Air units to help get you off the ground and Formula 23 foam to ease your impact. ', 3, 3)
INSERT [dbo].[ProductsDetail] ([ProductID], [Name], [Price], [Img_Main], [Img_Sub1], [Img_Sub2], [Img_Sub3], [Description], [Cid], [Sid]) VALUES (18, N'Luka 1 PF', 189.0000, N'img/img18.png', N'img/img18-1.png', N'img/img18-2.png', N'img/img18-3.png', N'Designed for No. 77 and made for every athlete craving speed and efficiency, Luka''s debut delivers the goods. The first shoe with full-length Formula 23 foam, it has an ultra-supportive fit crafted with the step-back in mind. Meanwhile, strong and lightweight Flight Wire embroidery keeps you feeling contained, whether you''re playing indoors or out.', 3, 3)
INSERT [dbo].[ProductsDetail] ([ProductID], [Name], [Price], [Img_Main], [Img_Sub1], [Img_Sub2], [Img_Sub3], [Description], [Cid], [Sid]) VALUES (19, N'Nike x Ambush Air Adjust Force', 305.0000, N'img/img19.png', N'img/img19-1.png', N'img/img19-2.png', N'img/img19-3.png', N'Yoon Ahn hits refresh on the clandestine hoops shoe you''ve longed to see back on the streets. From luxurious nubuck leather to plastic details, the Ambush branded shoe bridges iconic b-ball style with runway flair. And of course, we''ve kept the removable midfoot strap that made this look legendary.', 3, 3)
INSERT [dbo].[ProductsDetail] ([ProductID], [Name], [Price], [Img_Main], [Img_Sub1], [Img_Sub2], [Img_Sub3], [Description], [Cid], [Sid]) VALUES (20, N'Linh Witness 7 EP', 165.0000, N'img/img20.png', N'img/img20-1.png', N'img/img20-2.png', N'img/img20-3.png', N'The longer LeBron''s legendary career continues, the more his game needs a design that doesn''t weigh him down, yet can still control all that sublime power.', 2, 1)
INSERT [dbo].[ProductsDetail] ([ProductID], [Name], [Price], [Img_Main], [Img_Sub1], [Img_Sub2], [Img_Sub3], [Description], [Cid], [Sid]) VALUES (21, N'LeBron XX Christmas EP', 299.0000, N'img/img21.png', N'img/img21-1.png', N'img/img21-2.png', N'img/img21-3.png', N'Like Santa barrelling down the chimney, LeBron James always brings the heat on Christmas Day. Wrapped in LeBron''s best designs of Christmases past, this special edition has a worth-the-wait gift on the insole, harkening back to where it all began for The King. ', 3, 3)
INSERT [dbo].[ProductsDetail] ([ProductID], [Name], [Price], [Img_Main], [Img_Sub1], [Img_Sub2], [Img_Sub3], [Description], [Cid], [Sid]) VALUES (22, N'Jordan One Take 4 PF', 165.0000, N'img/img22.png', N'img/img22-1.png', N'img/img22-2.png', N'img/img22-3.png', N'Get that speed you need, just like Russ. Inspired by Russell Westbrook''s latest signature shoe, the outsole of the Jordan One Take 4 wraps up nearly to the midsole so you can start, stop or change direction in an instant.', 3, 5)
INSERT [dbo].[ProductsDetail] ([ProductID], [Name], [Price], [Img_Main], [Img_Sub1], [Img_Sub2], [Img_Sub3], [Description], [Cid], [Sid]) VALUES (23, N'Nike Air Deldon "Legacy"', 205.0000, N'img/img23.png', N'img/img23-1.png', N'img/img23-2.png', N'img/img23-3.png', N'Elena Delle Donne''s debut basketball shoe invites everyone to step in and take a shot at the game. Made for all athletes of all abilities, it has a collapsible heel and a large strap, so you can get in and lock in with one hand.', 3, 6)
INSERT [dbo].[ProductsDetail] ([ProductID], [Name], [Price], [Img_Main], [Img_Sub1], [Img_Sub2], [Img_Sub3], [Description], [Cid], [Sid]) VALUES (24, N'Nike Air Zoom GT Jump', 259.0000, N'img/img24.png', N'img/img24-1.png', N'img/img24-2.png', N'img/img24-3.png', N'Feel like defying gravity? Meet one of Nike Basketball''s most responsive cushioning systems ever devised for game shoes', 3, 7)
INSERT [dbo].[ProductsDetail] ([ProductID], [Name], [Price], [Img_Main], [Img_Sub1], [Img_Sub2], [Img_Sub3], [Description], [Cid], [Sid]) VALUES (25, N'NikeCourt Legacy', 105.0000, N'img/img25.png', N'img/img25-1.png', N'img/img25-2.png', N'img/img25-3.png', N'Honouring a history rooted in tennis culture, the Nike Court Legacy brings you a time-tested staple. Its pebbled upper, heritage stitching and retro Swoosh design let you blend sport and fashion. And, you get to do good by looking good.', 1, 5)
INSERT [dbo].[ProductsDetail] ([ProductID], [Name], [Price], [Img_Main], [Img_Sub1], [Img_Sub2], [Img_Sub3], [Description], [Cid], [Sid]) VALUES (26, N'Nike Dunk High 1985', 215.0000, N'img/img26.png', N'img/img26-1.png', N'img/img26-2.png', N'img/img26-3.png', N'Celebrate heritage with an updated version of the Dunk High, recrafted to reflect the original from 1985. Matching the shape, look and feel that started it all, it delivers true vintage style while keeping the familiar comfort you love.', 1, 6)
INSERT [dbo].[ProductsDetail] ([ProductID], [Name], [Price], [Img_Main], [Img_Sub1], [Img_Sub2], [Img_Sub3], [Description], [Cid], [Sid]) VALUES (27, N'Nike Dunk High 1985', 215.0000, N'img/img27.png', N'img/img27-1.png', N'img/img27-2.png', N'img/img27-3.png', N'Celebrate heritage with an updated version of the Dunk High, recrafted to reflect the original from 1985. Matching the shape, look and feel that started it all, it delivers true vintage style while keeping the familiar comfort you love.', 1, 7)
INSERT [dbo].[ProductsDetail] ([ProductID], [Name], [Price], [Img_Main], [Img_Sub1], [Img_Sub2], [Img_Sub3], [Description], [Cid], [Sid]) VALUES (28, N'Nike Air Max 90 SE', 229.0000, N'img/img28.png', N'img/img28-1.png', N'img/img28-2.png', N'img/img28-3.png', N'Snail-trail deco stitching across the mudguard adds a fun take to the outdoorsy aesthetic. And its Waffle outsole and exposed Air cushioning keep the tried-and-tested feel under your feet.', 1, 6)
INSERT [dbo].[ProductsDetail] ([ProductID], [Name], [Price], [Img_Main], [Img_Sub1], [Img_Sub2], [Img_Sub3], [Description], [Cid], [Sid]) VALUES (29, N'Air Jordan 13 Retro', 299.0000, N'img/img29.png', N'img/img29-1.png', N'img/img29-2.png', N'img/img29-3.png', N'The Air Jordan 13 Retro brings back the memorable game shoe that Michael Jordan wore during the ''97–98 season, all the way to his 6th championship title. All the classic details are there like the quilted overlay, iconic sculpted midsole and holographic eye.', 1, 6)
INSERT [dbo].[ProductsDetail] ([ProductID], [Name], [Price], [Img_Main], [Img_Sub1], [Img_Sub2], [Img_Sub3], [Description], [Cid], [Sid]) VALUES (30, N'Nike Dunk High Retro', 179.0000, N'img/img30.png', N'img/img30-1.png', N'img/img30-2.png', N'img/img30-3.png', N'Created for the hardwood but taken to the streets, the ''80s basketball icon returns with perfectly sheened overlays and original university colours.', 1, 5)
INSERT [dbo].[ProductsDetail] ([ProductID], [Name], [Price], [Img_Main], [Img_Sub1], [Img_Sub2], [Img_Sub3], [Description], [Cid], [Sid]) VALUES (31, N'Nike Dunk High Retro', 179.0000, N'img/img31.png', N'img/img31-1.png', N'img/img31-2.png', N'img/img31-3.png', N'Created for the hardwood but taken to the streets, the ''80s basketball icon returns with perfectly sheened overlays and original university colours.', 1, 5)
INSERT [dbo].[ProductsDetail] ([ProductID], [Name], [Price], [Img_Main], [Img_Sub1], [Img_Sub2], [Img_Sub3], [Description], [Cid], [Sid]) VALUES (32, N'Nike Dunk High Retro', 179.0000, N'img/img32.png', N'img/img32-1.png', N'img/img32-2.png', N'img/img32-3.png', N'Created for the hardwood but taken to the streets, the ''80s basketball icon returns with perfectly sheened overlays and original university colours.', 1, 7)
INSERT [dbo].[ProductsDetail] ([ProductID], [Name], [Price], [Img_Main], [Img_Sub1], [Img_Sub2], [Img_Sub3], [Description], [Cid], [Sid]) VALUES (33, N'Kyrie Low 5 EP', 189.0000, N'img/img33.png', N'img/img33-1.png', N'img/img33-2.png', N'img/img33-3.png', N'Kyrie twists defenders into knots using his footwork and ball handling, creating the space he needs to make the play. Designed for his quick, crafty game, the Kyrie Low 5 enables players who utilise their speed and multi-directional ability to stay in control, while taking advantage of the separation they create.', 2, 7)
INSERT [dbo].[ProductsDetail] ([ProductID], [Name], [Price], [Img_Main], [Img_Sub1], [Img_Sub2], [Img_Sub3], [Description], [Cid], [Sid]) VALUES (34, N'Kyrie Low 5 EP', 189.0000, N'img/img34.png', N'img/img34-1.png', N'img/img34-2.png', N'img/img34-3.png', N'Kyrie twists defenders into knots using his footwork and ball handling, creating the space he needs to make the play. Designed for his quick, crafty game, the Kyrie Low 5 enables players who utilise their speed and multi-directional ability to stay in control, while taking advantage of the separation they create.', 2, 7)
INSERT [dbo].[ProductsDetail] ([ProductID], [Name], [Price], [Img_Main], [Img_Sub1], [Img_Sub2], [Img_Sub3], [Description], [Cid], [Sid]) VALUES (35, N'Kyrie Low 5 EP', 189.0000, N'img/img35.png', N'img/img35-1.png', N'img/img35-2.png', N'img/img35-3.png', N'Kyrie twists defenders into knots using his footwork and ball handling, creating the space he needs to make the play. Designed for his quick, crafty game, the Kyrie Low 5 enables players who utilise their speed and multi-directional ability to stay in control, while taking advantage of the separation they create.', 2, 3)
INSERT [dbo].[ProductsDetail] ([ProductID], [Name], [Price], [Img_Main], [Img_Sub1], [Img_Sub2], [Img_Sub3], [Description], [Cid], [Sid]) VALUES (36, N'Nike Streakfly', 249.0000, N'img/img36.png', N'img/img36-1.png', N'img/img36-2.png', N'img/img36-3.png', N'Our lightest racing shoe, the Nike Streakfly is all about the speed you need to take on the competition in a mile, 5K or 10K race. Low profile with sleek details, it feels like it disappears on your foot to help you better connect with the road on the way to your personal best', 3, 5)
INSERT [dbo].[ProductsDetail] ([ProductID], [Name], [Price], [Img_Main], [Img_Sub1], [Img_Sub2], [Img_Sub3], [Description], [Cid], [Sid]) VALUES (37, N'Nike Streakfly', 249.0000, N'img/img37.png', N'img/img37-1.png', N'img/img37-2.png', N'img/img37-3.png', N'Our lightest racing shoe, the Nike Streakfly is all about the speed you need to take on the competition in a mile, 5K or 10K race. Low profile with sleek details, it feels like it disappears on your foot to help you better connect with the road on the way to your personal best', 3, 5)
INSERT [dbo].[ProductsDetail] ([ProductID], [Name], [Price], [Img_Main], [Img_Sub1], [Img_Sub2], [Img_Sub3], [Description], [Cid], [Sid]) VALUES (38, N'Nike Streakfly', 249.0000, N'img/img38.png', N'img/img38-1.png', N'img/img38-2.png', N'img/img38-3.png', N'Our lightest racing shoe, the Nike Streakfly is all about the speed you need to take on the competition in a mile, 5K or 10K race. Low profile with sleek details, it feels like it disappears on your foot to help you better connect with the road on the way to your personal best', 3, 5)
SET IDENTITY_INSERT [dbo].[ProductsDetail] OFF
GO
INSERT [dbo].[ShoppingHistory] ([ProductID], [Quantity], [Subtotal], [UserID], [Price], [ProductImage], [ProductName], [OrderID]) VALUES (3, 2, 378.0000, 1010, 189.0000, N'img/img3.png                                                                                        ', N'Nike Air Force 1 ''07                                                                                ', 6)
INSERT [dbo].[ShoppingHistory] ([ProductID], [Quantity], [Subtotal], [UserID], [Price], [ProductImage], [ProductName], [OrderID]) VALUES (6, 1, 119.0000, 1010, 119.0000, N'img/img6.png                                                                                        ', N'Nike Court Vision Low                                                                               ', 6)
INSERT [dbo].[ShoppingHistory] ([ProductID], [Quantity], [Subtotal], [UserID], [Price], [ProductImage], [ProductName], [OrderID]) VALUES (2, 10, 1650.0000, 3, 165.0000, N'img/img2.png                                                                                        ', N'Nike Dunk Low Retro                                                                                 ', 7)
INSERT [dbo].[ShoppingHistory] ([ProductID], [Quantity], [Subtotal], [UserID], [Price], [ProductImage], [ProductName], [OrderID]) VALUES (10, 10, 2290.0000, 3, 229.0000, N'img/img10.png                                                                                       ', N'Nike Air Force 1 Mid ''07 LX                                                                         ', 7)
INSERT [dbo].[ShoppingHistory] ([ProductID], [Quantity], [Subtotal], [UserID], [Price], [ProductImage], [ProductName], [OrderID]) VALUES (11, 10, 2390.0000, 3, 239.0000, N'img/img11.png                                                                                       ', N'Jordan Why Not 6                                                                                    ', 8)
INSERT [dbo].[ShoppingHistory] ([ProductID], [Quantity], [Subtotal], [UserID], [Price], [ProductImage], [ProductName], [OrderID]) VALUES (1, 1, 235.0000, 1, 235.0000, N'img/img1.png                                                                                        ', N'Air Jordan 1 Mid SE                                                                                 ', 9)
INSERT [dbo].[ShoppingHistory] ([ProductID], [Quantity], [Subtotal], [UserID], [Price], [ProductImage], [ProductName], [OrderID]) VALUES (5, 1, 219.0000, 1, 219.0000, N'img/img5.png                                                                                        ', N'Nike Air Trainer 1                                                                                  ', 9)
INSERT [dbo].[ShoppingHistory] ([ProductID], [Quantity], [Subtotal], [UserID], [Price], [ProductImage], [ProductName], [OrderID]) VALUES (22, 2, 330.0000, 1010, 165.0000, N'img/img22.png                                                                                       ', N'Jordan One Take 4 PF                                                                                ', 11)
INSERT [dbo].[ShoppingHistory] ([ProductID], [Quantity], [Subtotal], [UserID], [Price], [ProductImage], [ProductName], [OrderID]) VALUES (38, 5, 1245.0000, 1010, 249.0000, N'img/img38.png                                                                                       ', N'Nike Streakfly                                                                                      ', 11)
INSERT [dbo].[ShoppingHistory] ([ProductID], [Quantity], [Subtotal], [UserID], [Price], [ProductImage], [ProductName], [OrderID]) VALUES (5, 1, 219.0000, 1, 219.0000, N'img/img5.png                                                                                        ', N'Nike Air Trainer 1                                                                                  ', 13)
INSERT [dbo].[ShoppingHistory] ([ProductID], [Quantity], [Subtotal], [UserID], [Price], [ProductImage], [ProductName], [OrderID]) VALUES (7, 10, 1890.0000, 1010, 189.0000, N'img/img7.png                                                                                        ', N'Nike Blazer Mid Pro Club                                                                            ', 10)
INSERT [dbo].[ShoppingHistory] ([ProductID], [Quantity], [Subtotal], [UserID], [Price], [ProductImage], [ProductName], [OrderID]) VALUES (19, 1, 305.0000, 1010, 305.0000, N'img/img19.png                                                                                       ', N'Nike x Ambush Air Adjust Force                                                                      ', 11)
INSERT [dbo].[ShoppingHistory] ([ProductID], [Quantity], [Subtotal], [UserID], [Price], [ProductImage], [ProductName], [OrderID]) VALUES (5, 1, 219.0000, 1010, 219.0000, N'img/img5.png                                                                                        ', N'Nike Air Trainer 1                                                                                  ', 6)
INSERT [dbo].[ShoppingHistory] ([ProductID], [Quantity], [Subtotal], [UserID], [Price], [ProductImage], [ProductName], [OrderID]) VALUES (2, 10, 1650.0000, 3, 165.0000, N'img/img2.png                                                                                        ', N'Nike Dunk Low Retro                                                                                 ', 8)
INSERT [dbo].[ShoppingHistory] ([ProductID], [Quantity], [Subtotal], [UserID], [Price], [ProductImage], [ProductName], [OrderID]) VALUES (5, 2, 438.0000, 1010, 219.0000, N'img/img5.png                                                                                        ', N'Nike Air Trainer 1                                                                                  ', 10)
INSERT [dbo].[ShoppingHistory] ([ProductID], [Quantity], [Subtotal], [UserID], [Price], [ProductImage], [ProductName], [OrderID]) VALUES (17, 1, 275.0000, 1010, 275.0000, N'img/img17.png                                                                                       ', N'Air Jordan XXXVII PF                                                                                ', 11)
INSERT [dbo].[ShoppingHistory] ([ProductID], [Quantity], [Subtotal], [UserID], [Price], [ProductImage], [ProductName], [OrderID]) VALUES (2, 1, 165.0000, 1, 165.0000, N'img/img2.png                                                                                        ', N'Nike Dunk Low Retro                                                                                 ', 12)
INSERT [dbo].[ShoppingHistory] ([ProductID], [Quantity], [Subtotal], [UserID], [Price], [ProductImage], [ProductName], [OrderID]) VALUES (3, 1, 189.0000, 1, 189.0000, N'img/img3.png                                                                                        ', N'Nike Air Force 1 ''07                                                                                ', 13)
GO
SET IDENTITY_INSERT [dbo].[ShoppingSummary] ON 

INSERT [dbo].[ShoppingSummary] ([OrderID], [UserID], [Total], [ProductAmount]) VALUES (6, 1010, 787.6000, 3)
INSERT [dbo].[ShoppingSummary] ([OrderID], [UserID], [Total], [ProductAmount]) VALUES (7, 3, 4334.0000, 2)
INSERT [dbo].[ShoppingSummary] ([OrderID], [UserID], [Total], [ProductAmount]) VALUES (8, 3, 4444.0000, 2)
INSERT [dbo].[ShoppingSummary] ([OrderID], [UserID], [Total], [ProductAmount]) VALUES (9, 1, 499.4000, 2)
INSERT [dbo].[ShoppingSummary] ([OrderID], [UserID], [Total], [ProductAmount]) VALUES (10, 1010, 2560.8000, 2)
INSERT [dbo].[ShoppingSummary] ([OrderID], [UserID], [Total], [ProductAmount]) VALUES (11, 1010, 2370.5000, 4)
INSERT [dbo].[ShoppingSummary] ([OrderID], [UserID], [Total], [ProductAmount]) VALUES (12, 1, 181.5000, 1)
INSERT [dbo].[ShoppingSummary] ([OrderID], [UserID], [Total], [ProductAmount]) VALUES (13, 1, 448.8000, 2)
SET IDENTITY_INSERT [dbo].[ShoppingSummary] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([UserID], [Account], [Password], [Email], [isAdmin], [isSeller]) VALUES (1, N'admin', N'123', N'admin@gmail.com', 1, 1)
INSERT [dbo].[Users] ([UserID], [Account], [Password], [Email], [isAdmin], [isSeller]) VALUES (1009, N'dung', N'123', N'dung@gmail.com', 0, 0)
INSERT [dbo].[Users] ([UserID], [Account], [Password], [Email], [isAdmin], [isSeller]) VALUES (7, N'jeff', N'1', N'jeff@gmail.com', 1, 1)
INSERT [dbo].[Users] ([UserID], [Account], [Password], [Email], [isAdmin], [isSeller]) VALUES (3, N'linh', N'1', N'linh@gmail.com', 0, 0)
INSERT [dbo].[Users] ([UserID], [Account], [Password], [Email], [isAdmin], [isSeller]) VALUES (14, N'LinhLacLu', N'1', N'Linhlaclu@hot', 0, 0)
INSERT [dbo].[Users] ([UserID], [Account], [Password], [Email], [isAdmin], [isSeller]) VALUES (13, N'linhTaliban', N'Linhmonggio', N'gdragon3503@gmail.com', 1, 0)
INSERT [dbo].[Users] ([UserID], [Account], [Password], [Email], [isAdmin], [isSeller]) VALUES (11, N'taliban', N'123', N'thangbi67@gmail.com', 1, 0)
INSERT [dbo].[Users] ([UserID], [Account], [Password], [Email], [isAdmin], [isSeller]) VALUES (1010, N'thang', N'1', N'thang@gmail.com', 1, 0)
INSERT [dbo].[Users] ([UserID], [Account], [Password], [Email], [isAdmin], [isSeller]) VALUES (4, N'tung', N'1111', N'tung@gmail.com', 0, 1)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
