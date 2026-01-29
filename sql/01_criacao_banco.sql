CREATE TABLE dbo.Clientes (
    ClienteID INT IDENTITY(1,1) PRIMARY KEY,
    NomeCliente VARCHAR(100) NOT NULL,
    Segmento VARCHAR(50) NOT NULL
);
GO

CREATE TABLE dbo.Produtos (
    ProdutoID INT IDENTITY(1,1) PRIMARY KEY,
    NomeProduto VARCHAR(100) NOT NULL,
    Categoria VARCHAR(50) NOT NULL,
    PrecoUnitario DECIMAL(10,2) NOT NULL
);
GO

CREATE TABLE dbo.Vendedores (
    VendedorID INT IDENTITY(1,1) PRIMARY KEY,
    NomeVendedor VARCHAR(100) NOT NULL,
    CanalVenda VARCHAR(50) NOT NULL
);
GO

CREATE TABLE dbo.Regioes (
    RegiaoID INT IDENTITY(1,1) PRIMARY KEY,
    NomeRegiao VARCHAR(50) NOT NULL,
    Estado CHAR(2) NOT NULL
);
GO

CREATE TABLE dbo.Vendas (
    VendaID INT IDENTITY(1,1) PRIMARY KEY,
    DataVenda DATE NOT NULL,
    ClienteID INT NOT NULL,
    ProdutoID INT NOT NULL,
    VendedorID INT NOT NULL,
    RegiaoID INT NOT NULL,
    Quantidade INT NOT NULL,
    ValorTotal DECIMAL(10,2) NOT NULL,

    CONSTRAINT FK_Vendas_Clientes 
        FOREIGN KEY (ClienteID) REFERENCES dbo.Clientes(ClienteID),

    CONSTRAINT FK_Vendas_Produtos 
        FOREIGN KEY (ProdutoID) REFERENCES dbo.Produtos(ProdutoID),

    CONSTRAINT FK_Vendas_Vendedores 
        FOREIGN KEY (VendedorID) REFERENCES dbo.Vendedores(VendedorID),

    CONSTRAINT FK_Vendas_Regioes 
        FOREIGN KEY (RegiaoID) REFERENCES dbo.Regioes(RegiaoID)
);
GO
