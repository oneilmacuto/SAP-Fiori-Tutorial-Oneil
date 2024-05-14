sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'choirmasterlist',
            componentId: 'ChoirMembersList',
            contextPath: '/ChoirMembers'
        },
        CustomPageDefinitions
    );
});