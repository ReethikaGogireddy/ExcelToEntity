namespace com.astronomy.things;
using {managed, cuid} from '@sap/cds/common';


entity Planets:managed, cuid {
    @title: 'Name'
    name: String(50);
    @title: 'Place'
    place: String(20);
    @title: 'Diameter (km)'
    diameter: Integer;
    @title: 'Highest Temperature'
    hightemp: String(20);
    @title: 'Lowest Temperature'
    lowtemp: String(20);
}