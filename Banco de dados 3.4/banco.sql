SELECT *
from alunos inner
join cidades on cidades.id = alunos.cidade_id;

SELECT *
from Alunos left join Cidades
on Cidades.id = Alunos.cidades_id
order by Alunos.nome;

select 
A.id as "RA",
A.nome as "nome",
A.data nasc as "Data de nascimento"
from 
Alunos A left join
cidades_id = C.id

where
C.nome like 'Sor%' and 
A.data_nasc > '200'
order by
A.nome;
