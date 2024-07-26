namespace com.astronomy.things;
using {managed, cuid} from '@sap/cds/common';


entity Planets:managed, cuid {
    key ID:UUID;
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
    Natural: Composition of many NaturalSatellites on Natural.naturalsatellite_id=$self;
}

entity NaturalSatellites:managed, cuid {
    key ID:UUID;
    @title:'Planets ID'
    naturalsatellite_id: Association to one Planets;
    @title: 'Name'
    name: String(50);
    @title: 'For Planet'
    forplanet: String(20);
    @title: 'Distance from planet'
    distance: Integer;
}