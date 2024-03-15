CREATE TABLE Contacts
(
    contact_id integer NOT NULL,
    first_name character varying(50) COLLATE pg_catalog."default" NOT NULL,
    last_name character varying(50) COLLATE pg_catalog."default" NOT NULL,
    email character varying(100) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "pk_Contacts" PRIMARY KEY (contact_id)
);


CREATE TABLE Category
(
    category_id character varying(50) COLLATE pg_catalog."default" NOT NULL,
    category_name character varying(255) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "pk_Category" PRIMARY KEY (category_id)
)

CREATE TABLE Subcategory
(
    subcategory_id character varying(50) COLLATE pg_catalog."default" NOT NULL,
    subcategory_name character varying(255) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "pk_Subcategory" PRIMARY KEY (subcategory_id)
);
CREATE TABLE Campaign
(
    cf_id integer NOT NULL,
    contact_id integer NOT NULL,
    company_name character varying(255) COLLATE pg_catalog."default" NOT NULL,
    description character varying(255) COLLATE pg_catalog."default" NOT NULL,
    goal double precision NOT NULL,
    pledged double precision NOT NULL,
    outcome character varying(255) COLLATE pg_catalog."default" NOT NULL,
    backers_count integer NOT NULL,
    country character varying(100) COLLATE pg_catalog."default" NOT NULL,
    currency character varying(50) COLLATE pg_catalog."default" NOT NULL,
    launched_date date NOT NULL,
    end_date date NOT NULL,
    category_id character varying(50) COLLATE pg_catalog."default" NOT NULL,
    subcategory_id character varying(50) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "pk_Campaign" PRIMARY KEY (cf_id),
    CONSTRAINT "fk_Campaign_subcategory_id" FOREIGN KEY (subcategory_id)
        REFERENCES public."Subcategory" (subcategory_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
);
