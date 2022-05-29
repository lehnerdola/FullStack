USE catalogoFilmesDB;
show tables;

-- carga inicial usuario admin
 
INSERT INTO tb_usuario (nm_usuario, ds_email, ds_senha)
		VALUES ('admin', 'admin@admin.com.br', '1234');
        
        
-- caso de uso 1: efetuar login
select id_usuario id,
	   nm_usuario nome,
       ds_email email
  from tb_usuario
  where ds_email  = 'admin@admin.com.br'
  and ds_senha = '1234';
  
  -- caso de uso 2: cadastrar novo filme
  
  INSERT INTO tb_filme (id_usuario, nm_filme, ds_sinopse,vl_avaliacao, dt_lancamento, bt_disponivel, img_filme)
  VALUES(1, 'Homem-Aranha 3','O melhor filme do miranha!!', 10.0, '2007-05-04', true,'/storage/filmes/5161685.jpg');
  
  -- caso de uso 3: altera filmes  
  UPDATE tb_filme
	SET nm_filme      = 'Homem-Aranha 3',
		ds_sinopse    = 'O melhor e maior filme do miranha!!',
        vl_avaliacao  = 10.0,
        dt_lancamento = '2007-05-04',
        bt_disponivel = true,
        img_filme     =   '/storage/filmes/5161685.jpg'
 WHERE id_filme = 1;  
 
 -- caso de uso 4: remove um filme
 DELETE FROM tb_filme
		WHERE id_filme = 1;
        
-- caso de uso 5: consulta os filmes
SELECT id_filme id, 
	nm_filme		nome,	
    vl_avaliacao 	avaliacao,
    dt_lancamento 	lancamento, 
    bt_disponivel 	disponivel
FROM tb_filme;    

-- caso de uso 6: consulta filmes por nome
SELECT id_filme 		id,
	   nm_filme 		nome,
       vl_avaliacao 	avaliacao,
       dt_lancamento 	lancamento,
       bt_disponivel 	disponivel
FROM tb_filme
WHERE nm_filme like '%a%';   

-- caso de uso 7: consulta filmes por id
SELECT id_filme 		id,
	   nm_filme 		nome,
       vl_avaliacao 	avaliacao,
       ds_sinopse 		sinopse,
       dt_lancamento 	lancamento,
       bt_disponivel 	disponivel,
       img_filme        capa
FROM tb_filme
WHERE id_filme = 1;  