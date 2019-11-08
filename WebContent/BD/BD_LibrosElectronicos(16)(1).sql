drop database if exists BD_LibrosElectronicos;

create database BD_LibrosElectronicos;

use BD_LibrosElectronicos;


-- CATALOGOS:
-- -----------------------------------

create table tipoProveedor(
cod_tp char (10) not null primary key,
des_tp varchar (40) not null
);

create table tipoCliente(
cod_tc char (10) not null primary key,
des_tc varchar (40) not null
);

create table tipoDocumento(
cod_td char (2) not null primary key,
des_td varchar (40) not null
);

create table tipoPersona(
cod_pe char(1) not null primary key,
des_pe varchar (40) not null
);

create table tipoRetencion(
cod_re char (4) not null primary key,
des_re varchar (40) not null,
tasa_re int not null,
valor_aplicacion decimal (9,2) not null
);

create table periodoContable(
cod_periodo char (10) not null primary key,
des_periodo varchar (40) not null
);

create table moneda(
cod_mo char (3) not null primary key,
des_mo varchar (40) not null
);

create table condicionPago(
cod_cp char (4) not null primary key,
des_cp varchar (40) not null
);

create table tipoCompra(
cod_com char(1) not null primary key,
des_com varchar (100) not null
);

create table estadoDoc(
cod_estado int not null primary key,
des_estado varchar (250) not null
);






-- TABLAS:
-- -----------------------
create table proveedor(
cod_pe char(2) not null references tipoPersona,
cod_pro char(11) not null primary key,
razonS_pro varchar (100) not null,
direc_pro varchar (250) not null,
tipo_prov char (10) not null,
contacto_prov varchar (100),
telefono_prov varchar (9),
condicionPago char (4) not null,
correo_prov varchar (100),
foreign key (cod_pe) references tipoPersona (cod_pe),
foreign key (tipo_prov) references tipoProveedor (cod_tp),
foreign key (condicionPago) references condicionPago (cod_cp)
);



create table cliente(
cod_pe char(2) not null, -- General
cod_cli char(11) not null primary key, -- Titulo
razonS_cli varchar (100) not null, -- Titulo
direc_cli varchar (250) not null, -- General
tipo_cli char (10) not null, -- General
contacto_cli varchar (100), -- Otros
telefono_cli varchar (9), -- Otros
condicionPago char (4) not null, -- General
correo_cli varchar (100), -- otros
foreign key (cod_pe) references tipoPersona (cod_pe),
foreign key (tipo_cli) references tipoCliente (cod_tc),
foreign key (condicionPago) references condicionPago (cod_cp)
);




create table tipoCambio(
fecha date not null primary key,
TCcompra double(4,3) not null,
TCventa double(4,3) not null
);



create table facturaCompra(
periodo char (10) not null, -- 1
moneda char (3) not null, -- 2
fecha date not null, -- 3 
tipoCambio decimal(4,3) not null, -- 4
tipoDoc char (2) not null, -- 5
serieDoc char (4) not null, -- 6 
numDoc char (8) not null, -- 7
cod_pro char (11) not null, -- 8 
razonS_pro varchar (100) not null, -- 9
valor_venta decimal (9,2), -- 10
valor_inafecto decimal (9,2), -- 11
igv decimal (9,2), -- 12
total decimal (9,2), -- 13 
cod_re char (4), -- 14
des_re varchar (40), -- 15
tasa_re int, -- 16
fecha_re date, -- 17xx
nro_re char (20), -- 18xx
monto_re decimal (9,0), -- 19xxx
glosa_compra varchar (200) not null, -- 20
cod_com char(1) not null, -- 21xxx
cod_estado int not null, -- 22
primary key (cod_pro,serieDoc,numDoc),
foreign key (periodo) references periodoContable (cod_periodo),
foreign key (moneda) references moneda (cod_mo),
foreign key (fecha) references tipoCambio (fecha),
foreign key (tipoDoc) references tipoDocumento (cod_td),
foreign key (cod_pro) references proveedor (cod_pro),
foreign key (cod_re) references tipoRetencion (cod_re),
foreign key (cod_com) references tipoCompra (cod_com),
foreign key (cod_estado) references estadoDoc (cod_estado)
);






create table facturaVenta(
periodo char (10) not null,-- 1
moneda char (3) not null,-- 2
fecha date not null,-- 3
tipoCambio decimal(4,3) not null,-- 4
tipoDoc char (2) not null,-- 5
serieDoc char (4) not null,-- 6
numDoc char (8) not null,-- 7
cod_cli char (11) not null,-- 8
razonS_cli varchar (100) not null,-- 9
valor_venta decimal (9,2),-- 10
valor_inafecto decimal (9,2),-- 11
igv decimal (9,2),-- 12
total decimal (9,2),-- 13
cod_re char (4),-- 14
des_re varchar (40),-- 15
tasa_re int,-- 16
glosa_venta varchar (200) not null,-- 17
cod_estado int not null,-- 18
primary key (cod_cli, serieDoc, numDoc),
foreign key (periodo) references periodoContable (cod_periodo),
foreign key (moneda) references moneda (cod_mo),
foreign key (fecha) references tipoCambio (fecha),
foreign key (tipoDoc) references tipoDocumento (cod_td),
foreign key (cod_cli) references cliente (cod_cli),
foreign key (cod_re) references tipoRetencion (cod_re),
foreign key (cod_estado) references estadoDoc (cod_estado)
);


create table usuarios(
	cod_usu varchar (10) not null primary key,
    clave_usu varchar(10) not null
);


-- Insercion de Datos
-- --------------------------------------------------
insert into periodocontable values ('20171200','Diciembre 2017');
insert into periodocontable values ('20171100','Noviembre 2017');
insert into periodocontable values ('20171000','Octubre 2017');
insert into periodocontable values ('20170900','Setiembre 2017');
insert into periodocontable values ('20170800','Agosto 2017');
insert into periodocontable values ('20170700','Julio 2017');
insert into periodocontable values ('20170600','Junio 2017');
insert into periodocontable values ('20170500','Mayo 2017');
insert into periodocontable values ('20170400','Abril 2017');
insert into periodocontable values ('20170300','Marzo 2017');
insert into periodocontable values ('20170200','Febrero 2017');
insert into periodocontable values ('20170100','Enero 2017');
insert into periodocontable values ('20161200','Diciembre 2016');
insert into periodocontable values ('20161100','Noviembre 2016');
insert into periodocontable values ('20161000','Octubre 2016');
insert into periodocontable values ('20160900','Setiembre 2016');
insert into periodocontable values ('20160800','Agosto 2016');
insert into periodocontable values ('20160700','Julio 2016');
insert into periodocontable values ('20160600','Junio 2016');
insert into periodocontable values ('20160500','Mayo 2016');
insert into periodocontable values ('20160400','Abril 2016');
insert into periodocontable values ('20160300','Marzo 2016');
insert into periodocontable values ('20160200','Febrero 2016');
insert into periodocontable values ('20160100','Enero 2016');



insert into tipoDocumento values ('01','Factura');
insert into tipoDocumento values ('03','Boleta de Venta');
insert into tipoDocumento values ('02','Recibo por Honorarios');
insert into tipoDocumento values ('04','Liquidaciones de compra');
insert into tipoDocumento values ('05','Boletos de transporte Aereo');
insert into tipoDocumento values ('07','Nota de Crédito');
insert into tipoDocumento values ('08','Nota de Débito');
insert into tipoDocumento values ('12','Ticket Emitido por Maquina Registradora');
insert into tipoDocumento values ('13','Docs. del sistema Financiero y seguros');
insert into tipoDocumento values ('14','Recibos de Servicios Públicos');
insert into tipoDocumento values ('15','Boletos de transp. Terrestre');
insert into tipoDocumento values ('46','Boleta de Pagos Varios');
insert into tipoDocumento values ('91','Comprobante de no Domiciliado');

insert into tipoPersona values ('0','Otros tipos de Documentos');
insert into tipoPersona values ('1','Documento Nacional de Identidad');
insert into tipoPersona values ('4','Carnet de Extranjería');
insert into tipoPersona values ('6','Registro Unico de Contribuyentes');
insert into tipoPersona values ('7','Pasaporte');
insert into tipoPersona values ('A','Cedula diplomática de Identidad');

insert into tipoProveedor values('NAC_TE','Proveedor Nacional Tercero');
insert into tipoProveedor values('NAC_RE','Proveedor Nacional Relacionado');
insert into tipoProveedor values('EXT_TE','Proveedor Extranjero Tercero');

