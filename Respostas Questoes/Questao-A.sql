/* a) Qual o número de clientes assistiram determinado filme? Por cinema?*/
SELECT 
    dim_cin.Cin_Nome AS Cinema
    ,COUNT(dim_cli.Cli_Nome) AS Qtd_Clientes
	FROM Fat_Ingressos ing
            inner join Dim_Cliente dim_cli ON(ing.Cli_IdDw = dim_cli.Cli_IdDw)
		    inner join Dim_Cinema dim_cin ON(ing.Cin_IdDw = dim_cin.Cin_IdDw)
GROUP BY dim_cin.Cin_Nome