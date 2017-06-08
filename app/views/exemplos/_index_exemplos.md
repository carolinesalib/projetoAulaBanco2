### Inserir novo endereço

<pre><code>INSERT INTO "enderecos" ("logradouro", "cep", "bairro_id", "created_at", "updated_at")
VALUES ('Rua 1', '88810200', 1, NOW(), NOW());
</code></pre>

### Inserir novo usuário

<pre><code>INSERT INTO "usuarios" ("nome", "cpf", "telefone", "email", "data_nascimento", "login", "senha", "admin", "created_at", "updated_at")
VALUES ('Augusto',
        '99999999999',
        '34432233',
        'augusto@gmail.com',
        '2017-06-08',
        'augusto',
        '123',
        false,
        NOW(),
        NOW());</code></pre>

### Criar tabela

<pre><code>CREATE TABLE pais
(
  id serial NOT NULL,
  nome character varying,
  created_at timestamp without time zone NOT NULL,
  updated_at timestamp without time zone NOT NULL,
  CONSTRAINT pais_pkey PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE pais
  OWNER TO postgres;</code></pre>

### Consulta com várias informações

<pre><code>
SELECT posts.titulo,
       posts.descricao,
       pets.nome,
       pets.porte,
       enderecos.logradouro AS rua,
       bairros.nome AS bairro,
       cidades.nome AS cidade,
       usuarios.nome AS usuario
  FROM posts
 INNER JOIN localizacaos ON (localizacaos.id = posts.localizacao_id)
 INNER JOIN enderecos ON (enderecos.id = localizacaos.endereco_id)
 INNER JOIN bairros ON (bairros.id = enderecos.bairro_id)
 INNER JOIN cidades ON (cidades.id = bairros.cidade_id)
 INNER JOIN usuarios ON (usuarios.id = posts.usuario_id)
 INNER JOIN pets ON (pets.id = posts.pet_id)
 WHERE UPPER(cidadeS.nome) LIKE 'CRICIÚMA';</code></pre>
