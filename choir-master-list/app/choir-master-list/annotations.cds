using ChoirService as service from '../../srv/choir-master-service';

// annotate service.ChoirMember_Chorale_View with {
// 	Name        @title: 'Name';
// 	VocalSection        @title: 'Vocal Section';
//     GrandChoirMember @title: 'Grand Choir Member?';
//     GCMember;
//     JuniorChoir;
//     StatusCrit;
// 	Age;
// 	ChoirName;
// 	Status;
// 	YearFounded;
// };

// annotate service.ChoirMember_Chorale_View with @(
// 	UI: {
// 		HeaderInfo: {
// 			TypeName: 'Music Ministy Choir Member',
// 			TypeNamePlural: 'Music Ministy Choir Members',
// 			Title          : {
//                 $Type : 'UI.DataField',
//                 Value : Name
//             },
// 			Description: {
// 				$Type: 'UI.DataField',
// 				Value: ChoirName,
// 			}
// 		},
// 		SelectionFields: [Status, ChoirName],
// 		LineItem: [
// 			{
// 				Value: Name,
// 				![@HTML5.CssDefaults] : {width : '100%'}
// 			},
//             {Value: ChoirName,
//             Label: 'Chorale'},
// 			{
// 				Value: Status,
//                 Criticality: StatusCrit
// 			},
// 			{
// 				Value: VocalSection
// 			},
//             {
//                 Value: GrandChoirMember,
//                 Criticality: GCMember
//             },
//             {
//                 Value: YearFounded,
//                 Criticality: JuniorChoir,
//                 Label: 'Choir Founded In/From a Junior Choir?'
//             }
// 		],
// 		Facets: [
// 			{$Type: 'UI.ReferenceFacet', Label: 'Main', Target: '@UI.FieldGroup#Main'}
// 		],
// 		FieldGroup#Main: {
// 			Data: [
// 				{Value: Name},
// 				{Value: ChoirName},
// 				{
// 					Value: Status
// 				},
// 				{
// 					Value: VocalSection
// 				}
// 			]
// 		},
// 		Identification  : [
// 			{
// 				Value: Name,
// 				Label: 'Name'
// 			},
// 			{
// 				Value: Age,
// 				Label: 'Age'
// 			}
// 		],
// 	},
// ) {
	
// };

// annotate service.ChoirMembers with {
// 	ID          @title: 'ID';
// 	Name        @title: 'Name';
// 	VocalSection        @title: 'Vocal Section';
// 	StatusId;
//     ChoirId     @(
// 		title: 'Chorale ID',
// 		Common: {
// 			ValueListWithFixedValues,
// 			ValueList : {
// 				$Type : 'Common.ValueListType',
// 				CollectionPath : 'Choirs',
// 				Label: 'Chorale ID',
// 				Parameters: [
// 					{
// 						$Type : 'Common.ValueListParameterOut',
// 						LocalDataProperty : ID,
// 						ValueListProperty : 'ID',
// 					},
// 					{
// 						$Type : 'Common.ValueListParameterDisplayOnly',
// 						ValueListProperty : 'ChoirName',
// 					}
// 				]
// 			},
// 		}
// 	);
//     GrandChoirMember @title: 'Grand Choir Member?';
//     GCMember;
//     JuniorChoir;
//     StatusCrit;
// 	Age;
// }

// annotate service.ChoirMembers with @(
// 	UI: {
// 		HeaderInfo: {
// 			TypeName: 'Music Ministy Choir Member',
// 			TypeNamePlural: 'Music Ministy Choir Members',
// 			Title          : {
//                 $Type : 'UI.DataField',
//                 Value : Name
//             },
// 			Description: {
// 				$Type: 'UI.DataField',
// 				Value: ChoirId.ChoirName,
// 			}
// 		},
// 		SelectionFields: [Status.Status, ChoirId.ChoirName],
// 		LineItem: [
// 			{
// 				Value: Name,
// 				![@HTML5.CssDefaults] : {width : '100%'}
// 			},
//             {Value: ChoirId.ChoirName,
//             Label: 'Chorale'},
// 			{
// 				Value: Status.Status,
//                 Criticality: StatusCrit
// 			},
// 			{
// 				Value: VocalSection
// 			},
//             {
//                 Value: GrandChoirMember,
//                 Criticality: GCMember
//             },
//             {
//                 Value: ChoirId.YearFounded,
//                 Criticality: JuniorChoir,
//                 Label: 'Choir Founded In/From a Junior Choir?'
//             }
// 		],
// 		Facets: [
// 			{$Type: 'UI.ReferenceFacet', Label: 'Main', Target: '@UI.FieldGroup#Main'}
// 		],
// 		FieldGroup#Main: {
// 			Data: [
// 				{Value: Name},
// 				{Value: ChoirId.ID},
// 				{Value: ID},
// 				{
// 					Value: Status.Status
// 				},
// 				{
// 					Value: VocalSection
// 				}
// 			]
// 		},
// 		Identification  : [
// 			{
// 				Value: Name,
// 				Label: 'Name'
// 			},
// 			{
// 				Value: Age,
// 				Label: 'Age'
// 			}
// 		],
// 	},
// ) {
	
