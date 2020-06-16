USE [Hotel Reverastion System ]
GO

/****** Object:  Table [dbo].[db Hotel]    Script Date: 6/16/2020 4:48:37 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[db Hotel](
	[Hotel id] [int] NOT NULL,
	[Hotel Name] [nvarchar](50) NOT NULL,
	[Customer id] [int] NOT NULL,
	[Room Number] [int] NOT NULL,
	[Room Type] [int] NOT NULL,
 CONSTRAINT [PK_db Hotel] PRIMARY KEY CLUSTERED 
(
	[Hotel id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[db Hotel]  WITH CHECK ADD  CONSTRAINT [FK_db Hotel_db Reservation] FOREIGN KEY([Hotel id])
REFERENCES [dbo].[db Reservation] ([Reservation id])
GO

ALTER TABLE [dbo].[db Hotel] CHECK CONSTRAINT [FK_db Hotel_db Reservation]
GO

