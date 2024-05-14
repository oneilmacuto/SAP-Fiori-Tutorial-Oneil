sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'choirmasterlistv2.choirmasterlistv2',
            componentId: 'ChoirMember_Chorale_ViewList',
            contextPath: '/ChoirMember_Chorale_View'
        },
        CustomPageDefinitions
    );
});