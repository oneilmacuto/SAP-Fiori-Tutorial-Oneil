sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'choirmasterlist/test/integration/FirstJourney',
		'choirmasterlist/test/integration/pages/ChoirMembersList',
		'choirmasterlist/test/integration/pages/ChoirMembersObjectPage'
    ],
    function(JourneyRunner, opaJourney, ChoirMembersList, ChoirMembersObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('choirmasterlist') + '/index.html'
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