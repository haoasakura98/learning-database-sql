DROP TABLE IF EXISTS csfloat;
DROP TABLE IF EXISTS inventario;
DROP TABLE IF EXISTS itens;

CREATE TABLE itens(
	itemid INT PRIMARY KEY,
	nome VARCHAR(50),
	preco INT
);

CREATE TABLE inventario (
	userid BIGINT NOT NULL,
	itemid INT NOT NULL,
	PRIMARY KEY (userid, itemid),
	FOREIGN KEY (itemid) references itens(itemid)
);

CREATE TABLE csfloat (
	transacaoid SERIAL PRIMARY KEY,
	itemid INT NOT NULL,
	datacompra TIMESTAMP NOT NULL DEFAULT NOW(),
	origem VARCHAR(20) NOT NULL DEFAULT ('c_csfloat'),
	FOREIGN KEY (itemid) REFERENCES itens(itemid)
);
