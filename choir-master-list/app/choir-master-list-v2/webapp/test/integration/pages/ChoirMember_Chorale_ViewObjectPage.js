sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'choirmasterlistv2.choirmasterlistv2',
            componentId: 'ChoirMember_Chorale_ViewObjectPage',
            contextPath: '/ChoirMember_Chorale_View'
        },
        CustomPageDefinitions
    );
});