insert into tipoCliente values('NAC_TE','Cliente Nacional Tercero');
insert into tipoCliente values('NAC_RE','Cliente Nacional Relacionado');
insert into tipoCliente values('EXT_TE','Cliente Extranjero Tercero');


insert into tipoCompra values('1','Mercaderia, Materia Prima, Suministro, Envases y Embalajes');
insert into tipoCompra values('2','Activo Fijo');
insert into tipoCompra values('3','Otros Activos no considerados en los numerales 1 y 2');
insert into tipoCompra values('4','GASTOS DE EDUCACIÓN, RECREACIÓN, SALUD. REPRESENTACIÓN, CAPACITACIÓN, DE VIAJE, Mnto DE VEHICULO');
insert into tipoCompra values('5','OTROS GASTOS NO INCLUIDOS EN EL NUMERAL 4');

insert into tipoRetencion values('D037','Demas Servicios grabados', 10, 700.00);
insert into tipoRetencion values('D019','Arrendamiento de bienes', 10, 700.00);
insert into tipoRetencion values('D021','Movimiento de Carga', 10, 700.00);
insert into tipoRetencion values('D022','Otros Servicios Gravados', 10, 700.00);
insert into tipoRetencion values('D027','Transporte de bienes', 4, 400.00);
insert into tipoRetencion values('D030','Contratos de Construccion', 4, 700.00);

insert into estadoDoc values (1,'La operacion corresponde al Periodo');
insert into estadoDoc values (6,'La operacion corresponde al Periodo anterior');

insert into moneda values ('SOL','Soles');
insert into moneda values ('DOL','Dolares');

insert into condicionPago values ('F030','Factura a 30 dias');
insert into condicionPago values ('F015','Factura a 15 dias');
insert into condicionPago values ('F007','Factura a 07 dias');
insert into condicionPago values ('F000','Factura al contado');

insert into usuarios values ('Rlopez','Rlopez');
insert into usuarios values ('Avilla','Avilla');
insert into usuarios values ('Jyllac','Jyllac');
insert into usuarios values ('Dhuapa','Dhuapa');
insert into usuarios values ('Admin','Admin');

insert into tipoCambio values ('2017/11/08',3.258,3.252);
insert into tipoCambio values ('2017/11/09',3.250,3.251);
insert into tipoCambio values ('2017/11/10',3.249,3.252);
insert into tipoCambio values ('2017/11/11',3.231,3.237);
insert into tipoCambio values ('2017/11/12',3.332,3.334);
insert into tipoCambio values ('2017/11/13',3.332,3.337);
insert into tipoCambio values ('2017/11/14',3.335,3.339);
insert into tipoCambio values ('2017/11/15',3.332,3.338);
insert into tipoCambio values ('2017/11/16',3.331,3.336);
insert into tipoCambio values ('2017/11/17',3.324,3.332);
insert into tipoCambio values ('2017/11/18',3.323,3.325);
insert into tipoCambio values ('2017/11/19',3.327,3.329);
insert into tipoCambio values ('2017/11/20',3.330,3.333);
insert into tipoCambio values ('2017/11/21',3.325,3.328);
insert into tipoCambio values ('2017/11/22',3.334,3.338);
insert into tipoCambio values ('2017/11/23',3.327,3.331);
insert into tipoCambio values ('2017/11/24',3.323,3.326);
insert into tipoCambio values ('2017/11/25',3.323,3.326);
insert into tipoCambio values ('2017/11/26',3.334,3.341);
insert into tipoCambio values ('2017/11/27',3.335,3.339);
insert into tipoCambio values ('2017/11/28',3.331,3.334);
insert into tipoCambio values ('2017/11/29',3.328,3.332);
insert into tipoCambio values ('2017/11/30',3.332,3.337);
insert into tipoCambio values ('2017/12/01',3.330,3.335);
insert into tipoCambio values ('2017/12/02',3.334,3.340);

