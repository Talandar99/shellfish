

-- laravel_ksiazki
CREATE SCHEMA laravel_ksiazki
-------------------------------------------------------------
-- Table: laravel_ksiazki.kategoria
-- DROP TABLE laravel_ksiazki.kategoria;

CREATE SEQUENCE laravel_ksiazki.kategoria_id_seq;
CREATE TABLE laravel_ksiazki.kategoria
(
    id bigint NOT NULL DEFAULT nextval('laravel_ksiazki.kategoria_id_seq'::regclass),
    opis character varying(50) NOT NULL,
    CONSTRAINT kategoria_pkey PRIMARY KEY (id)
)
WITH (OIDS = FALSE)
TABLESPACE pg_default;

ALTER SEQUENCE laravel_ksiazki.kategoria_id_seq OWNED BY laravel_ksiazki.kategoria.id;

insert into laravel_ksiazki.kategoria(opis) values ('WWW');
insert into laravel_ksiazki.kategoria(opis) values ('HTML');
insert into laravel_ksiazki.kategoria(opis) values ('JavaScript');
insert into laravel_ksiazki.kategoria(opis) values ('Java');

-- Table: laravel_ksiazki.ksiazka
-- DROP TABLE laravel_ksiazki.ksiazka;

CREATE SEQUENCE laravel_ksiazki.ksiazka_id_seq;
CREATE TABLE laravel_ksiazki.ksiazka
(
    id bigint NOT NULL DEFAULT nextval('laravel_ksiazki.ksiazka_id_seq'),
    tytul character varying(60) NOT NULL,
    idwyd integer,
    idkat integer,
    CONSTRAINT ksiazka_pkey PRIMARY KEY (id)
)
WITH (OIDS = FALSE)
TABLESPACE pg_default;

ALTER SEQUENCE laravel_ksiazki.ksiazka_id_seq OWNED BY laravel_ksiazki.ksiazka.id; 

insert into laravel_ksiazki.ksiazka(tytul,idwyd,idkat) values ('Java. Podstawy',1,4);
insert into laravel_ksiazki.ksiazka(tytul,idwyd,idkat) values ('Projektownie serwisów WWW. Standardy sieciowe',1,1);
insert into laravel_ksiazki.ksiazka(tytul,idwyd,idkat) values ('Zrozumieć JavaScript',1,3);
insert into laravel_ksiazki.ksiazka(tytul,idwyd,idkat) values ('Head first Java',3,4);
insert into laravel_ksiazki.ksiazka(tytul,idwyd,idkat) values ('HTML5. Komponenty',2,2);
insert into laravel_ksiazki.ksiazka(tytul,idwyd,idkat) values ('Wydajny JavaScript',2,3);

-- Table: laravel_ksiazki.wydawnictwo
-- DROP TABLE laravel_ksiazki.wydawnictwo;

CREATE SEQUENCE laravel_ksiazki.wydawnictwo_id_seq;
CREATE TABLE laravel_ksiazki.wydawnictwo
(
    id bigint NOT NULL DEFAULT nextval('laravel_ksiazki.wydawnictwo_id_seq'::regclass),
    nazwa character varying(50) NOT NULL,
    adres character varying,
    CONSTRAINT wydawnictwo_pkey PRIMARY KEY (id)
)
WITH (OIDS = FALSE)
TABLESPACE pg_default;

ALTER SEQUENCE laravel_ksiazki.wydawnictwo_id_seq OWNED BY laravel_ksiazki.wydawnictwo.id;

insert into laravel_ksiazki.wydawnictwo(nazwa,adres) values ('Helion','Gliwice, Polska');
insert into laravel_ksiazki.wydawnictwo(nazwa,adres) values ('PWN','Warszawa, Polska');
insert into laravel_ksiazki.wydawnictwo(nazwa,adres) values ('OREILLY','Boston, USA');
