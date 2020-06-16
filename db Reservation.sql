USE [Hotel Reverastion System ]
GO

/****** Object:  Table [dbo].[db Reservation]    Script Date: 6/16/2020 4:49:00 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[db Reservation](
	[Reservation id] [int] NOT NULL,
	[Hotel id] [int] NOT NULL,
	[Customer id] [int] NOT NULL,
	[Room id] [int] NOT NULL,
	[Price] [int] NOT NULL,
	[Room Number] [int] NOT NULL,
	[Hotel Name] [nvarchar](50) NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
	[Room Type] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_db Reservation] PRIMARY KEY CLUSTERED 
(
	[Reservation id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[db Reservation]  WITH CHECK ADD  CONSTRAINT [FK_db Reservation_db Room] FOREIGN KEY([Room id])
REFERENCES [dbo].[db Room1] ([Room id])
GO

ALTER TABLE [dbo].[db Reservation] CHECK CONSTRAINT [FK_db Reservation_db Room]
GO

