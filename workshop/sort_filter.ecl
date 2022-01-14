IMPORT $.getFlights;


// Sort by effective date and flight number, saving result in sortedData
sortedData := SORT(getFlights.gsecData, EffectiveDate, FlightNumber);
OUTPUT(CHOOSEN(sortedData, 100), NAMED('sortedData'));

// TODO 
/* Filter down to only Delta(DL) flights operating in November 2019
   Display result as filteredData
*/



// TODO
/* Display Flights that thier DepartStationCode are in LHR or ORD 
   and ArriveStationCode is in JFK, ATL, or ORD.
   Sort the result Carrier and FlightNumber 
*/

