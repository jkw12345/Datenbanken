CREATE TABLE "Kategorie" (
	"Kategorie_ID"	    INTEGER NOT NULL UNIQUE,
	"Name"	    		VARCHAR(100),
	"Bild"	            INTEGER,
	PRIMARY KEY("Kategorie_ID" AUTOINCREMENT)
)
