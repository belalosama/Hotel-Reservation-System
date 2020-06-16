USE [Hotel Reverastion System ]
GO

/****** Object:  Table [dbo].[db Customer]    Script Date: 6/16/2020 4:47:56 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[db Customer](
	[Customer id] [int] NOT NULL,
	[First Name] [nvarchar](50) NOT NULL,
	[Last Name] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](50) NOT NULL,
	[Phone Number] [int] NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Reservation id] [int] NOT NULL,
 CONSTRAINT [PK_db Customer] PRIMARY KEY CLUSTERED 
(
	[Customer id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[db Customer]  WITH CHECK ADD  CONSTRAINT [FK_db Customer_db Reservation] FOREIGN KEY([Customer id])
REFERENCES [dbo].[db Reservation] ([Reservation id])
GO

ALTER TABLE [dbo].[db Customer] CHECK CONSTRAINT [FK_db Customer_db Reservation]
GO

