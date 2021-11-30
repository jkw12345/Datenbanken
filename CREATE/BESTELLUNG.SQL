CREATE TABLE "Bestellung" (
	"Bestell_ID"	        INTEGER NOT NULL UNIQUE,
	"wert"	  				REAL,
	"Bestelldatum"	   	 	DATE,
	"Emailadresse"	    	VARCHAR(100),
	"Zahlungs_ID"	      	INTEGER,
	PRIMARY KEY("Bestell_ID" AUTOINCREMENT),
	FOREIGN KEY("Zahlungs_ID") REFERENCES "Zahlungsmethode"("Zahlungs_ID"),
	FOREIGN KEY("Emailadresse") REFERENCES "Kunde"("Emailadresse")
)