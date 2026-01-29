
Descrição :  Tabela Fato_Vendas 
  
CREATE TABLE FATO_Vendas (
    VendaID INT IDENTITY(1,1) PRIMARY KEY,

    ClienteID INT NOT NULL,
    ProdutoID INT NOT NULL,

    DataVenda DATE NOT NULL,
    Quantidade INT NOT NULL,
    ValorTotal DECIMAL(10,2) NOT NULL,

    CONSTRAINT FK_Vendas_Cliente
        FOREIGN KEY (ClienteID)
        REFERENCES DIM_Cliente(ClienteID),

    CONSTRAINT FK_Vendas_Produto
        FOREIGN KEY (ProdutoID)
        REFERENCES DIM_Produto(ProdutoID)
);
