sap.ui.define(["sap/ui/test/opaQunit"],function(i){"use strict";var e={run:function(){QUnit.module("First journey");i("Start application",function(i,e,t){i.iStartMyApp();t.onTheRisksList.iSeeThisPage()});i("Navigate to ObjectPage",function(i,e,t){e.onTheRisksList.onFilterBar().iExecuteSearch();t.onTheRisksList.onTable().iCheckRows();e.onTheRisksList.onTable().iPressRow(0);t.onTheRisksObjectPage.iSeeThisPage()});i("Teardown",function(i,e,t){i.iTearDownMyApp()})}};return e});