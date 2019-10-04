/*
 B) Qual o faturamento da empresa por mês? Por dia? Por ano?
*/

SELECT 
  SUM(ing.Ing_Faturamento)
  ,dim_data.dia
  FROM Fat_Ingressos ing 
             inner join Dim_Data dim_data ON(ing.Dat_IdDw = dim_data.id_dim_data)
GROUP BY dim_data.dia

SELECT 
  SUM(ing.Ing_Faturamento)
  ,dim_data.mes
  FROM Fat_Ingressos ing 
             inner join Dim_Data dim_data ON(ing.Dat_IdDw = dim_data.id_dim_data)
GROUP BY dim_data.mes
  
SELECT 
  SUM(ing.Ing_Faturamento)
  ,dim_data.ano
  FROM Fat_Ingressos ing 
             inner join Dim_Data dim_data ON(ing.Dat_IdDw = dim_data.id_dim_data)
GROUP BY dim_data.ano

