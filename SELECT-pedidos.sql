SELECT 
	pedido.id,
	pedido.id_pedido,
	produto.nome,
	produto.peso,
	usuario.nome,
	endereco.end_linha_1 AS endereco, 
	endereco.end_linha_2 as bairro,
	endereco.cidade,
	endereco.cep,
	endereco.pais,
	endereco.estado,
	usuario.telefone,
	usuario.email,
	produto.preco,
	status.status
FROM ws_Pedido AS pedido
JOIN ws_Produto as produto on produto.id = pedido.id_produto
JOIN ws_Usuario as usuario on usuario.id = pedido.id_usuario
JOIN ws_Endereco as endereco on endereco.id_usuario = usuario.id
JOIN ws_Status as status on status.id = pedido.id_status