using ChoirService as service from '../../srv/choir-master-service';

annotate service.ChoirMember_Chorale_View with {
	Name        @title: 'Name';
	VocalSection        @title: 'Vocal Section';
    GrandChoirMember @title: 'Grand Choir Member?';
    GCMember;
    JuniorChoir;
    StatusCrit;
	Age;
	ChoirName;
	Status;
	YearFounded;
};

annotate service.ChoirMember_Chorale_View with @(
	UI: {
		HeaderInfo: {
			TypeName: 'Music Ministy Choir Member',
			TypeNamePlural: 'Music Ministy Choir Members',
			Title          : {
                $Type : 'UI.DataField',
                Value : Name
            },
			Description: {
				$Type: 'UI.DataField',
				Value: ChoirName,
			}
		},
		SelectionFields: [Status, ChoirName],
		LineItem: [
			{
				Value: Name,
				![@HTML5.CssDefaults] : {width : '100%'}
			},
            {Value: ChoirName,
            Label: 'Chorale'},
			{
				Value: Status,
                Criticality: StatusCrit
			},
			{
				Value: VocalSection
			},
            {
                Value: GrandChoirMember,
                Criticality: GCMember
            },
            {
                Value: YearFounded,
                Criticality: JuniorChoir,
                Label: 'Choir Founded In/From a Junior Choir?'
            }
		],
		Facets: [
			{$Type: 'UI.ReferenceFacet', Label: 'Main', Target: '@UI.FieldGroup#Main'}
		],
		FieldGroup#Main: {
			Data: [
				{Value: Name},
				{Value: ChoirName},
				{
					Value: Status
				},
				{
					Value: VocalSection
				}
			]
		},
		Identification  : [
			{
				Value: Name,
				Label: 'Name'
			},
			{
				Value: Age,
				Label: 'Age'
			}
		],
	},
) {
	
};