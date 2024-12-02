-- tabella clienti

CREATE TABLE IF NOT EXISTS public.clienti
(
    numero_cliente integer NOT NULL DEFAULT nextval('clienti_numero_cliente_seq'::regclass),
    nome character varying COLLATE pg_catalog."default" NOT NULL,
    cognome character varying COLLATE pg_catalog."default" NOT NULL,
    anno_di_nascita integer NOT NULL,
    regione_residenza character varying COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT clienti_pkey PRIMARY KEY (numero_cliente)
)

-- tabella fatture

CREATE TABLE IF NOT EXISTS public.fatture
(
    numero_fattura integer NOT NULL DEFAULT nextval('fatture_numero_fattura_seq'::regclass),
    tipologia character varying COLLATE pg_catalog."default" NOT NULL,
    importo double precision NOT NULL,
    iva integer NOT NULL,
    id_cliente integer NOT NULL,
    data_fattura date NOT NULL,
    numero_fornitore integer NOT NULL,
    CONSTRAINT fatture_pkey PRIMARY KEY (numero_fattura)
)

-- tabella fornitori

CREATE TABLE IF NOT EXISTS public.fornitori
(
    numero_fornitore integer NOT NULL DEFAULT nextval('fornitori_numero_fornitore_seq'::regclass),
    denominazione character varying COLLATE pg_catalog."default" NOT NULL,
    regione_residenza character varying COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT fornitori_pkey PRIMARY KEY (numero_fornitore)
)

--tabella prodotti

CREATE TABLE IF NOT EXISTS public.prodotti
(
    id_prodotto integer NOT NULL DEFAULT nextval('prodotti_id_prodotto_seq'::regclass),
    descrizione character varying COLLATE pg_catalog."default" NOT NULL,
    in_produzione boolean NOT NULL,
    in_commercio boolean NOT NULL,
    data_attivazione date NOT NULL,
    data_disattivazione date NOT NULL,
    CONSTRAINT prodotti_pkey PRIMARY KEY (id_prodotto)
)

