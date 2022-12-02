-- Aqui você deve colocar os códigos SQL referentes às
-- Seleções de dados

-- 1)
 SELECT pedidos.id, pedidos.status, pedidos.cliente_id, produtos.id, produtos.nome, produtos.tipo, produtos.preço, produtos.pts_de_lealdade
 FROM produtos_pedidos
 INNER JOIN produtos ON produtos_pedidos.produto_id = produtos.id
 INNER JOIN pedidos  ON produtos_pedidos.pedido_id = pedidos.id
 INNER JOIN clientes ON pedidos.cliente_id = clientes.id;
 
-- 2)
 SELECT pedidos.id
 FROM produtos_pedidos
 INNER JOIN produtos ON produtos_pedidos.produto_id = produtos.id
 INNER JOIN pedidos  ON produtos_pedidos.pedido_id = pedidos.id
 INNER JOIN clientes ON pedidos.cliente_id = clientes.id
 WHERE produtos.nome = 'Fritas';
-- 3)
 SELECT clientes.nome AS gostam_de_fritas
 FROM produtos_pedidos
 INNER JOIN produtos ON produtos_pedidos.produto_id = produtos.id
 INNER JOIN pedidos  ON produtos_pedidos.pedido_id = pedidos.id
 INNER JOIN clientes ON pedidos.cliente_id = clientes.id
 WHERE produtos.nome = 'Fritas';
 ;
-- 4)
 SELECT sum(produtos.preço) AS total_laura
 FROM produtos_pedidos
 INNER JOIN produtos ON produtos_pedidos.produto_id = produtos.id
 INNER JOIN pedidos  ON produtos_pedidos.pedido_id = pedidos.id
 INNER JOIN clientes ON pedidos.cliente_id = clientes.id
 WHERE clientes.nome = 'Laura';
-- 5)
 SELECT produtos.nome, count(produtos_pedidos.produto_id)
 FROM produtos_pedidos
 INNER JOIN produtos ON produtos_pedidos.produto_id = produtos.id
 INNER JOIN pedidos  ON produtos_pedidos.pedido_id = pedidos.id
 INNER JOIN clientes ON pedidos.cliente_id = clientes.id
GROUP BY produtos.nome;