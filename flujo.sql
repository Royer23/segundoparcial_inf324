
CREATE TABLE flujo (
  Flujo varchar(2) ,
  proceso varchar(2) ,
  tipop varchar(1) ,
  codrol varchar(1) ,
  sigproc varchar(2),
  form varchar(55) 
) 
CREATE TABLE condic (
  proceso varchar(2) ,
  si varchar(2) ,
  no varchar(2) 
) 

CREATE TABLE seguimiento (
  nro int ,
  usuario varchar(55) ,
  flujo varchar(2) ,
  proceso varchar(2) ,
  tini datetime,
  tfin datetime ,
  PRIMARY KEY(`nro`)
) 
CREATE TABLE usuario (
  ci varchar(55) ,
  pass varchar(55) ,
  rol varchar(1) 
) 

CREATE TABLE estudiante (
  ci varchar(55) ,
  nom varchar(55) ,
  pat varchar(55) ,
  mat varchar(55) ,
  telf int,
  dir varchar(55) ,
  foto blob,
  fotodipl blob,
  fotocertapr blob,
  fotocertnac blob,
  grupohorario varchar(1),
  inscrito varchar(2),
  nroseg int,
  correo varchar(55)
) 

INSERT INTO `flujo` (`Flujo`, `proceso`, `tipop`, `codrol`, `sigproc`, `form`) VALUES ('F1', 'P1', 'I', 'E', 'P2', 'inicio');
INSERT INTO `flujo` (`Flujo`, `proceso`, `tipop`, `codrol`, `sigproc`, `form`) VALUES ('F1', 'P2', 'P', 'E', 'P3', 'datosper');
INSERT INTO `flujo` (`Flujo`, `proceso`, `tipop`, `codrol`, `sigproc`, `form`) VALUES ('F1', 'P3', 'P', 'E', 'P4', 'subirdoc');
INSERT INTO `flujo` (`Flujo`, `proceso`, `tipop`, `codrol`, `sigproc`, `form`) VALUES ('F1', 'P4', 'C', 'K', '', 'condic');
INSERT INTO `flujo` (`Flujo`, `proceso`, `tipop`, `codrol`, `sigproc`, `form`) VALUES ('F1', 'P5', 'P', 'K', 'P7', 'asignarhor');
INSERT INTO `flujo` (`Flujo`, `proceso`, `tipop`, `codrol`, `sigproc`, `form`) VALUES ('F1', 'P6', 'P', 'E', 'P8', 'notifEst');
INSERT INTO `flujo` (`Flujo`, `proceso`, `tipop`, `codrol`, `sigproc`, `form`) VALUES ('F1', 'P7', 'P', 'E', 'FI', 'notificar');
INSERT INTO `flujo` (`Flujo`, `proceso`, `tipop`, `codrol`, `sigproc`, `form`) VALUES ('F1', 'P8', 'P', 'E', 'P1', 'verobs');


INSERT INTO `condic` (`proceso`, `si`, `no`) VALUES ('P4', 'P5', 'P6');


INSERT INTO `usuario` (`ci`, `pass`, `rol`) VALUES ('111', '111', 'E');
INSERT INTO `usuario` (`ci`, `pass`, `rol`) VALUES('222', '222', 'K');