insert into cliente values ('6','20514917001','WOLL CORP SAC','CALLE AMADOR MERINO REYNA 295 - SAN ISIDRO','NAC_TE','Moises Woll','616-8001','F015','mwoll@wollcorp.com');
insert into cliente values ('6','20379719440','100PRE FELIZ SOCIEDAD ANONIMA CERRADA','JR. PARURO NRO. 878 (ALT. CALLE CAPON) ','NAC_TE','','','F000','');
insert into cliente values ('6','20566077222','ASOCIACION PERUANA DE PREVENCIONISTAS DE RIESGOS - APDR','AV. PETIT THOUARS NRO. 1785 ','NAC_TE','','','F007','');
insert into cliente values ('6','20508650532','CAFE AERONAUTICO S.A.C.','JR. INDEPENDENCIA NRO. 641 (ALTURA CRDRA 4 AV ANGAMOS OESTE) ','NAC_TE','','','F007','');
insert into cliente values ('6','20559651886','CATERING DEL NORTE S.A.C.','AV. SAN JUAN NRO. 851 OTR. ZONA A (FRENTE A COLEGIO MARISTAS) ','NAC_TE','','','F015','');
insert into cliente values ('6','20127765279','COESTI S.A.','AV. CIRCUNVALACION DEL CLUB G NRO. 134 URB. CLUB EL GOLF LOS INCAS (EDIFICIO PANORAMA TORRE A PISO 18) ','NAC_TE','','','F015','');
insert into cliente values ('6','20392625179','CORPORACION GRAFICA LUZ S.A.C.','AV. BOLIVIA NRO. 148 INT. 168 (C. C. CENTRO LIMA) ','NAC_TE','','','F000','');
insert into cliente values ('6','20135414931','EMPRESA DE TRANSPORTE TURISTICO OLANO S.A.','AV. BAUZATE Y MEZA NRO. 648 ','NAC_TE','','','F030','');
insert into cliente values ('6','20545699550','EP DE RESTAURANTES S.A.C.','CAL. CAMINO REAL 1801 MZA. B LOTE. 17 Z.I. SAN PEDRITO ','NAC_TE','','','F007','');
insert into cliente values ('6','20511978794','GRUPPE AR S.A.C.','AV. UNIVERSITARIA NORTE NRO. 9957 URB. LA ALBORADA (MZ A1 LOTES 4 5 6 Y 7) ','NAC_TE','','','F030','');
insert into cliente values ('6','10434572792','HUAYLLA CCOTOHUANCA PILAR NOHEMI','CAL. TACNA NRO. E1-8 (N103 FRT NOTARIA VILLANUEVA CERCA PLAZA) ','NAC_TE','','','F015','');
insert into cliente values ('6','20132272418','INTERNACIONAL DE TRANSPORTE TURISTICO Y SERVICIOS SRL','AV. TUPAC AMARU NRO. 1198 URB. SANTA LEONOR ','NAC_TE','','','F007','');
insert into cliente values ('6','20486259834','INVERSIONES M.A.S.E. SCRL','JR. PUNO NRO. 296 ','NAC_TE','','','F015','');
insert into cliente values ('6','20502608798','LABORATORIO CLINICO INMUNOLOGICO CANTELLA S.A.C.','AV. JAVIER PRADO OESTE NRO. 805 (ALT DEL CRUCE CON AV JUAN DE ALIAGA) ','NAC_TE','','','F015','');
insert into cliente values ('6','20539946952','MADRE DOLOROSA HOTEL SOCIEDAD ANONIMA CERRADA_MD HOTEL S.A.C.','AV. VICTOR LARCO HERERA NRO. 384 URB. SAN ANDRES 1ERA.ETAPA (COSTADOP BANCO BAN BIF) ','NAC_TE','','','F015','');
insert into cliente values ('6','20450592197','MILAGROS SOCIEDAD COMERCIAL DE RESPONSABILIDAD LIMITADA - MILAGROS S.R.L.','MZA. LL LOTE. 13 URB. LA FLORIDA (LADO CLINICA SAN RAFAEL SRA.FRIDA VASQUZ) ','NAC_TE','','','F007','');
insert into cliente values ('6','20255964985','NONNA ANNA EIRL','JR. FRANCISCO MASIAS NRO. 2698 URB. SAN EUGENIO (ESQ.CON JAZMINES 391 399) ','NAC_TE','','','F000','');
insert into cliente values ('6','20600800656','PRODUCTOS ELECTRICOS MALDONADO E.I.R.L.-PROELMA E.I.R.L.','AV. ARGENTINA NRO. 215 PJE 33, INT BS-12 (C.C. NICOLINI) ','NAC_TE','','','F015','');
insert into cliente values ('6','20100041953','RIMAC SEGUROS Y REASEGUROS','AV. PASEO DE LA REPUBLICA NRO. 3505 URB. LIMATAMBO ','NAC_TE','','','F030','');
insert into cliente values ('6','20510885229','SANGUCHES DEL PERU S.A.C.','AV. DOS DE MAYO NRO. 1002 ','NAC_TE','','','F000','');
insert into cliente values ('6','20548766886','SERVITEC INVERSIONES CHINA - PERU S.A.C.','CAL. OLAVIDE NRO. 205 (ESQUINA CON AVENIDA PETIT THOUARS) ','NAC_TE','','','F015','');
insert into cliente values ('6','20131312955','SUPERINTENDENCIA NACIONAL DE ADUANAS Y DE ADMINISTRACION TRIBUTARIA - SUNAT','AV. GARCILASO DE LA VEGA NRO. 1472 ','NAC_TE','','','F000','');
insert into cliente values ('6','20544889126','TOTAL PERU NEGOCIOS S.A.C.','PJ. MANCO INCA NRO. 436 (PRIMER PISO) ','NAC_TE','','','F030','');
insert into cliente values ('6','10079387687','VARGAS JARA MARIA IRENE','MLC. ALOMIA ROBLES NRO. 629 ','NAC_TE','','','F015','');
insert into cliente values ('6','20254743501','WINYA INTERNATIONAL S.R.L.','AV. FRANCISCO MASIAS NRO. 2706 ','NAC_TE','','','F030','');
insert into cliente values ('6','20526029713','EL NUEVO AJICITO S.R.L. ','MZA. B LOTE. 5 INT. SUB5 URB. LA PROVIDENCIA (FRENTE DE SANTA MARIA DEL PINAR) ','NAC_TE','','','F007','');
insert into cliente values ('6','20292920866','ARUBA INN S.A.','AV. NICOLAS ARRIOLA NRO. 757 ','NAC_TE','','','F000','');
insert into cliente values ('6','20425567935','C Y J CONSTRUCTORES Y CONTRATISTAS S.A.C','CAL. ARICOTA NRO. 106 DPTO. 1001 URB. TAMBO DE MONTERRICO ','NAC_TE','','','F015','');
insert into cliente values ('6','10325444571','CARRASCO VALDIVIEZO MARITZA','MZA. B LOTE. 15 A.H. CONSUELO DE VELASCO (FRENTE AL POZO DE AGUA N 2) ','NAC_TE','','','F000','');
insert into cliente values ('6','20509076945','CINCO MILLAS SAC','AV. SAENZ PEÑA NRO. 203 ','NAC_TE','','','F030','');
insert into cliente values ('6','20473912962','COPIFEL E.I.R.L.','AV. AVIACION NRO. 2436 (A MEDIA CDRA AV JAVIER PRADO) ','NAC_TE','','','F007','');
insert into cliente values ('6','20125379304','EMPRESA DE TRANSPORTE NUESTRA SEñORA DE LA MERCED S.A.C.','AV. 28 DE JULIO NRO. 1581 ','NAC_TE','','','F007','');
insert into cliente values ('6','20450713083','EMPRESA DE TRANSPORTES TURISMO ERRANTES SOCIEDAD COMERCIAL DE RESPONSABILIDAD LIMITADA','JR. JORGE CHAVEZ NRO. S/N URB. TECHO OBRERO (NRO.224 RECTA 10 CASAS PANIFICAD.FLORES) ','NAC_TE','','','F030','');
insert into cliente values ('6','20553604991','GRUPO STR S.A.C.','JR. AREQUIPA NRO. 339 (ENTRE CUSCO Y PUNO) ','NAC_TE','','','F000','');
insert into cliente values ('6','20131006242','HOTEL FLAMINGO S.R.LTDA','AV. ARENALES NRO. 411 ','NAC_TE','','','F007','');
insert into cliente values ('6','20490061364','INTEGRAMEDICA SOCIEDAD COMERCIAL DE RESPONSABILIDAD LIMITADA-INTEG S.R.L','AV. DE LA CULTURA NRO. 1302 URB. CONSTANCIA ','NAC_TE','','','F030','');
insert into cliente values ('6','20502618751','INVERSIONES JOSELYN Y ALVARO EIRL','AV. PERU NRO. 4213 (CRUZE QUILCA-AV.PERU) ','NAC_TE','','','F030','');
insert into cliente values ('6','20454073143','LA POSITIVA VIDA SEGUROS Y REASEGUROS','CAL. SAN FRANCISCO NRO. 301 ','NAC_TE','','','F015','');
insert into cliente values ('6','20301837896','LOS PORTALES S.A','JR. MARISCAL LA MAR NRO. 991 (ESQ.AV. EJERCITO.SALAVERRY PISOS 5, 6, 7) ','NAC_TE','','','F000','');
insert into cliente values ('6','10084697171','MEJIA CRIBILLERO ANGEL HERMES','AV. CENTRAL NRO. 383 URB. SANTA LUISA ','NAC_TE','','','F015','');
insert into cliente values ('6','20539752325','NEGOCIOS GASTRONOMICOS DEL PERU E.I.R.L.','JR. PUNO NRO. 214 CERCADO DE LIMA ','NAC_TE','','','F007','');
insert into cliente values ('6','10065982701','PALOMINO RIVERA NANCY PATRICIA','CAL. JOSE OLAYA NRO. 118 CERCADO (FRENTE A SAGA) ','NAC_TE','','','F000','');
insert into cliente values ('6','20318735175','RESTAURANTE TURISTICO HUANCAHUASI S.R.L.','AV. MARISCAL CASTILLA NRO. 2222 ','NAC_TE','','','F000','');
insert into cliente values ('6','10104044587','SANDOVAL SANDOVAL MARISOL','AV. ARGENTINA NRO. 215 INT. 06 AMIPEN (PABELLON AT-PASAJE 01- TDA 06) ','NAC_TE','','','F030','');
insert into cliente values ('6','20102956291','SERVICIOS, ASESORIA Y TURISMO S.A.C','CAL. JORGE CHAVEZ NRO. 120 URB. MIRAMAR (ESQUINA CDRA. 13 AV. COSTANERA) ','NAC_TE','','','F015','');
insert into cliente values ('6','20389230724','SODIMAC PERU S.A.','AV. ANGAMOS ESTE NRO. 1805 INT. 2 (OFICINA 2) ','NAC_TE','','','F007','');
insert into cliente values ('6','20515911198','TIO MARIO S.A.C.','PJ. ZEPITA NRO. 214 (ESPALDA MUNICIPALIDAD DE BARRANCO) ','NAC_TE','','','F030','');
insert into cliente values ('6','10407147982','UMIYAURI VALER FREDY AYNER','CAL. 22 DE FEBRERO NRO. 221 (A 80 MTS DE IE MIGUEL GRAU PTAPLOMA) ','NAC_TE','','','F000','');
insert into cliente values ('6','15516232312','WANG XIUHUA','AV. RIVERA NAVARRETE NRO. 2625 (A 2CDRAS DE LA AV. JAVIER PRADO) ','NAC_TE','','','F007','');



