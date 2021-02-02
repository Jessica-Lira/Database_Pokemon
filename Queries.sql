/* 1 - Liste a quantidade de Pokemons por nivel */
SELECT
nivel AS Nível, COUNT(*) as Quantidade  FROM pokemon
GROUP BY nivel ORDER BY nivel;

/* 2 - Liste o id do treinador, sua idade, seu nome, alÃ©m do id e do nome
dos Pokemons sob responsabilidade do treinador. */
select idtreinador as ID_Treinador, 
idade as Idade, treinador.nome as Nome, 
idpokemon as ID_Pokemon, pokemon.nome as Pokemon 
from treinador
join  possui_pokemon on
idtreinador = FK_TREINADOR_IDTREINADOR
join pokemon on
FK_POKEMON_IDPOKEMON = IDPOKEMON;

/* 3 - Liste a quantidade de enfermeiras alocadas em cada Centro Pokemon. */
SELECT
emprega.fk_centro_pokemon_idcentro as ID_Centro_Pokemon,
centro_pokemon.ENDERECO as Centro_Pokemon,
COUNT(*) as Qtd_Enfermeiras
FROM emprega
JOIN centro_pokemon ON
idcentro = fk_centro_pokemon_idcentro
GROUP BY emprega.fk_centro_pokemon_idcentro;

/* 4 - Liste o id e o nome de cada Pokemon que tenha dado entrada no
Centro Pokemon, bem como o nÃºmero de dias de tratamento. */
SELECT fk_pokemon_idpokemon as ID_Pokemon, 
(select pokemon.nome from pokemon where pokemon.idpokemon = fk_pokemon_idpokemon) as Pokemon, 
DATEDIFF (dt_saida, dt_entrada) as Dias_de_Tratamento FROM tratamento;

/* 5 - Liste o id e o nome do treinador mais velho. */
select idtreinador as ID_Treinador, nome as Nome from treinador
where idade = (select max(idade) from treinador);

/*6 - selecionar técnincas que tenham força acima de 100,mostre ID ,força e nome das técnicas */
SELECT FORCA,NOME_TECNICA,ID_TECNICA FROM tecnicas
WHERE FORCA >= 100;
select * from pokemon;

/*7 - liste os nomes dos tecnicas que começam começam com S,velocidade maior que 1 e ordene pela velocidade */
SELECT * FROM TECNICAS
WHERE NOME_TECNICA LIKE 'S%'
having velocidade > 1
order by velocidade;

/*8 - Liste os treinadores que são líderes de ginásio, seus nomes  e títulos */
SELECT treinador.NOME ,FK_TREINADOR_IDTREINADOR as ID_Treinador,TITULO   FROM LIDER_DE_GINASIO
JOIN TREINADOR
ON IDTREINADOR = FK_TREINADOR_IDTREINADOR;

/*9 - Mostrar os pokemons que estão registrados na Pokedex de ID= 1 e a data de seu registro  */
select pokemon.NOME,FK_POKEDEX_SERIAL_NUMBER AS ID_Pokedex, DATAREGISTRO_POKEMON from registro_pokemon
join pokemon 
on FK_POKEMON_IDPOKEMON =IDPOKEMON
where FK_POKEDEX_SERIAL_NUMBER = 1;

/*10 - Quais sãos os tipos de pokemons selvagens(sem treinador) e  quantos tem de cada tipo  */
select TIPO, COUNT(*) from pokemon 
where IDPOKEMON NOT IN (SELECT FK_POKEMON_IDPOKEMON as IDPOKEMON FROM POSSUI_POKEMON)
group by pokemon.TIPO;