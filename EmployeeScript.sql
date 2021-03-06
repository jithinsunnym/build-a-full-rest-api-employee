USE [EmployeeTest]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 07/06/2021 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Description] [varchar](50) NULL,
	[PhoneNumber] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[State] [varchar](50) NULL,
	[Notes] [varchar](50) NULL,
	[EmailAddress] [varchar](50) NULL,
	[Address] [varchar](50) NULL,
	[PostalCode] [varchar](50) NULL,
	[Disabled] [bit] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Employee] ([Id], [Name], [Description], [PhoneNumber], [City], [State], [Notes], [EmailAddress], [Address], [PostalCode], [Disabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'735713c8-57d3-49ba-a7ef-20a2a292d397', N'John Smith', N'No description', N'07585813378', N'Bromley', N'Kent', N'No notes here.', N'jithinsunny@hotmail.com', N'Flat 1', N'BR2 9TU', 1, CAST(N'2021-06-07T10:21:41.830' AS DateTime), N'Admin', CAST(N'2021-06-07T10:23:14.103' AS DateTime), N'Admin')
INSERT [dbo].[Employee] ([Id], [Name], [Description], [PhoneNumber], [City], [State], [Notes], [EmailAddress], [Address], [PostalCode], [Disabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'5f755e63-acb3-4188-bb8c-3d0a1b371107', N'Holly E', N'No description', N'07585813378', N'Bromley', N'Kent', N'No notes here.', N'jithinsunny@hotmail.com', N'Flat 2', N'BR2 9TU', 1, CAST(N'2021-06-07T10:21:30.990' AS DateTime), N'Admin', CAST(N'2021-06-07T10:21:30.990' AS DateTime), N'Admin')
INSERT [dbo].[Employee] ([Id], [Name], [Description], [PhoneNumber], [City], [State], [Notes], [EmailAddress], [Address], [PostalCode], [Disabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'10d49bb8-4acb-4780-8d54-670e65a3d2a1', N'Stay C', N'No description', N'07585813378', N'Bromley', N'Kent', N'No notes here.', N'jithinsunny@hotmail.com', N'Flat 3', N'BR2 9TU', 1, CAST(N'2021-06-07T10:21:23.560' AS DateTime), N'Admin', CAST(N'2021-06-07T10:21:23.560' AS DateTime), N'Admin')
INSERT [dbo].[Employee] ([Id], [Name], [Description], [PhoneNumber], [City], [State], [Notes], [EmailAddress], [Address], [PostalCode], [Disabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'c8e06abf-84af-4e02-8b1d-b9cd22d3de16', N'Zain', N'No description', N'07585813378', N'Bromley', N'Kent', N'No notes here.', N'jithinsunny@hotmail.com', N'Flat 4', N'BR2 9TU', 1, CAST(N'2021-06-07T10:21:36.607' AS DateTime), N'Admin', CAST(N'2021-06-07T10:21:36.607' AS DateTime), N'Admin')
GO
ALTER TABLE [dbo].[Employee] ADD  DEFAULT (newid()) FOR [Id]
GO
/****** Object:  StoredProcedure [dbo].[DeleteEmployee]    Script Date: 07/06/2021 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Author: Jithin Sunny
-- Date: 07/06/2021
-- Purpose: To delete an employee by their ID

CREATE PROCEDURE [dbo].[DeleteEmployee]  
  @Id [uniqueidentifier]  
AS  
BEGIN  
  DELETE FROM [dbo].[Employee]  
  WHERE [Id] = @Id  
END
GO
/****** Object:  StoredProcedure [dbo].[GetAllEmployee]    Script Date: 07/06/2021 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Author: Jithin Sunny
-- Date: 07/06/2021
-- Purpose: To fetch a list of employees

CREATE PROCEDURE [dbo].[GetAllEmployee]  
AS  
BEGIN  
 SELECT [s].[Id],  
      [s].[Name],  
     [s].[Description],    
     [s].[EmailAddress],  
     [s].[PhoneNumber],  
     [s].[Address],    
     [s].[City],  
     [s].[State],  
     [s].[PostalCode],  
     [s].[Notes],  
     [s].[Disabled],  
     [s].[Created],   
     [s].[CreatedBy],  
     [s].[Modified],  
     [s].[ModifiedBy]  
 FROM [dbo].[Employee] [s] 
END  
GO
/****** Object:  StoredProcedure [dbo].[GetEmployee]    Script Date: 07/06/2021 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Author: Jithin Sunny
-- Date: 07/06/2021
-- Purpose: To fetch a list of employee by their ID

CREATE PROCEDURE [dbo].[GetEmployee]  
  @Id [uniqueidentifier]  
AS  
BEGIN  
 SELECT [s].[Id],  
      [s].[Name],  
     [s].[Description],    
     [s].[EmailAddress],  
     [s].[PhoneNumber],  
     [s].[Address],    
     [s].[City],  
     [s].[State],  
     [s].[PostalCode],  
     [s].[Notes],  
     [s].[Disabled],  
     [s].[Created],   
     [s].[CreatedBy],  
     [s].[Modified],  
     [s].[ModifiedBy]  
 FROM [dbo].[Employee] [s]   
 WHERE [s].[Id] = @Id  
END  
GO
/****** Object:  StoredProcedure [dbo].[InsertEmployee]    Script Date: 07/06/2021 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Author: Jithin Sunny
-- Date: 07/06/2021
-- Purpose: To add an employee to the list

CREATE PROCEDURE [dbo].[InsertEmployee]  
 (  
  @Name [nvarchar](50),    
  @Description [nvarchar](300),  
  @EmailAddress [nvarchar](100), 
  @PhoneNumber [nvarchar](50),  
  @Address [nvarchar](100),   
  @City [nvarchar](100),  
  @State [nvarchar](50),  
  @PostalCode [nvarchar](20),  
  @Notes [nvarchar](max),  
  @Disabled [bit]  ,

  @Created [datetime],
  @CreatedBy [nvarchar](50), 
  @Modified [datetime],
  @ModifiedBy [nvarchar](50) 
 )  
AS  
SET NOCOUNT ON  
BEGIN  
 DECLARE @NewID uniqueidentifier = NEWID()  
 INSERT INTO [dbo].[Employee]  
 (  
  [Id], [Name], [Description], [EmailAddress], [PhoneNumber], [Address], [City], [State], [PostalCode], [Notes], [Disabled]  ,[Created], [CreatedBy], [Modified], [ModifiedBy]
 )  
 VALUES  
 (  
  @NewID,  
  @Name,  
  @Description,    
  @EmailAddress, 
  @PhoneNumber,  
  @Address,   
  @City,  
  @State,  
  @PostalCode,   
  @Notes,  
  @Disabled,
  @Created,
  @CreatedBy,
  @Modified,
  @ModifiedBy
 )   
 SELECT @NewID  
END  
GO
/****** Object:  StoredProcedure [dbo].[UpdateEmployee]    Script Date: 07/06/2021 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Author: Jithin Sunny
-- Date: 07/06/2021
-- Purpose: To update an employee using their ID

CREATE PROCEDURE [dbo].[UpdateEmployee]  
 (  
  @Id [uniqueidentifier],
  @Name  [nvarchar](50),    
  @Description [nvarchar](300),  
  @EmailAddress [nvarchar](100), 
  @PhoneNumber [nvarchar](50),  
  @Address [nvarchar](100),   
  @City  [nvarchar](100),  
  @State  [nvarchar](50),  
  @PostalCode [nvarchar](20),    
  @Notes  [nvarchar](max),  
  @Disabled [bit] ,  
  
  @Created [datetime],  
  @CreatedBy [nvarchar](50),   
  @Modified [datetime],  
  @ModifiedBy [nvarchar](50)  
 )  
AS  
SET NOCOUNT ON  
BEGIN  


 UPDATE [dbo].[Employee]  
  SET [Name] = @Name, [Description] = @Description, [EmailAddress] = @EmailAddress, [PhoneNumber] = @PhoneNumber, [Address] = @Address, [City] = @City, [State] = @State, [PostalCode] = 
@PostalCode, [Notes] = @Notes, [Disabled] = @Disabled, Modified = @Modified, ModifiedBy =  @ModifiedBy
  
  WHERE [Id] = @Id 



  
  
END  
GO