insert into proveedor values ('6','20101869947','ALERT DEL PERU SA','AV. CAMINO REAL NRO. 1801 INT. A4 Z.I. SAN PEDRITO ','NAC_TE','','','F007','');
insert into proveedor values ('6','20554944796','ALLYKU S.A.C.','AV. LOS ROSALES MZA. B2 LOTE. 11B INT. SUB URB. LOTIZACION LA CAPITANA (ALT. CDRA03 AV. CIRCUNVALACION) ','NAC_TE','','','F007','');
insert into proveedor values ('6','10753680883','ANICAMA MATALLANA MARISOL JASMIN','CAL. PRINCIPAL MZA. M LOTE. 2,5 DPTO. 1158 RES. CAMPOY BLOCK X2 5TO. PISO (A MEDIA CUADRA DE TOTTUS) ','NAC_TE','','','F000','');
insert into proveedor values ('6','10403702477','AVALOS MENDOZA ALFREDO IVAN','NRO. D INT. 1 JORGE CHAVEZ (POR BOLICHERA) ','NAC_TE','','','F015','');
insert into proveedor values ('6','10210904331','AVELLANEDA DE NAVARRO NINFA HAYDEE','JR. CHANCHAMAYO NRO. 250 (A MEDIA CDRA. PJ. SAN JUAN) ','NAC_TE','','','F030','');
insert into proveedor values ('6','20217265917','B.BIOS INTERNATIONAL S.A.C.','CAL. OCTAVIO PAZ NRO. 255 URB. LA CALERA ','NAC_TE','','','F015','');
insert into proveedor values ('6','10249464339','CAMERO DE LIRA LOURDES','MZA. A LOTE. 7 URB. MATEO PUMACCAHUA (FRENTE AL PARQUE MARIANITO FERRO) ','NAC_TE','','','F000','');
insert into proveedor values ('6','15513410317','CAO SHAOLING','CAL. LOS JAZMINES NRO. 398 (A 1 CDRA EDIFICIO LA POSITIVA) ','NAC_TE','','','F007','');
insert into proveedor values ('6','10085610541','CARBAJAL VILCACHAGUA MARIA DORIS','JR. ICA NRO. 4155 URB. PERU (ALT CDRA 41 AV PERU) ','NAC_TE','','','F007','');
insert into proveedor values ('6','10433839639','CELESTINO NONATO JORGE ERICK','MZA. B LOTE. 12 P.J. CALLEJON VILLEGAS (ESPALDA DE CEMENTERIO BAQUIJANO) ','NAC_TE','','','F015','');
insert into proveedor values ('6','10082571570','CHACON ALE LOLO FRANCISCO','JR. SANTA NRO. 137 (2DO PISO-CRUCE CON JR.DE LA UNION) ','NAC_TE','','','F000','');
insert into proveedor values ('6','10444196721','CHOQUEHUAMANI SEGOVIA ADA LUDY','MZA. E LOTE. 12 SECTOR 1, GRUPO 25 ','NAC_TE','','','F000','');
insert into proveedor values ('6','20138086438','COLEGIO DE INGENIEROS DEL PERÚ CONSEJO NACIONAL','AV. AREQUIPA NRO. 4947 URB. MIRAFLORES ','NAC_TE','','','F007','');
insert into proveedor values ('6','20565836961','COMERCIAL WOR S.A.C.','AV. BENAVIDES NRO. 730 ','NAC_TE','','','F000','');
insert into proveedor values ('6','10426543104','CONDOR MATIAS HENRY','JR. LIMA NRO. 830 (NRO 830 - 836) ','NAC_TE','','','F030','');
insert into proveedor values ('6','10210735386','CRUZ MARCELO JOSE ANTONIO','JR. LIMA NRO. 412 (FRENTE BANCO DE CREDITO) ','NAC_TE','','','F030','');
insert into proveedor values ('6','20573095473','DE PURO ASADO E.I.R.L.','JR. 2 DE MAYO NRO. 1475 CENT C.U. HUANUCO (ENTRE JR. PROGRESO Y 2 DE MAYO) ','NAC_TE','','','F030','');
insert into proveedor values ('6','20100123330','DELOSI S.A.','AV. JAVIER PRADO OESTE NRO. 1650 ','NAC_TE','','','F030','');
insert into proveedor values ('6','20527692645','EMPRESA DE TRANSPORTES EVER SOCIEDAD COMERCIAL DE RESPONSABILIDAD LIMITADA','MZA. C LOTE. 22 APV. INDEPENDENCIA (C.RIGOBERTO EZQUERRA PTA AZUL FAM TRELLE) ','NAC_TE','','','F000','');
insert into proveedor values ('6','20416222291','EMPRESA DE TRANSPORTES LOS CANARIOS SRL','AV. GRAU NRO. 491 INT. C (TERMINAL TERRESTRE) ','NAC_TE','','','F007','');
insert into proveedor values ('6','20600163672','EMPRESA DE TRANSPORTES TROME CLASS SOCIEDAD COMERCIAL DE RESPONSABILIDAD LIMITADA','MZA. C LOTE. 22 APV. INDEPENDENCIA (A 2CDRAS DE GRIFO CORIMAYA PUERTA CELEST) ','NAC_TE','','','F015','');
insert into proveedor values ('6','20566370876','FERRECASAS TREBOL E.I.R.L.','AV. ALFREDO MENDIOLA NRO. 1000 URB. PALAO ','NAC_TE','','','F007','');
insert into proveedor values ('6','10239552272','FLORES HUAMAN YOLANDA','AV. HUAYRUROPATA NRO. 1218 (1218-A  INVERSIONES FERRETERA BJP) ','NAC_TE','','','F007','');
insert into proveedor values ('6','20519227437','GENJITSU S.A.C.','CAL. MANUEL GONZALES OLAECHEA NRO. 477 (AV. ARAMBURU Y PASEO DE LA REPUBLICA) ','NAC_TE','','','F000','');
insert into proveedor values ('6','10076216971','GUICH URIBE ROCCO SPENCER','JR. MARISCAL DE LAS HERAS NRO. 255 ','NAC_TE','','','F015','');
insert into proveedor values ('6','10105286461','GUPIOC RAMOS ASUNTA','AV. ANGAMOS NRO. 2594 (FRENTE AL COLISEO DIBOS) ','NAC_TE','','','F000','');
insert into proveedor values ('6','20536557858','HOMECENTERS PERUANOS S.A.','AV. AVIACION NRO. 2405 (PISO 5) ','NAC_TE','','','F000','');
insert into proveedor values ('6','20544653271','IDEA SOLUCIONES ESPACIALES S.A.C.','AV. EL POLO NRO. 231 (URB. LAS FLORES DE MONTERRICO) ','NAC_TE','','','F030','');
insert into proveedor values ('6','10296711999','INCAHUANACO YUCRA MARIA','AV. MRCAL. OSCAR R. BENAVIDES NRO. 4251 URB. TARAPACA ','NAC_TE','','','F015','');
insert into proveedor values ('6','20391062057','INSTITUTO DE SEGURIDAD MINERA','AV. JAVIER PRADO ESTE NRO. 5908 DPTO. 302 (CRUCE CON AV LA MOLINA) ','NAC_TE','','','F015','');
insert into proveedor values ('6','20515479008','INVERSIONES ALBAN SOCIEDAD ANONIMA CERRADA','CAL. RICARDO RIVERA NAVARRETE NRO. 2868 URB. SAN EUGENIO (ALT.AV.JAVIER PRADO ESTE CDRA.5) ','NAC_TE','','','F007','');
insert into proveedor values ('6','20501929621','INVERSIONES ARISTO EIRL','AV. PETIT THOUARS NRO. 2030 ','NAC_TE','','','F030','');
insert into proveedor values ('6','20511414408','INVERSIONES DT 1 S.A.C.','AV. JAVIER PRADO ESTE NRO. 3510 URB. JACARANDA II ','NAC_TE','','','F000','');
insert into proveedor values ('6','20564096700','INVERSIONES TURISTICAS LA TORRE HOTEL SOCIEDAD ANONIMA CERRADA-INVERSIONES TURISTICAS LA TORRE S.A.C','CAL. PRIMAVERA NRO. 403 (ESQ CHIFA AV CONFRATERNIDAD C4P JULIO) ','NAC_TE','','','F000','');
insert into proveedor values ('6','20511024952','JIA WEI INVERSIONES SAC','CAL. JOSE BERNARDO ALCEDO NRO. 214 URB. RISSO (Y 218 /ALT. 20 AV. AREQUIPA) ','NAC_TE','','','F030','');
insert into proveedor values ('6','10107090491','LA MADRID ALVAREZ MANUEL ALEJANDRO','AV. ARENALES NRO. 419 (A 2CDRAS PARQUE DE LAS AGUAS) ','NAC_TE','','','F030','');
insert into proveedor values ('6','20341841357','LAN PERU S.A.','AV. JOSE PARDO NRO. 513 URB. CERCADO DE MIRAFLORES ','NAC_TE','','','F000','');
insert into proveedor values ('6','20388829452','LASINO S.A.','AV. JAVIER PRADO OESTE NRO. 1650 ','NAC_TE','','','F015','');
insert into proveedor values ('6','20208752759','LIBRERIA BAZAR SANTA MARIA EIRL','CAL. REAL NRO. 307 (ENTRE 2 DE MAYO Y 13 DE NOVIEMBRE) ','NAC_TE','','','F015','');
insert into proveedor values ('6','20112273922','MAESTRO PERU SOCIEDAD ANONIMA','JR. SAN LORENZO NRO. 881 ','NAC_TE','','','F030','');
insert into proveedor values ('6','20302680753','MANOS CRIOLLAS S.A.','CAL. NAPO NRO. 088 (OTRA PTA 092-092 SEGUNDO PISO) ','NAC_TE','','','F007','');
insert into proveedor values ('6','10426345311','MATIENZO URBANO NATALIA','AV. ARGENTINA NRO. 344 INT. K55 (CC EL PROGRESO II) ','NAC_TE','','','F000','');
insert into proveedor values ('6','10429526898','MONCADA AZABACHE JUAN CARLOS','JR. GEMINIS NRO. 915 URB. MERCURIO (ALT. MUNICPALIDAD DE LOS OLIVOS) ','NAC_TE','','','F007','');
insert into proveedor values ('6','10102011576','MORALES CHUQUI YUDER CESAR','JR. HUAROCHIRI NRO. CDR4 INT. BN7 (PSJE.40 C.C.NICOLINI) ','NAC_TE','','','F000','');
insert into proveedor values ('6','20555901179','MOVIL BUS S.A.C','AV. MATERIALES NRO. 2215 ','NAC_TE','','','F000','');
insert into proveedor values ('6','20568332939','OBREGON IMPRESORES S.A.C.','JR. AREQUIPA NRO. 343 (ENTRE PUNO Y CUZCO) ','NAC_TE','','','F015','');
insert into proveedor values ('6','10723943707','OCHOA BALBACEA DIANA TERESA','ESPAÑA NRO. 475 ','NAC_TE','','','F030','');
insert into proveedor values ('6','10432873761','OSORIO BARZOLA MARITZA ROSMERY','AV. REPUBLICA DE ARGENTINA NRO. 215 INT. Z-22 URB. LIMA INDUSTRIAL (C.C. NICOLINI  PASAJE 1) ','NAC_TE','','','F007','');
insert into proveedor values ('6','10210886953','PUENTE DE TORRES BEATRIZ ELIDA','AV. M. DELGADO DE ODRIA NRO. S/N (NRO 321, A 80 MTS RESTAURANTE PIZARRITO) ','NAC_TE','','','F015','');
insert into proveedor values ('6','20378890161','RASH PERU S.A.C.','AV. SALAVERRY NRO. 3310 (A DOS CDRAS. AV. EJERCITO) ','NAC_TE','','','F007','');
insert into proveedor values ('6','20538839826','RESTAURANTE LOS PIURANOS E.I.R.L','CAL. LAS ORQUIDIAS NRO. 2682 URB. SAN EUGENIO ','NAC_TE','','','F015','');
insert into proveedor values ('6','10181439373','SAER MOREYRA AIMEE YSOLDA','CAL. DANIEL ALCIDES CARRION NRO. 522 URB. SAN NICOLAS ','NAC_TE','','','F000','');
insert into proveedor values ('6','20565795911','SAFETY LEADERS E.I.R.L.','AV. ALFREDO MENDIOLA NRO. 6821 DPTO. 304 INT. W (CONDOMINIO LAS TORRES DE LOS OLIVOS) ','NAC_TE','','','F015','');
insert into proveedor values ('6','20100128056','SAGA FALABELLA S A','AV. PASEO DE LA REPUBLICA NRO. 3220 URB. JARDIN ','NAC_TE','','','F000','');
insert into proveedor values ('6','20523470761','SANITAS PERU S.A. - EPS','AV. RICARDO RIVERA NAVARRETE NRO. 543 URB. JARDIN ','NAC_TE','','','F030','');
insert into proveedor values ('6','20600467281','SEGURIDAD INDUSTRIAL THIAGO SOCIEDAD ANONIMA CERRADA SEGURIDAD INDUSTRIAL THIAGO S.A.C.','AV. ARGENTINA NRO. 327 PASAJE 17 INT. H1-1 ','NAC_TE','','','F030','');
insert into proveedor values ('6','20541344102','SERVICIOS INDUSTRIALES SAMITLESH S.A.C','JR. MOQUEGUA NRO. 864 (ENTRE MOQUEGUA Y AREQUIPA S.71140342) ','NAC_TE','','','F007','');
insert into proveedor values ('6','10079651023','SHIKINA HIGA ALICIA NATALIA','AV. PERU NRO. 3787 (SEGUNDO PISO) ','NAC_TE','','','F015','');
insert into proveedor values ('6','20153045021','SIGDELO S.A.','AV. JAVIER PRADO OESTE NRO. 1650 RES. SAN ISIDRO ','NAC_TE','','','F030','');
insert into proveedor values ('6','10238372424','SILVA ORTIZ RAFAEL','MZA. C LOTE. 13 APV. BELLA VISTA (CARRTE CIRCUNVALACION PARD LA CHOZA REST) ','NAC_TE','','','F030','');
insert into proveedor values ('6','10463040678','TAIPE SAMANEZ WILSON','JR. FRANCISCO MASIAS NRO. 2674 URB. SAN EUGENIO ','NAC_TE','','','F007','');
insert into proveedor values ('6','10435333821','TELLO RUIZ MARIA LOURDES','PARIHUANCA MZA. A LOTE. 14 PARQUE NARANJAL (CRUCE UNIVERSITARIA Y NARANJAL) ','NAC_TE','','','F030','');
insert into proveedor values ('6','20100227461','TRANSPORTES CRUZ DEL SUR S.A.C.','CAL. MINERIA NRO. 130 URB. LOS FICUS ','NAC_TE','','','F007','');
insert into proveedor values ('6','20229867246','TRANSPORTES JULIO CESAR S R LTDA','PROLONG. CAJAMARCA NRO. S.N (PRIMERA CDRA.) ','NAC_TE','','','F000','');
insert into proveedor values ('6','20438933272','TRANSPORTES LINEA S.A.','AV. DANIEL A.CARRION NRO. 140 URB. SAN NICOLAS ','NAC_TE','','','F015','');
insert into proveedor values ('6','10409501171','VARGAS ORTEGA ROCIO ISABEL','AV. MARISCAL CASTILLA NRO. 4121 ','NAC_TE','','','F030','');
insert into proveedor values ('6','20536676865','VILLA INVEST S.A.C.','AV. MRCAL JOSE LA MAR NRO. 2251 URB. PANDO 6TA ET ','NAC_TE','','','F030','');
insert into proveedor values ('6','10437983793','VILLAVICENCIO CARO JOHANNES ANTHONY','CAL. 11 MZA. V LOTE. 30 URB. LUCYANA (FINAL DE LA AV UNIVERSITARIA) ','NAC_TE','','','F007','');
insert into proveedor values ('6','15137242025','YEP CHU YIN CHOY','AV. ANGAMOS ESTE NRO. 235 ','NAC_TE','','','F030','');
insert into proveedor values ('6','10210872685','ZAVALA RAMIREZ JOSE DONALDO','JR. SANTANDER MZA. P LOTE. 11 URB. MAYORAZGO 4TA. ETAPA (A 2 CUADRAS DE FABRICA DE BACKUS) ','NAC_TE','','','F015','');
insert into proveedor values ('6','10085475369','ZEGARRA MARTINEZ GERMAN ANTONIO','AV. PERU NRO. 3127 URB. PERU ','NAC_TE','','','F015','');


