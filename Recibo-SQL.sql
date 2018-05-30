CREATE TABLE pessoa (
  id INTEGER   NOT NULL ,
  nome VARCHAR    ,
  documento INTEGER      ,
PRIMARY KEY(id));




CREATE TABLE uf (
  id INTEGER   NOT NULL ,
  nome VARCHAR(2)   NOT NULL   ,
PRIMARY KEY(id));




CREATE TABLE cidade (
  id INTEGER   NOT NULL ,
  uf_id INTEGER   NOT NULL   ,
PRIMARY KEY(id),
  FOREIGN KEY(uf_id)
    REFERENCES uf(id));


CREATE INDEX IFK_Rel_02 ON cidade (uf_id);


CREATE TABLE recibo (
  id INTEGER   NOT NULL ,
  valor INTEGER    ,
  prestador_fk INTEGER   NOT NULL ,
  emitente_fk INTEGER    ,
  dataemissao DATETIME      ,
PRIMARY KEY(id)    ,
  FOREIGN KEY(emitente_fk)
    REFERENCES pessoa(id),
  FOREIGN KEY(prestador_fk)
    REFERENCES pessoa(id));


CREATE INDEX recibo_FKIndex1 ON recibo (emitente_fk);
CREATE INDEX recibo_FKIndex2 ON recibo (prestador_fk);


CREATE INDEX IFK_emitente ON recibo (emitente_fk);
CREATE INDEX IFK_prestador_fk ON recibo (prestador_fk);


CREATE TABLE endereco (
  id INTEGER   NOT NULL ,
  pessoa_id INTEGER    ,
  tipoLogradouro VARCHAR(10)    ,
  logradouro VARCHAR(10)    ,
  numero  VARCHAR(10)    ,
  complemento VARCHAR(10)    ,
  cep VARCHAR(8)    ,
  tipo INTEGER      ,
PRIMARY KEY(id)  ,
  FOREIGN KEY(pessoa_id)
    REFERENCES pessoa(id),
  FOREIGN KEY(cidade_id)
    REFERENCES cidade(id));


CREATE INDEX endereco_FKIndex1 ON endereco (pessoa_id);


CREATE INDEX IFK_Rel_17 ON endereco (pessoa_id);
CREATE INDEX IFK_Rel_19 ON endereco (cidade_id);



