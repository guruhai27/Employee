sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'guru/emp/employeeapp/test/integration/FirstJourney',
		'guru/emp/employeeapp/test/integration/pages/EmployeeSetList',
		'guru/emp/employeeapp/test/integration/pages/EmployeeSetObjectPage'
    ],
    function(JourneyRunner, opaJourney, EmployeeSetList, EmployeeSetObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('guru/emp/employeeapp') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheEmployeeSetList: EmployeeSetList,
					onTheEmployeeSetObjectPage: EmployeeSetObjectPage
                }
            },
            opaJourney.run
        );
    }
);