insert into facturaCompra values ('20171000','SOL','2017/11/08','3.250','01','0001','00001234','20101869947','ALERT DEL PERU SA',100.00,0.00,18.00,118.00,'D037','',10,'2017/10/05','43214321',20.00,'COMPRA DE PASAJES',5,1);
insert into facturaCompra values ('20171000','SOL','2017/11/08','3.321','01','F067','00000174','20100227461','TRANSPORTES CRUZ DEL SUR S.A.C.',0,55,0,55,'D037','',10,'1900/01/00','',0,'PASAJE TARMA - LIMA',5,1);
insert into facturaCompra values ('20171000','SOL','2017/11/09','3.334','15','0248','00059013','20438933272','TRANSPORTES LINEA S.A.',0,30,0,30,'D037','',10,'1900/01/00','',0,'PASAJE LIMA-TRUJILLO',5,1);
insert into facturaCompra values ('20171000','SOL','2017/11/12','3.321','15','0501','00025243','20229867246','TRANSPORTES JULIO CESAR S R LTDA',0,50,0,50,'D037','',10,'1900/01/00','',0,'PASAJE TRUJILLO-HUARAZ',5,1);
insert into facturaCompra values ('20171000','SOL','2017/11/13','3.326','01','0002','00000188','10181439373','SAER MOREYRA AIMEE YSOLDA',60,0,10.8,70.8,'D037','',10,'1900/01/00','',0,'CONSUMO',5,1);
insert into facturaCompra values ('20171100','SOL','2017/11/11','3.325','01','0002','00000189','10181439373','SAER MOREYRA AIMEE YSOLDA',60,0,10.8,70.8,'D037','',10,'1900/01/00','',0,'CONSUMO',5,1);
insert into facturaCompra values ('20171100','SOL','2017/11/12','3.325','01','0002','00000190','10181439373','SAER MOREYRA AIMEE YSOLDA',60,0,10.8,70.8,'D037','',10,'1900/01/00','',0,'CONSUMO',5,1);
insert into facturaCompra values ('20171000','SOL','2017/11/15','3.322','01','0001','00008907','20538839826','RESTAURANTE LOS PIURANOS E.I.R.L',62.71,0,11.29,74,'D037','',10,'1900/01/00','',0,'CONSUMO',5,1);
insert into facturaCompra values ('20171000','SOL','2017/11/16','3.327','12','0002','00031501','20536676865','VILLA INVEST S.A.C.',41.02,0,7.38,48.4,'D037','',10,'1900/01/00','',0,'CONSUMO',5,1);
insert into facturaCompra values ('20171000','SOL','2017/11/18','3.326','01','0002','00035459','20515479008','INVERSIONES ALBAN SOCIEDAD ANONIMA CERRADA',274.58,0,49.42,324,'D037','',10,'1900/01/00','',0,'ALOJAMIENTO',5,1);
insert into facturaCompra values ('20171000','SOL','2017/11/20','3.326','02','E001','00000008','10403702477','AVALOS MENDOZA ALFREDO IVAN',0,1100,0,1100,'D037','',10,'1900/01/00','',0,'AUDITORIA DE SGSST',5,1);
insert into facturaCompra values ('20171000','SOL','2017/11/21','3.322','01','E001','00002446','20217265917','B.BIOS INTERNATIONAL S.A.C.',100,0,18,118,'D037','',10,'1900/01/00','',0,'CAMBIO DE RAZON SOCIAL',5,1);
insert into facturaCompra values ('20171000','SOL','2017/11/21','3.322','13','0100','00339671','20523470761','SANITAS PERU S.A. - EPS',112,0,20.16,132.16,'D037','',10,'1900/01/00','',0,'SCTR 23/01-23/02',5,1);
insert into facturaCompra values ('20171000','SOL','2017/11/21','3.322','01','F700','00002602','20378890161','RASH PERU S.A.C.',76.19,0,13.71,89.9,'D037','',10,'1900/01/00','',0,'BATERIA EXTERNA',1,1);
insert into facturaCompra values ('20171000','SOL','2017/11/21','3.322','01','FK55','00006960','20100123330','DELOSI S.A.',31.42,2.82,5.66,39.9,'D037','',10,'1900/01/00','',0,'CONSUMO',5,1);
insert into facturaCompra values ('20171100','DOL','2017/11/22','3.322','01','FK55','00006961','20100123330','DELOSI S.A.',31.42,2.82,5.66,39.9,'D037','',10,'1900/01/00','',0,'CONSUMO',5,1);
insert into facturaCompra values ('20171000','SOL','2017/11/21','3.322','01','0001','00001291','20573095473','DE PURO ASADO E.I.R.L.',0,46,0,46,'D037','',10,'1900/01/00','',0,'CONSUMO',5,1);
insert into facturaCompra values ('20171000','SOL','2017/11/22','3.323','01','0001','00001292','20573095473','DE PURO ASADO E.I.R.L.',0,46,0,46,'D037','',10,'1900/01/00','',0,'CONSUMO',5,1);
insert into facturaCompra values ('20171000','DOL','2017/11/22','3.323','01','0001','00001293','20573095473','DE PURO ASADO E.I.R.L.',0,46,0,46,'D037','',10,'1900/01/00','',0,'CONSUMO',5,1);


