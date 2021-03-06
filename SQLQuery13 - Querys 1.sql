/****** Script do comando SelectTopNRows de SSMS  ******/
SELECT TOP (1000) [ID_LOJA]
      ,[ID_PARCEIRO]
      ,[ID_CAMPANHA]
      ,[NOME_LOJA]
      ,[VIVISEL]
      ,[STATUS_LOJA]
  FROM [Vertem].[dbo].[TB_LOJA]

  ALTER TABLE [TB_LOJA] ( 
	VIVISEL BIT,
	NOME_LOJA   NVARCHAR(30),
	STATUS_LOJA NVARCHAR(30),
	ID_LOJA INT IDENTITY (1,1) PRIMARY KEY,
	ID_PARCEIRO INT FOREIGN KEY REFERENCES TB_PARCEIRO (ID_PARCEIRO),
	ID_CAMPANHA INT FOREIGN KEY REFERENCES TB_CAMPANHA (ID_CAMPANHA),
);
