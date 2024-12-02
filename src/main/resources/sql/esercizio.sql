-- esercizio 1 - estrai tutti i clienti con nome Mario
-- select * from clienti where clienti.nome = 'mario';

-- esercizio 2 - estrarre il nome e il cognome dei clienti nati nel 1982
-- select nome, cognome from clienti where clienti.anno_di_nascita = 1982;

-- esercizio 3 - estrarre il numero delle fatture con iba al 20&
--select numero_fattura from fatture where fatture.iva = 20;

--esercizio 4 -- estrarre prodotti attivati nel 2017 e che sono in produzione o in commercio.
/* select * from prodotti where EXTRACT(YEAR FROM prodotti.data_attivazione) = 2017
and (prodotti.in_produzione=true or prodotti.in_commercio=true); */

--esercizio 5 - estrarre fatture con importo inferiore a 1000 e dati dei clienti correlate
-- select * from fatture join clienti on clienti.numero_cliente = fatture.id_cliente where fatture.importo <1000;

--eserzio 6 - riportare elenco fatture (numero,importo,iva e data) con in aggiunta il nome del fornitore;
/* select numero_fattura,importo,iva,data_fattura,fornitori.denominazione from fatture
join fornitori on fatture.numero_fornitore= fornitori.numero_fornitore;*/

--esercizio 7 - considerando solo fatture con iva al 20%, estrarre il numero di fatture per ogni anno;

/* select EXTRACT(YEAR FROM data_fattura) as anno_fattura, count(*) as numero_fatture_per_anno from fatture where fatture.iva = 20
group by EXTRACT(YEAR FROM data_fattura); */

-- esercio 8 - riportare il numero di fatture e la somma dei relativi importi divisi per anno di fatturazione

/* select EXTRACT(YEAR FROM data_fattura) as anno_fattura, count(*) as numero_fatture_per_anno, sum(importo) as totale_importi_annuale from fatture
group by EXTRACT(YEAR FROM data_fattura) order by anno_fattura; */

-- esercizio 9 - estrarre gli anni in cui sono state registrate 3 o + fatture di tipo A
/* select EXTRACT(YEAR FROM data_fattura), count(numero_fattura) as anno_fattura from fatture where fatture.tipologia= 'A'
group by EXTRACT(YEAR FROM data_fattura)
having count(numero_fattura) > 2
order by anno_fattura;*/

--esercizio 10 - estrarre il totale degli importi delle fatture divisi per residenza dei clienti
/* select sum(importo) as importi_regione, clienti.regione_residenza from fatture join clienti on clienti.numero_cliente= fatture.id_cliente
group by clienti.regione_residenza; */

--esercizio 11 - estrarre il numero dei clienti nati nel 1980 che hanno almeno una fattura superiore a 50€
/* select count(*) as numero_clienti, nome,cognome from clienti join fatture on clienti.numero_cliente= fatture.id_cliente where clienti.anno_di_nascita = 1982 and fatture.importo > 50
group by nome,cognome; */
