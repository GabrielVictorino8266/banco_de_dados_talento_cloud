/*
De acordo com os comandos aprendidos, programe códigos SQL para criar um banco de dados chamado 
ESCOLA e deixe-o pronto para o uso. Depois, pesquise qual é o comando utilizado 
para inserir uma tabela no banco de dados e siga as instruções:

1. crie uma tabela chamada ALUNO;  
2. defina os atributos da tabela;
3. adicione a chave primária de nome ID (identificador);
4. adicione um atributo nome do tipo varchar;
5. adicione um atributo e-mail do tipo varchar;
6. adicione um atributo endereço do tipo varchar.

Trabalhe esse código em seu IDE, suba ele para sua conta
no GitHub e compartilhe o link desse projeto no campo ao
lado para que outros desenvolvedores possam analisá-lo. 
*/


/*Criacao da Tabela*/
CREATE TABLE if not EXISTS aluno(
	id_aluno SERIAL PRIMARY KEY,
  	nome_aluno VARCHAR(40) not NULL,
  	matricula_aluno INT NOT NULL UNIQUE,
  	email_aluno VARCHAR(30),
  	endereco_aluno VARCHAR(50) NOT NULL,
  	telefone VARCHAR(19) NOT NULL
);

CREATE TABLE if not EXISTS emprestimo(
	cod_emprestimo SERIAL PRIMARY KEY,
  	data_hora_emprestimo DATE NOT NULL,
  	matricula_aluno INT NOT NULL,
  	data_devolucao_emprestimo DATE NOT NULL,
  	FOREIGN KEY (matricula_aluno) REFERENCES aluno (matricula_aluno)
);

CREATE TABLE if not EXISTS livro_emprestimo(
	cod_livro SERIAL PRIMARY KEY, 
  	cod_emprestimo INT NOT NULL,
  	FOREIGN KEY (cod_emprestimo) REFERENCES emprestimo (cod_emprestimo)
);

CREATE TABLE if not EXISTS sessao(
	cod_sessao SERIAL PRIMARY KEY,
  	descricao_sessao VARCHAR(50),
  	localizacao_sessao VARCHAR(50) NOT NULL
);

CREATE TABLE if not EXISTS livro(
	cod_livro SERIAL PRIMARY KEY,
  	titulo_livro VARCHAR(50) NOT NULL,
  	autor_livro VARCHAR(50) NOT NULL,
  	cod_sessao INT NOT NULL,
  	FOREIGN KEY (cod_sessao) REFERENCES sessao (cod_sessao)
);