sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'choirmasterlistv2/choirmasterlistv2/test/integration/FirstJourney',
		'choirmasterlistv2/choirmasterlistv2/test/integration/pages/ChoirMembersList',
		'choirmasterlistv2/choirmasterlistv2/test/integration/pages/ChoirMembersObjectPage'
    ],
    function(JourneyRunner, opaJourney, ChoirMembersList, ChoirMembersObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('choirmasterlistv2/choirmasterlistv2') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheChoirMembersList: ChoirMembersList,
					onTheChoirMembersObjectPage: ChoirMembersObjectPage
                }
            },
            opaJourney.run
        );
    }
);