insert into facturaVenta values ('20171100','SOL','2017/11/08','3.250','01','0004','00001234','20514917001','WOLL CORP SAC',100.00,0.00,18.00,118.00,'D037','',10,'COMPRA DE PASAJES',1);
insert into facturaVenta values ('20171100','SOL','2017/11/10','3.252','01','0001','00123456','20514917001','WOLL CORP SAC',200.00,0.00,36.00,118.00,null,null,null,'COMPRA DE PASAJES',1);
insert into facturaVenta values ('20171100','SOL','2017/11/10','3.252','01','0001','00123457','20514917001','WOLL CORP SAC',1000.00,0.00,180.00,1180.00,'D037','',10,'VENTA DE PASAJES',1);
insert into facturaVenta values ('20171100','SOL','2017/11/10','3.252','01','0001','00123457','20514917001','WOLL CORP SAC',1000.00,0.00,180.00,1180.00,'D037','',10,'VENTA DE PASAJES',1);
insert into facturaVenta values ('20171200','SOL','2017/12/01','3.335','01','0001','00012345','10407147982','UMIYAURI VALER FREDY AYNER',100.00,0.00,18.00,118.00,'D037','',10,'VENTA DE PRUEBA',1);
insert into facturaVenta values ('20171200','SOL','2017/12/01','3.335','01','0001','00012346','10407147982','UMIYAURI VALER FREDY AYNER',200.00,0.00,36.00,236.00,'D037','',10,'VENTA DE PRUEBA',1);
insert into facturaVenta values ('20171100','SOL','2017/11/10','3.252','01','0001','00012344','10407147982','UMIYAURI VALER FREDY AYNER',200.00,0.00,36.00,236.00,'D037','',10,'VENTA DE PRUEBA',1);
insert into facturaVenta values ('20171100','DOL','2017/11/10','3.252','01','0001','00012344','15516232312','WANG XIUHUA',200.00,0.00,36.00,236.00,'D037','',10,'VENTA DE PRUEBA',1);
insert into facturaVenta values ('20171200','DOL','2017/12/01','3.335','01','0001','00002345','15516232312','WANG XIUHUA',200.00,0.00,36.00,236.00,'D037','',10,'VENTA DE PRUEBA',1);

	
-- PROCEDIMIENTOS

-- Procedimiento para validar los accesos del Login
Delimiter $$
create procedure usp_valida_acceso( usu varchar(10), clv varchar(10))
begin
	Select * From usuarios where cod_usu = usu and clave_usu = clv ;
end $$
Delimiter ;

-- Procedimiento para buscar el codigo Tipo persona, según su descripción
Delimiter $$
create procedure usp_buscaDes_tipo_persona(codigo char(1))
begin
	Select des_pe From tipoPersona where cod_pe=codigo;
end $$
Delimiter ;

-- Procedimiento para buscar la Descripcion de Tipo persona, según su codigo
Delimiter $$
create procedure usp_busca_tipo_persona(descripcion varchar(40))
begin
	Select cod_pe From tipoPersona where des_pe=descripcion;
end $$
Delimiter ;

-- Procedimiento para obtener los datos de Tipo persona, según su codigo
Delimiter $$
create procedure usp_obtener_tipo_persona(codigo varchar(40))
begin
	Select * From tipoPersona where cod_pe=codigo;
end $$
Delimiter ;



-- Procedimiento para buscar el codigo Tipo cliente, según su descripción
Delimiter $$
create procedure usp_busca_tipo_cliente(descripcion varchar(40))
begin
	Select cod_tc From tipoCliente where des_tc=descripcion;
end $$
Delimiter ;

-- Procedimiento para buscar la descripcion Tipo cliente, según su codigo
Delimiter $$
create procedure usp_buscaDes_tipo_cliente(codigo char(11))
begin
Select * From tipoCliente where cod_tc=codigo;
end $$
Delimiter ;



-- Procedimiento para buscar el codigo Tipo Proveedor, según su descripción
Delimiter $$
create procedure usp_busca_tipo_proveedor(descripcion varchar(40))
begin
	Select cod_tp From tipoProveedor where des_tp=descripcion;
end $$
Delimiter ;

-- Procedimiento para buscar la Descripcion Tipo Proveedor, según su codigo
Delimiter $$
create procedure usp_buscaDes_tipo_proveedor(codigo char(10))
begin
	Select des_tp From tipoProveedor where cod_tp=codigo;
end $$
Delimiter ;

-- Procedimiento para buscar la Obtener los datos de Tipo Proveedor, según su codigo
Delimiter $$
create procedure usp_obtener_tipo_proveedor(codigo char(10))
begin
	Select * From tipoProveedor where cod_tp=codigo;
end $$
Delimiter ;

-- Procedimiento para buscar el codigo Condicion de Pago, según su descripción
Delimiter $$
create procedure usp_busca_tipo_condPago(descripcion varchar(40))
begin
	Select cod_cp From condicionPago where des_cp=descripcion;
end $$
Delimiter ;

-- Procedimiento para buscar la descripcion Condicion de Pago, según su codigo
Delimiter $$
create procedure usp_buscaDes_tipo_condPago(codigo char(4))
begin
	Select des_cp From condicionPago where cod_cp=codigo;
end $$
Delimiter ;

-- Procedimiento para obtener los datos de Condicion de Pago, según su codigo
Delimiter $$
create procedure usp_obtener_condPago(codigo char(4))
begin
	Select * From condicionPago where cod_cp=codigo;
