sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'planets/test/integration/FirstJourney',
		'planets/test/integration/pages/PlanetsList',
		'planets/test/integration/pages/PlanetsObjectPage',
		'planets/test/integration/pages/NaturalSatellitesObjectPage'
    ],
    function(JourneyRunner, opaJourney, PlanetsList, PlanetsObjectPage, NaturalSatellitesObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('planets') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onThePlanetsList: PlanetsList,
					onThePlanetsObjectPage: PlanetsObjectPage,
					onTheNaturalSatellitesObjectPage: NaturalSatellitesObjectPage
                }
            },
            opaJourney.run
        );
    }
);