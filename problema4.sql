-- TABLE
CREATE TABLE Cliente (
    ID INT PRIMARY KEY,
    Nome VARCHAR(255) NOT NULL,
    Estado INT,
    FOREIGN KEY (Estado) REFERENCES Estado(ID)
);
CREATE TABLE Cliente_Telefones (
    ID_Cliente INT,
    ID_Telefone INT,
    PRIMARY KEY (ID_Cliente, ID_Telefone),
    FOREIGN KEY (ID_Cliente) REFERENCES Cliente(ID),
    FOREIGN KEY (ID_Telefone) REFERENCES Telefone(ID)
);
CREATE TABLE Estado (
    ID INT PRIMARY KEY,
    Nome VARCHAR(255) NOT NULL,
    Sigla CHAR(2) NOT NULL
);
CREATE TABLE Telefone (
    ID INT PRIMARY KEY,
    Tipo INT,
    Numero VARCHAR(20) NOT NULL,
    FOREIGN KEY (Tipo) REFERENCES TipoTelefone(ID)
);
CREATE TABLE TipoTelefone (
    ID INT PRIMARY KEY,
    NomeTipo VARCHAR(50) NOT NULL
);

-- SELECT
SELECT 
    Cliente.ID AS CodigoCliente,
    Cliente.Nome AS RazaoSocial,
    Telefone.Numero AS Telefone
FROM 
    Cliente
JOIN 
    Estado ON Cliente.Estado = Estado.ID
JOIN 
    Cliente_Telefones ON Cliente.ID = Cliente_Telefones.ID_Cliente
JOIN 
    Telefone ON Cliente_Telefones.ID_Telefone = Telefone.ID
WHERE 
    Estado.Sigla = 'SP';

 

 