// };

// annotate service.Choirs with {
// 	ChoirName @(
// 		title: 'Chorale Name',
// 		Common: {
// 			ValueList : {
// 				$Type : 'Common.ValueListType',
// 				CollectionPath : 'Choirs',
// 				Label: 'Chorale Name',
// 				Parameters: [
// 					{
// 						$Type : 'Common.ValueListParameterOut',
// 						LocalDataProperty : ChoirName,
// 						ValueListProperty : 'ChoirName',
// 					},
// 					{
// 						$Type : 'Common.ValueListParameterDisplayOnly',
// 						ValueListProperty : 'ChoirCoordinator',
// 					},
// 				]
// 			},
// 		}
// 	);
// 	ChoirCoordinator @title: 'Choir Coordinator';
// 	ID @(
// 		title: 'Chorale ID',
// 		Common: {
// 			ValueList : {
// 				$Type : 'Common.ValueListType',
// 				CollectionPath : 'Choirs',
// 				Label: 'Chorale ID',
// 				Parameters: [
// 					{
// 						$Type : 'Common.ValueListParameterOut',
// 						LocalDataProperty : ID,
// 						ValueListProperty : 'ID',
// 					},
// 					{
// 						$Type : 'Common.ValueListParameterDisplayOnly',
// 						ValueListProperty : 'ChoirName',
// 					}
// 				]
// 			},
// 		}
// 	)
// }

// annotate service.Status with {
// 	Status      @(
// 		title: 'Status',
// 		Common : { 
// 			ValueListWithFixedValues,
// 			ValueList : {
// 				$Type : 'Common.ValueListType',
// 				CollectionPath : 'Status',
// 				Label : 'Status',
// 				Parameters : [
// 					{
// 						$Type : 'Common.ValueListParameterOut',
// 						LocalDataProperty : Status,
// 						ValueListProperty : 'Status',
// 					},
// 				],
// 			},
// 		 },
// 	);
// };




// annotate service.ChoirMembers with @(
//     UI.LineItem : [
//         {
//             $Type : 'UI.DataField',
//             Label : 'ID',
//             Value : ID,
//         },
//         {
//             $Type : 'UI.DataField',
//             Label : 'Name',
//             Value : Name,
//         },
//         {
//             $Type : 'UI.DataField',
//             Label : 'Choir Id',
//             Value : ChoirId,
//         },
//         {
//             $Type : 'UI.DataField',
//             Label : 'Vocal Section',
//             Value : VocalSection,
//         },
//         {
//             $Type : 'UI.DataField',
//             Label : 'Status',
//             Value : Status,
//         },
//     ]
// );
// annotate service.ChoirMembers with @(
//     UI.FieldGroup #GeneratedGroup1 : {
//         $Type : 'UI.FieldGroupType',
//         Data : [
//             {
//                 $Type : 'UI.DataField',
//                 Label : 'ID',
//                 Value : ID,
//             },
//             {
//                 $Type : 'UI.DataField',
//                 Label : 'Name',
//                 Value : Name,
//             },
//             {
//                 $Type : 'UI.DataField',
//                 Label : 'ChoirId',
//                 Value : ChoirId,
//             },
//             {
//                 $Type : 'UI.DataField',
//                 Label : 'VocalSection',
//                 Value : VocalSection,
//             },
//             {
//                 $Type : 'UI.DataField',
//                 Label : 'Status',
//                 Value : Status,
//             },
//             {
//                 $Type : 'UI.DataField',
//                 Label : 'GrandChoirMember',
//                 Value : GrandChoirMember,
//             },
//         ],
//     },
//     UI.Facets : [
//         {
//             $Type : 'UI.ReferenceFacet',
//             ID : 'GeneratedFacet1',
//             Label : 'General Information',
//             Target : '@UI.FieldGroup#GeneratedGroup1',
//         },
//     ]
// );
