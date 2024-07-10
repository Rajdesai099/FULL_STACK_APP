sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'MyProject/MyApplication/test/integration/FirstJourney',
		'MyProject/MyApplication/test/integration/pages/zr_travelList',
		'MyProject/MyApplication/test/integration/pages/zr_travelObjectPage'
    ],
    function(JourneyRunner, opaJourney, zr_travelList, zr_travelObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('MyProject/MyApplication') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onThezr_travelList: zr_travelList,
					onThezr_travelObjectPage: zr_travelObjectPage
                }
            },
            opaJourney.run
        );
    }
);