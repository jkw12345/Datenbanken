CREATE TABLE "Zahlungsmethode" (
	"Zahlungs_ID"	    INTEGER NOT NULL UNIQUE,
	"Zahlungsart"	    VARCHAR(50),
	"E-Mail"			VARCHAR(30),
    "Ïnhaber" 			VARCHAR(50),
	"Kartennummer"	  	VARCHAR(30),
	"CVV"	            INTEGER,
    "Kontonummer"	    VARCHAR(15),
    "BLZ"	          	VARCHAR(15),
    "Bankname"	        VARCHAR(15),
	PRIMARY KEY("Zahlungs_ID" AUTOINCREMENT),
	FOREIGN KEY("Email") REFERENCES "Kunde"("Email")
)
