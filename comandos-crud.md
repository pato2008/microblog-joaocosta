# Comando SQL para operaçoes de dados (CRUD)

## resumo

C: CREATE (INSERT) -> usado para Inserir dados
R: SELECT (SELECT) -> usado para Inserir dados
U: UPDATE (UPDATE) -> usado para Inserir dados
D: DELETE (DELETE) -> usado para Inserir dados

## Exemplo

### INSERT  na tabela de usuarios


```sql
INSERT INTO usuarios (nome,email,senha,tipo)
VALUES(
    'Joao pedro .C. silva',
    'jpcostas557@gmail.com',
    '!@#$%¨&*90',
    'admin'
    );
```
```sql
INSERT INTO usuarios(nome,email,senha,tipo)
VALUES(
'Fulano da silva',
'fulano@gmail,com',
'456',
'editor'
),(
'Beltrano Soares',
'Beltrano@sn.com',
'000penha',
'admin'
),(
'Chapolin Colorado',
'chapolin@vingadores.com.br',
'mareta',
'editor'
);
```
```sql
### SELECT na tebela de usuario

SELECT * FROM usuarios;

SELECT nome,email FROM usuarios;

SELECT nome,email FROM usuarios WHERE tipo = 'adiimin';
```
```sql
### UPDATE  em dados da tebela de usuario

UPDATE usuarios SET ='admin'
WHERE id = 4;

DELETE FROM usuarios WHERE id = 6;

-- Obs: NUNCA ESQUEÇA D PASSAR UMA COMDIÇAO PARA O UPDATE! 

### INSERT na tabela de noticias 

INSERT INTO noticias(titulo,resumo,imagem,usuario_id)
VALUES(
'descoberto oxigenio em vênus',
'Recente a sonda XYZ encontrou traços de oxigenio no planeta ',
'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse consectetur commodo vehicula. Vivamus in justo quis neque mollis iaculis. Nam dignissim lacinia augue, eget tempus diam lobortis ultrices. Curabitur aliquet augue facilisis, venenatis turpis nec, aliquet magna. Sed ante ipsum, pellentesque eu posuere in, dictum in est. Nam pellentesque semper justo, sed mollis diam sodales sed. Donec non risus scelerisque, dignissim ipsum id, varius elit. Sed quis tortor id arcu fringilla dignissim. Nam urna mauris, eleifend a tempor sit amet, dignissim suscipit orci. Nullam sit amet nibh varius, consectetur tellus eget, imperdiet dolor. Curabitur justo mauris, consequat non libero ac, commodo condimentum urna. Suspendisse erat nisl, tincidunt nec mi in, finibus vehicula leo. In ornare pellentesque arcu sed auctor...'
'venus.jpg',
1

);
```
```sql
INSERT INTO noticias(titulo ,resumo, texto, imagem, usuario_id)
VALUES(
'Nova versão do VSCode',
'Recentemente o VSCode foi atualisado...',
'A Microsoft trouxe rercursos de Iteligencia Artificial....',
'vscode.png',
4
);

INSERT INTO noticias(titulo ,resumo, texto, imagem, usuario_id)
VALUES(
'Onda de calor no brasil',
'Temperatura no brasil esta chegando e alturas record',
'efeito de aquecimento global estao prejudicando a vida ....',
'sol.png',
1
);
```
### objetivo consulta q mostre a data e o titulo da noticia e o nome do autor desta noticia
#### SELECT COM JOIN (CONSULTA COM JUNÇÃO DE TABELAS)
```sql 
-- Especificamos o nome da coluna junto com o nome da tabela 
SELECT 
noticias.datas,
noticias.titulo,
usuarios.nome,

-- Especificamos quais tabelas serão "juntadas/combinadas"

FROM noticias JOIN usuarios

--Criterio para o JOIN funcionar:
--fazemos uma comparação entre a chave estrangeira (FK)
--com a chave primaria (PK)
ON noticias.usuario_id = usuario.id

--opicional (ordenação/classificaçao pela data)
--DESC indica ordem decresencente (mais recenre vem primeiro)
ORDER BY data DESC;
```









