CREATE DATABASE DB_FINANCAS;
USE DB_FINANCAS;
CREATE TABLE TB_USUARIO(
	CD_USUARIO INT AUTO_INCREMENT PRIMARY KEY,
    NM_USUARIO VARCHAR(50) UNIQUE,
    DS_LOGIN VARCHAR(30) UNIQUE,
    DS_SENHA VARCHAR(30)
);
INSERT INTO TB_USUARIO VALUES(NULL, 'admin', 'test@test.com', 'admin');
CREATE TABLE TB_CATEGORIA(
	CD_CATEGORIA INT AUTO_INCREMENT PRIMARY KEY,
    NM_CATEGORIA VARCHAR(50)
);
CREATE TABLE TB_FORMA(
	CD_FORMA INT AUTO_INCREMENT PRIMARY KEY,
    DS_FORMA VARCHAR(20)
);
CREATE TABLE TB_TRANSACAO(
	CD_TRANSACAO INT AUTO_INCREMENT PRIMARY KEY,
    DS_TRANSACAO VARCHAR(255),
    VL_TRANSACAO INT,
    DT_TRANSACAO DATE,
    ST_TRANSACAO BOOLEAN,
    ID_FORMA INT,
    ID_CATEGORIA INT,
    ID_USUARIO INT
);
ALTER TABLE TB_TRANSACAO ADD
    FOREIGN KEY (ID_USUARIO)
    REFERENCES TB_USUARIO(CD_USUARIO);
ALTER TABLE TB_TRANSACAO ADD
    FOREIGN KEY (ID_CATEGORIA)
    REFERENCES TB_CATEGORIA(CD_CATEGORIA);
ALTER TABLE TB_TRANSACAO ADD
    FOREIGN KEY (ID_FORMA)
    REFERENCES TB_FORMA(CD_FORMA);

INSERT INTO TB_CATEGORIA VALUES
(NULL, 'Saúde');
INSERT INTO TB_CATEGORIA VALUES
(NULL, 'Lazer');
INSERT INTO TB_CATEGORIA VALUES
(NULL, 'Moradia');
INSERT INTO TB_CATEGORIA VALUES
(NULL, 'Escola');
INSERT INTO TB_CATEGORIA VALUES
(NULL, 'Transporte');
INSERT INTO TB_CATEGORIA VALUES
(NULL, 'Alimentação');
INSERT INTO TB_CATEGORIA VALUES
(NULL, 'Shopping');

INSERT INTO TB_FORMA VALUES
(NULL, 'Dinheiro');
INSERT INTO TB_FORMA VALUES
(NULL, 'Crédito');
INSERT INTO TB_FORMA VALUES
(NULL, 'Débito');
INSERT INTO TB_FORMA VALUES
(NULL, 'Cheque');