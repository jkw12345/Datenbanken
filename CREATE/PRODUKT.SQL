CREATE TABLE "Produkt" (
	"Produkt_ID"	    INTEGER NOT NULL UNIQUE,
	"Name"	    		VARCHAR(50),
	"Produzent"	        VARCHAR(250),
    "Nährwerte"	        VARCHAR(250),
    "Zutaten"	        VARCHAR(250),
    "Allergene"	        VARCHAR(250),
	"Preis"	            REAL,
	"bild"	            VARCHAR(250),
	"AnbieterID"	    INTEGER,
	PRIMARY KEY("Produkt_ID" AUTOINCREMENT),
	FOREIGN KEY("Kategorie_ID") REFERENCES "Kategorie"("Kategorie_ID")
)