end $$
Delimiter ;


-- Procedimiento para buscar el codigo Tipo Documento, según su descripción
Delimiter $$
create procedure usp_busca_tipo_doc(descripcion varchar(40))
begin
	Select cod_td From tipoDocumento where des_td=descripcion;
end $$
Delimiter ;

-- Procedimiento para buscar la descripcion Tipo Documento, según su codigo
Delimiter $$
create procedure usp_buscaDes_tipo_doc(codigo char(2))
begin
	Select des_td From tipoDocumento where cod_td=codigo;
end $$
Delimiter ;



-- Procedimiento para buscar el proveedor, según su descripción
Delimiter $$
create procedure usp_busca_proveedor(descripcion varchar(40))
begin
	Select cod_pro, razonS_pro  From proveedor where razonS_pro like CONCAT('%', descripcion, '%');
end $$
Delimiter ;

-- --------------------------------------------------------------------------------------------------
-- --------------------------------------------------------------------------------------------------

-- Procedimiento para listar los campos importantes de las facturas venta
-- En la venta de registrar Facturas de Venta
Delimiter $$
create procedure usp_lista_facturas_venta()
begin
select	periodo, moneda, fecha, tipoCambio , tipoDoc, serieDoc, numDoc, cod_cli,
razonS_cli, valor_venta, valor_inafecto, igv, total, cod_re, des_re, tasa_re, glosa_venta,
a.cod_estado, des_estado from facturaVenta a inner join estadoDoc b on a.cod_estado = b.cod_estado;
end $$
Delimiter ;



-- Procedimiento para buscar los datos de una Factura de Ventas, segun:
-- Cliente, numero y serie
Delimiter $$
create procedure usp_buscarFacturaVentas (cliente char(11),num char(8), serie char(4))
begin
select	periodo, moneda, fecha, tipoCambio , tipoDoc, serieDoc, numDoc, cod_cli,
razonS_cli, valor_venta, valor_inafecto, igv, total, cod_re, des_re, tasa_re, glosa_venta,
a.cod_estado, des_estado from facturaVenta a inner join estadoDoc b on a.cod_estado = b.cod_estado;
end $$
Delimiter ;


-- Procedimiento para actualizar los datos de una Factura de Ventas, segun:
-- Cliente, numero y serie
Delimiter $$
create procedure usp_actualiza_FacturaVentas (per char(10), mon char(3), fec date, tc decimal(4,3), td char(2),
serie char(4), num char(8), cliente char(11), ras varchar(100), vv decimal(9,2), vi decimal (9,2), ig decimal (9,2),
tot decimal (9,2), ret char(4), dret varchar(40), tas int, glos varchar(200), est int)
begin
update 	facturaVenta set periodo=per, moneda=mon, fecha=fec, tipoCambio=tc , tipoDoc=td, razonS_cli=ras,
valor_venta=vv, valor_inafecto=vi, igv=ig, total=tot, cod_re=ret, des_re=dret, tasa_re=tas, glosa_venta=glos,
cod_estado=est where cod_cli=cliente and numDoc=num and serieDoc=serie;
end $$
Delimiter ;


-- Procedimiento para eliminar los datos de una Factura de Ventas, segun:
-- Cliente, numero y serie
Delimiter $$
create procedure usp_eliminar_FacturaVentas (cliente char(11), serie char(4), num char(8))
begin
delete from facturaVenta where cod_cli=cliente and serieDoc=serie and numDoc=num;
end $$
Delimiter ;

-- Procedimiento para el REPORTE DE REGISTRO DE COMPRAS
-- Este procedimiento, permite buscar por diferentes filtros, opcionales
Delimiter $$
create procedure usp_reporte_registro_ventas (in per char(10), cli char(11), tipoD char(2), mon char(3))
begin
select	periodo, fecha, moneda, tipoCambio , tipoDoc, serieDoc, numDoc, cod_cli,
razonS_cli, valor_venta, valor_inafecto, igv, total, glosa_venta from facturaVenta 
where (per is null or periodo=per) and (cli is null or cod_cli=cli) and (tipoD is null or tipoDoc=tipoD) and (mon is null or moneda=mon);
end $$
Delimiter ;

-- drop procedure usp_reporte_registro_compras;
-- call usp_reporte_registro_ventas(null,null,null,null);


-- --------------------------------------------------------------------------------------------------
-- --------------------------------------------------------------------------------------------------

-- Procedimiento para listar los campos de las facturas Compra
-- En la venta de registrar Facturas de Compra
Delimiter $$
create procedure usp_lista_facturas_compra()
begin
select	periodo, moneda, fecha, tipoCambio , tipoDoc, serieDoc, numDoc, cod_pro,
razonS_pro, valor_venta, valor_inafecto, igv, total, cod_re, des_re, tasa_re, fecha_re,
nro_re, monto_re, glosa_compra, a.cod_com, des_com, a.cod_estado, des_estado 
from facturaCompra a inner join estadoDoc b on a.cod_estado = b.cod_estado
inner join tipoCompra c on a.cod_com=c.cod_com;
end $$
Delimiter ;


-- Procedimiento para actualizar los campos de las facturas Compra
-- En la venta de registrar Facturas de Compra
Delimiter $$
create procedure usp_actualiza_FacturaCompras(per char(10), mon char(3), fec date, tc decimal(4,3), td char(2),
serie char(4), num char(8), pro char(11), ras varchar(100), vv decimal(9,2), vi decimal (9,2), ig decimal (9,2),
tot decimal (9,2), ret char(4), dret varchar(40), tas int, fr date, nr varchar(40), mr decimal(9,2), glos varchar(200),
cm char(1), est int)
begin
update facturaCompra set periodo=per, moneda=mon, fecha=fec, tipoCambio=tc, tipoDoc=td, serieDoc=serie, numDoc=num,
cod_pro=pro, razonS_pro=ras, valor_venta=vv, valor_inafecto=vi, igv=ig, total=tot, cod_re=ret, des_re=dret, 
tasa_re=tas, fecha_re=fr, nro_re=nr, monto_re=mr, glosa_compra=glos, cod_com=cm, cod_estado=est 
where cod_pro=pro and numDoc=num and serieDoc=serie;
end $$
Delimiter ;


-- Procedimiento para eliminar los datos de una Factura de Compras, segun:
-- Cliente, numero y serie
Delimiter $$
create procedure usp_eliminar_FacturaCompras (pro char(11), serie char(4), num char(8))
begin
delete from facturaCompra where cod_pro=pro and serieDoc=serie and numDoc=num;
end $$
Delimiter ;


-- Procedimiento para el REPORTE DE REGISTRO DE COMPRAS
-- Este procedimiento, permite buscar por diferentes filtros, opcionales
Delimiter $$
create procedure usp_reporte_registro_compras (in per char(10), pro char(11), tipoD char(2), mon char(3))
begin
select	periodo, fecha, moneda, tipoCambio , tipoDoc, serieDoc, numDoc, cod_pro,
razonS_pro, valor_venta, valor_inafecto, igv, total, glosa_compra from facturaCompra 
where (per is null or periodo=per) and (pro is null or cod_pro=pro) and (tipoD is null or tipoDoc=tipoD) and (mon is null or moneda=mon);
end $$
Delimiter ;

-- drop procedure usp_reporte_registro_compras;
-- call usp_reporte_registro_compras(null,null,null,null);


-- --------------------------------------------------------------------------------------------------
-- --------------------------------------------------------------------------------------------------
-- xxx



-- PERIODO CONTABLE: *******************************************************
-- Procedimiento para consultar si un periodo existe o no
Delimiter $$
create procedure usp_consultar_periodo(texto varchar(50))
begin
select cod_periodo from periodoContable 
where cod_periodo = texto;
end $$
Delimiter ;

-- Procedimiento para obtener los datos de un periodo contable
Delimiter $$
create procedure usp_obtener_periodo(texto varchar(50))
begin
select * from periodoContable 
where cod_periodo = texto;
end $$
Delimiter ;




-- CLIENTE: ***************************************************************
-- Procedimiento para buscar un cliente por su codigo
Delimiter $$
create procedure usp_buscar_cliente(texto varchar(50))
begin
select razonS_cli from cliente where cod_cli = texto;
end $$
Delimiter ;

-- Procedimiento para buscar un proveedor por su codigo
Delimiter $$
create procedure usp_buscar_proveedor(codigo char(11))
begin
select razonS_pro from proveedor where cod_pro = codigo;
end $$
Delimiter ;


-- Procedimiento para buscar un estado por su codigo
Delimiter $$
create procedure usp_buscar_estado(codigo int)
begin
select des_estado from estadoDoc where cod_estado = codigo;
end $$
Delimiter ;

