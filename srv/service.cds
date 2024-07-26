using { com.astronomy.things as db } from '../db/schema';

service AstronomyThings {
    entity Planets as projection on db.Planets;
}

annotate AstronomyThings.Planets with @odata.draft.enabled;

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
annotate AstronomyThings.Planets with @(       
    UI.FieldGroup #PlanetsInformation : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
            $Type : 'UI.DataField',
            Value :name
        },
        {
            $Type : 'UI.DataField',
            Value : place
        },
        {
            $Type : 'UI.DataField',
            Value : diameter
        },
         {
            $Type : 'UI.DataField',
            Value : hightemp
        },
         {
            $Type : 'UI.DataField',
            Value : lowtemp
        },
        
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'PlanetsInfoFacet',
            Label : 'Planets Information',
            Target : '@UI.FieldGroup#PlanetsInformation',
        },
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'NaturalSatellitesInfoFacet',
            Label : 'Natural Satellite Information',
            Target : 'Natural/@UI.LineItem',
        },
    ],    
);

annotate AstronomyThings.NaturalSatellites with @(
    UI.LineItem: [
        {
            $Type : 'UI.DataField',
            Label:'Planets ID',
            Value : naturalsatellite_id_ID
        },
        {
            $Type : 'UI.DataField',
            Value : name
        },
        {
            $Type : 'UI.DataField',
            Value : forplanet
        },
        {
            $Type : 'UI.DataField',
            Value : distance
        }
    ],  
);
annotate AstronomyThings.NaturalSatellites with @(       
    UI.FieldGroup #NaturalSatellitesInformation : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
            $Type : 'UI.DataField',
            
            Value : naturalsatellite_id_ID
        },
        {
            $Type : 'UI.DataField',
            Value : name
        },
        {
            $Type : 'UI.DataField',
            Value : forplanet
        },
        {
            $Type : 'UI.DataField',
            Value : distance
        }
        
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'NaturalSatellitesInfoFacet',
            Label : 'Natural Satellite Information',
            Target : '@UI.FieldGroup#NaturalSatellitesInformation',
        },
    ],    
);