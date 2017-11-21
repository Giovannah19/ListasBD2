create database pratica5;
create table dados_multimidia (
codigo int auto_increment not null,
nome varchar(30), 
tipo varchar (20),
dados longblob,
primary key (codigo)
);

show variables like "secure_file_priv";

insert into dados_multimidia (nome, tipo, dados) values ( 'flores-3', 'jpg', load_file("C:\\ProgramData\\MySQL\\MySQL Server 5.7\\Uploads\\flores-3.jpg"));
insert into dados_multimidia (nome, tipo, dados) values ( 'voley', 'jpg', load_file("C:\\ProgramData\\MySQL\\MySQL Server 5.7\\Uploads\\voley.jpg"));

select * from dados_multimidia;

select dados into outfile 'C:\\ProgramData\\MySQL\\MySQL Server 5.7\\Uploads\\gio.jpeg' 
from dados_multimidia 
where codigo = 5;