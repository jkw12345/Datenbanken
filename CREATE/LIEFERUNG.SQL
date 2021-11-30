CREATE TABLE "Lieferung" (
	"Position"	VARCHAR(100),
    "Ankunftszeit" VARCHAR(50)
	FOREIGN KEY("Emailadresse") REFERENCES "Kunde"("Emailadresse"),
	FOREIGN KEY("Bestell_ID") REFERENCES "Bestellung"("Bestell_ID")
)