USE [Hotel Reverastion System ]
GO

/****** Object:  Table [dbo].[db Room]    Script Date: 6/16/2020 4:49:26 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[db Room](
	[Room id] [int] NOT NULL,
	[Room Type] [nvarchar](50) NOT NULL,
	[Price] [int] NOT NULL,
	[Reservation id] [int] NOT NULL
) ON [PRIMARY]

GO

