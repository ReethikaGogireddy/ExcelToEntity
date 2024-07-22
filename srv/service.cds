using { com.astronomy.things as db } from '../db/schema';

service AstronomyThings {
    entity Planets as projection on db.Planets;
}

annotate AstronomyThings.Planets with @(
    UI.LineItem:[
        {
            Value: name
        },
        {
            Value: place
        },
        {
            Value: diameter
        },
        {
            Value: hightemp
        },
        {
            Value: lowtemp
        }
       
    ],
);