-- Procedimiento para obtener datos de estado por su codigo
Delimiter $$
create procedure usp_obtener_estado(codigo int)
begin
select * from estadoDoc where cod_estado = codigo;
end $$
Delimiter ;

-- Procedimiento para actualizar el Periodo contable
Delimiter $$
create procedure usp_actualizar_periodoCon(cod char(10), des varchar(40))
begin
update periodoContable set des_periodo=des
where cod_periodo=cod;
end $$
Delimiter ;

-- Procedimiento para eliminar el Periodo contable
Delimiter $$
create procedure usp_eliminar_periodoCon(cod char(10))
begin
delete from periodoContable where cod_periodo=cod;
end $$
Delimiter ;

-- Procedimiento para actualizar el Tipo de Documento
Delimiter $$
create procedure usp_actualizar_tipoDoc(cod char(10), des varchar(40))
begin
update tipoDocumento set des_td=des
where cod_td=cod;
end $$
Delimiter ;

-- Procedimiento para eliminar el Tipo de Documento
Delimiter $$
create procedure usp_eliminar_tipoDoc(cod char(10))
begin
delete from tipoDocumento where cod_td=cod;
end $$
Delimiter ;

-- Procedimiento para obtener los datos deTipo de Documento
Delimiter $$
create procedure usp_obtener_tipoDoc(cod char(10))
begin
select * from tipoDocumento where cod_td=cod;
end $$
Delimiter ;

-- Procedimiento para actualizar el Tipo de Persona
Delimiter $$
create procedure usp_actualizar_tipoPer(cod char(10), des varchar(40))
begin
update tipoPersona set des_pe=des
where cod_pe=cod;
end $$
Delimiter ;

-- Procedimiento para eliminar el Tipo de Persona
Delimiter $$
create procedure usp_eliminar_tipoPer(cod char(10))
begin
delete from tipoPersona where cod_pe=cod;
end $$
Delimiter ;

-- Procedimiento para actualizar el Tipo de Proveedor
Delimiter $$
create procedure usp_actualizar_tipoPro(cod char(10), des varchar(40))
begin
update tipoProveedor set des_tp=des
where cod_tp=cod;
end $$
Delimiter ;

-- Procedimiento para eliminar el Tipo de Proveedor
Delimiter $$
create procedure usp_eliminar_tipoPro(cod char(10))
begin
delete from tipoProveedor where cod_tp=cod;
end $$
Delimiter ;

-- Procedimiento para actualizar el Tipo de Cliente
Delimiter $$
create procedure usp_actualizar_tipoCli(cod char(10), des varchar(40))
begin
update tipoCliente set des_tc=des
where cod_tc=cod;
end $$
Delimiter ;

-- Procedimiento para eliminar el Tipo de Cliente
Delimiter $$
create procedure usp_eliminar_tipoCli(cod char(10))
begin
delete from tipoCliente where cod_tc=cod;
end $$
Delimiter ;

-- Procedimiento para actualizar el Tipo de Compra
Delimiter $$
create procedure usp_actualizar_tipoCom(cod char(1), des varchar(100))
begin
update tipoCompra set des_com=des
where cod_com=cod;
end $$
Delimiter ;

-- Procedimiento para eliminar el Tipo de Compra
Delimiter $$
create procedure usp_eliminar_tipoCom(cod char(1))
begin
delete from tipoCompra where cod_com=cod;
end $$
Delimiter ;

-- Procedimiento para obtener los datos de Tipo de Compra
Delimiter $$
create procedure usp_obtener_tipoCom(cod char(1))
begin
select * from tipoCompra where cod_com=cod;
end $$
Delimiter ;



-- Procedimiento para actualizar el Tipo de Retencion
Delimiter $$
create procedure usp_actualizar_tipoRet(cod char(4), des varchar(40), tasa int, valor decimal(9,2))
begin
update tipoRetencion set des_re=des, tasa_re=tasa, valor_aplicacion=valor
where cod_re=cod;
end $$
Delimiter ;

-- Procedimiento para eliminar el Tipo de Retencion
Delimiter $$
create procedure usp_eliminar_tipoRet(cod char(4))
begin
delete from tipoRetencion where cod_re=cod;
end $$
Delimiter ;

-- Procedimiento para buscar la descripcion de Retencion con el codigo
Delimiter $$
create procedure usp_buscar_retencion(cod char(4))
begin
select des_re, tasa_re from tipoRetencion where cod_re=cod;
end $$
Delimiter ;

-- Procedimiento para obtener los datos de Retencion con el codigo
Delimiter $$
create procedure usp_obtener_retencion(cod char(4))
begin
select * from tipoRetencion where cod_re=cod;
end $$
Delimiter ;



-- Procedimiento para actualizar el Estado Documento
Delimiter $$
create procedure usp_actualizar_estadoDoc(cod int, des varchar(250))
begin
update estadoDoc set des_estado=des
where cod_estado=cod;
end $$
Delimiter ;

-- Procedimiento para eliminar el Estado Documento
Delimiter $$
create procedure usp_eliminar_estadoDoc(cod int)
begin
delete from estadoDoc where cod_estado=cod;
end $$
Delimiter ;


-- Procedimiento para actualizar la tabla Moneda
Delimiter $$
create procedure usp_actualizar_moneda(cod char(3), des varchar(40))
begin
update moneda set des_mo=des
where cod_mo=cod;
end $$
Delimiter ;

-- Procedimiento para eliminar la tabla Moneda
Delimiter $$
create procedure usp_eliminar_moneda(cod char(3))
begin
delete from moneda where cod_mo=cod;
end $$
Delimiter ;

-- Procedimiento para buscar la descripcion de moneda, con el codigo
Delimiter $$
create procedure usp_buscaDes_moneda(cod char(3))
begin
select cod_mo from moneda where cod_mo=cod;
end $$
Delimiter ;

-- Procedimiento para obtener los datos moneda, con el codigo
Delimiter $$
create procedure usp_obtener_moneda(cod char(3))
begin
select * from moneda where cod_mo=cod;
end $$
Delimiter ;


-- Procedimiento para actualizar la Condicion de Pago
Delimiter $$
create procedure usp_actualizar_condPago(cod char(4), des varchar(40))
begin
update condicionPago set des_cp=des
where cod_cp=cod;
end $$
Delimiter ;

-- Procedimiento para eliminar la Condicion de Pago
Delimiter $$
create procedure usp_eliminar_condPago(cod char(4))
begin
delete from condicionPago where cod_cp=cod;
end $$
Delimiter ;

-- Procedimiento para actualizar el tipo de cambio
Delimiter $$
create procedure usp_actualizar_tipoCambio(fec date, compra double(4,3) ,venta double(4,3))
begin
update tipoCambio set TCcompra=compra, TCventa=venta
where fecha=fec;
end $$
Delimiter ;

-- Procedimiento para eliminar el tipo de cambio
Delimiter $$
create procedure usp_eliminar_tipoCambio(fec date)
begin
delete from tipoCambio where fecha=fec;
end $$
Delimiter ;

-- Procedimiento para actualizar el Proveedor
Delimiter $$
create procedure usp_actualizar_proveedor(per char(2), codigo char(11), razon varchar(100), direc varchar(250),
pro char(10), contac varchar(100), telef varchar(9), pago char(4), correo varchar(100))
begin
update proveedor set cod_pe=per, razonS_pro=razon, direc_pro=direc, tipo_prov=pro, contacto_prov=contac,
telefono_prov=telef, condicionPago=pago, correo_prov=correo
where cod_pro=codigo;
end $$
Delimiter ;


-- Procedimiento para eliminar el Proveedor
Delimiter $$
create procedure usp_eliminar_proveedor(codigo char(11))
begin
delete from proveedor where cod_pro=codigo;
end $$
Delimiter ;

-- Procedimiento para actualizar el Cliente
Delimiter $$
create procedure usp_actualizar_cliente(per char(2), codigo char(11), razon varchar(100), direc varchar(250),
cli char(10), contac varchar(100), telef varchar(9), pago char(4), correo varchar(100))
begin
update cliente set cod_pe=per, razonS_cli=razon, direc_cli=direc, tipo_cli=cli, contacto_cli=contac,
telefono_cli=telef, condicionPago=pago, correo_cli=correo
where cod_cli=codigo;
end $$
Delimiter ;


-- Procedimiento para eliminar el Cliente
Delimiter $$
create procedure usp_eliminar_cliente(codigo char(11))
begin
delete from cliente where cod_cli=codigo;
end $$
Delimiter ;

select * from periodoContable;