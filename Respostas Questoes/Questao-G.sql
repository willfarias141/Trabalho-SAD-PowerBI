
/*  g)	Qual o horário em que há maior venda de ingressos?  */

SELECT
   count(*) AS Qtd_Ingressos_Vendidos
  ,dim_tem.tempo AS Horario
FROM
   Fat_Ingressos fat_ing join Dim_Tempo dim_tem on (fat_ing.Tim_Sessao_IdDw = dim_tem.id_dim_time)
GROUP BY
   dim_tem.tempo
ORDER BY
   1 DESC