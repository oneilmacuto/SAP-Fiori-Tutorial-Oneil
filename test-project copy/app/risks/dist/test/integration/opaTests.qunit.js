sap.ui.require(["sap/fe/test/JourneyRunner","ns/risks/test/integration/FirstJourney","ns/risks/test/integration/pages/RisksList","ns/risks/test/integration/pages/RisksObjectPage"],function(s,e,i,t){"use strict";var s=new s({launchUrl:sap.ui.require.toUrl("ns/risks")+"/index.html"});s.run({pages:{onTheRisksList:i,onTheRisksObjectPage:t}},e.run)});