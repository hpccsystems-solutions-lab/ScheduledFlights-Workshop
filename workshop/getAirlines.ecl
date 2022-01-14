EXPORT getAirlines := MODULE

rawAirlines := RECORD
    
    INTEGER Airline_ID;
    STRING	Airline_Name;
    STRING 	IATA;
    STRING	ICAO;
    STRING	Callsign;
    STRING	Country;
    STRING  Active;

END;

rawAirlines_DS := DATASET('~airlines::csv::raw', rawAirlines, CSV(HEADING(1)));
FilterAirlines := rawAirlines_DS(IATA NOT IN ['', '&T', '++', '-+', '--', '..', '0']);

EXPORT AirlinesDS := DEDUP(SORT(FilterAirlines, IATA), IATA);


END;