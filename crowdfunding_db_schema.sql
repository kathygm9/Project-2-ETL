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

CREATE TABLE "Campaign" (
    "cf_id" INT   NOT NULL,
    "contact_id" INT   NOT NULL,
    "company_name" VARCHAR(255)   NOT NULL,
    "description" TEXT NOT NULL,
    "goal" FLOAT   NOT NULL,
    "pledged" FLOAT   NOT NULL,
    "outcome" VARCHAR(255)   NOT NULL,
    "backers_count" INT   NOT NULL,
    "country" VARCHAR(100)   NOT NULL,
    "currency" VARCHAR(50)   NOT NULL,
    "launched_date" DATE  NOT NULL,
    "end_date" DATE   NOT NULL,
    "category_id" VARCHAR(50)   NOT NULL,
    "subcategory_id" VARCHAR(50)   NOT NULL,
    CONSTRAINT "pk_Campaign" PRIMARY KEY (
        "cf_id"
     )
);

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "Contacts" ("contact_id");

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_category_id" FOREIGN KEY("category_id")
REFERENCES "Category" ("category_id");

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "Subcategory" ("subcategory_id");

