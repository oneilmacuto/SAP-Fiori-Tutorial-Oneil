using ChoirsService from './risk-service';

annotate ChoirsService.Choirs with {
	ID       @title: 'ID';
	ChoirName        @title: 'Choir Name';
	Status       @title: 'Status';
	YearFounded        @title: 'Year Founded';
	Acronym      @title: 'Acronym';
	ChoirCoordinator @title: 'Choir Coordinator';
	MassSchedule @title: 'Mass Schedule';
}

// annotate ChoirsService.Mitigations with {
// 	ID @(
// 		UI.Hidden,
// 		Common: {
// 		Text: description
// 		}
// 	);
// 	description  @title: 'Description';
// 	owner        @title: 'Owner';
// 	timeline     @title: 'Timeline';
// 	risks        @title: 'Risks';
// }

// annotate ChoirsService.Risks with @(
// 	UI: {
// 		HeaderInfo: {
// 			TypeName: 'Risk',
// 			TypeNamePlural: 'Risks',
// 			Title          : {
//                 $Type : 'UI.DataField',
//                 Value : title
//             },
// 			Description : {
// 				$Type: 'UI.DataField',
// 				Value: descr
// 			}
// 		},
// 		SelectionFields: [prio],
// 		LineItem: [
// 			{Value: title},
// 			{
// 				Value: miti_ID,
// 				![@HTML5.CssDefaults] : {width : '100%'}
// 			},
// 			{
// 				Value: prio,
// 				Criticality: criticality
// 			},
// 			{
// 				Value: impact,
// 				Criticality: criticality
// 			}
// 		],
// 		Facets: [
// 			{$Type: 'UI.ReferenceFacet', Label: 'Main', Target: '@UI.FieldGroup#Main'}
// 		],
// 		FieldGroup#Main: {
// 			Data: [
// 				{Value: miti_ID},
// 				{
// 					Value: prio,
// 					Criticality: criticality
// 				},
// 				{
// 					Value: impact,
// 					Criticality: criticality
// 				}
// 			]
// 		}
// 	},
// ) {

// };

// annotate ChoirsService.Risks with {
// 	miti @(
// 		Common: {
// 			//show text, not id for mitigation in the context of risks
// 			Text: miti.description  , TextArrangement: #TextOnly,
// 			ValueList: {
// 				Label: 'Mitigations',
// 				CollectionPath: 'Mitigations',
// 				Parameters: [
// 					{ $Type: 'Common.ValueListParameterInOut',
// 						LocalDataProperty: miti_ID,
// 						ValueListProperty: 'ID'
// 					},
// 					{ $Type: 'Common.ValueListParameterDisplayOnly',
// 						ValueListProperty: 'description'
// 					}
// 				]
// 			}
// 		}
// 	);
// }
