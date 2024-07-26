sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'planets',
            componentId: 'PlanetsObjectPage',
            contextPath: '/Planets'
        },
        CustomPageDefinitions
    );
});