CREATE TABLE dim_cliente (
    id_cliente INT IDENTITY(1,1) PRIMARY KEY,
    nome_cliente VARCHAR(100),
    cidade VARCHAR(50),
    estado CHAR(2),
    segmento VARCHAR(50)
);

CREATE TABLE dim_produto (
    id_produto INT IDENTITY(1,1) PRIMARY KEY,
    nome_produto VARCHAR(100),
    categoria VARCHAR(50)
);

CREATE TABLE dim_vendedor (
    id_vendedor INT IDENTITY(1,1) PRIMARY KEY,
    nome_vendedor VARCHAR(100),
    regional VARCHAR(50)
);

CREATE TABLE dim_tempo (
    id_tempo INT IDENTITY(1,1) PRIMARY KEY,
    data DATE,
    ano INT,
    mes INT,
    nome_mes VARCHAR(20)
);
