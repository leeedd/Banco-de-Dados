INSERT INTO UF (nome) VALUES ('RS');

select * from uf;

update uf set nome = 'SC' where id = 1;

delete from uf where id = 1;

insert into cidade (uf_id, nome) values (2, 'Maringá')

select * from cidade

select * from cidade inner join uf on uf.id = cidade.uf_id

insert into cidade (uf_id, nome) values (3, 'JoinVille')

select uf.nome, cidade.nome 
from cidade 
inner join uf on uf.id = cidade.uf_id
order by uf.nome, cidade.nome

