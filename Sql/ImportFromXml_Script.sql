USE [shishir]
GO

/****** Object:  Table [dbo].[xmlBookDataImport]    Script Date: 9/25/2017 5:20:03 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[xmlBookDataImport](
	[id] [nvarchar](255) NULL,
	[author] [nvarchar](255) NULL,
	[title] [nvarchar](255) NULL,
	[genre] [nvarchar](255) NULL,
	[price] [decimal](28, 10) NULL,
	[publish_date] [datetime] NULL,
	[description] [nvarchar](255) NULL,
	[ImportDate] [datetime] NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[xmlBookDataImport] ADD  DEFAULT (getdate()) FOR [ImportDate]
GO

