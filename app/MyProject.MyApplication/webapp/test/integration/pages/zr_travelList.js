sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'MyProject.MyApplication',
            componentId: 'zr_travelList',
            contextPath: '/zr_travel'
        },
        CustomPageDefinitions
    );
});