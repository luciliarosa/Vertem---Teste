/****** Script do comando SelectTopNRows de SSMS  ******/
SELECT TOP (1000) [ID_PRODUTO]
      ,[ID_PARCEIRO]
      ,[STATUS_PRODUTO]
      ,[PRICO_DE]
      ,[PRECO_POR]
      ,[NOME_PRODUTO]
  FROM [Vertem].[dbo].[TB_PRODUTO]

SELECT *
FROM [Vertem].[dbo].[TB_PRODUTO]
WHERE PRICO_DE > PRECO_POR
ORDER BY PRECO_POR DESC;
