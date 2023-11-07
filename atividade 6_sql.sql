CREATE TABLE aluno(
	id_aluno SERIAL PRIMARY KEY,
  	nome_aluno VARCHAR(40) not NULL,
  	email_aluno VARCHAR(30),
  	endereco_aluno VARCHAR(50) NOT NULL
)

INSERT INTO aluno
(id_aluno, nome_aluno, email_aluno, endereco_aluno)
VALUES
(1, 'Gabriel', 'gabriel@gmail.com', 'Rua Lemense, 123 - Taquari Ponte / Leme-SP')


SELECT * FROM ALUNO;