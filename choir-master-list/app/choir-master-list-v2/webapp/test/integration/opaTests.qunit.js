sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'choirmasterlistv2/choirmasterlistv2/test/integration/FirstJourney',
		'choirmasterlistv2/choirmasterlistv2/test/integration/pages/ChoirMember_Chorale_ViewList',
		'choirmasterlistv2/choirmasterlistv2/test/integration/pages/ChoirMember_Chorale_ViewObjectPage'
    ],
    function(JourneyRunner, opaJourney, ChoirMember_Chorale_ViewList, ChoirMember_Chorale_ViewObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('choirmasterlistv2/choirmasterlistv2') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheChoirMember_Chorale_ViewList: ChoirMember_Chorale_ViewList,
					onTheChoirMember_Chorale_ViewObjectPage: ChoirMember_Chorale_ViewObjectPage
                }
            },
            opaJourney.run
        );
    }
);