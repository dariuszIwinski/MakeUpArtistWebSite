CREATE TABLE [dbo].[Post]
(
	[PostID] INT NOT NULL PRIMARY KEY IDENTITY, 
    [PostTitle] NCHAR(200) NOT NULL, 
    [PostDate] DATETIME NOT NULL, 
    [PostDeleted] BIT NOT NULL, 
    [PostOwner] NVARCHAR(40) NOT NULL, 
    [PostBody] NVARCHAR(MAX) NOT NULL
)
