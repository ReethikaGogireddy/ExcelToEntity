sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'excelupload/test/integration/FirstJourney',
		'excelupload/test/integration/pages/PlanetsList',
		'excelupload/test/integration/pages/PlanetsObjectPage'
    ],
    function(JourneyRunner, opaJourney, PlanetsList, PlanetsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('excelupload') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onThePlanetsList: PlanetsList,
					onThePlanetsObjectPage: PlanetsObjectPage
                }
            },
            opaJourney.run
        );
    }
);