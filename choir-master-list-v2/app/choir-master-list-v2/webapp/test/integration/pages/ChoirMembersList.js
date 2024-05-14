sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'choirmasterlistv2.choirmasterlistv2',
            componentId: 'ChoirMembersList',
            contextPath: '/ChoirMembers'
        },
        CustomPageDefinitions
    );
});