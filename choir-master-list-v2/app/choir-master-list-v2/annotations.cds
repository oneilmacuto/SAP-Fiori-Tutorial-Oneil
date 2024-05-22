using ChoirService as service from '../../srv/choir-master-service';

annotate service.ChoirMembers with {
	Name        @title: 'Name';
	VocalSection        @(
        title: 'Vocal Section',
        Common: {
            ValueList : {
                $Type : 'Common.ValueListType',
                CollectionPath : 'VocalSection',
                Parameters: [
                    {
                        $Type : 'Common.ValueListParameterInOut',
                        LocalDataProperty : VocalSection,
                        ValueListProperty : 'VocalSection',
                    },
                    {
                        $Type : 'Common.ValueListParameterDisplayOnly',
                        ValueListProperty : 'VocalRange',
                    },
                ]
            },
        }
    );
    Choir @(
        title: 'Choir',
        Common: {
            ValueList : {
                $Type : 'Common.ValueListType',
                CollectionPath : 'Choirs',
                Parameters: [
                    {
                        $Type : 'Common.ValueListParameterInOut',
                        LocalDataProperty : Choir_ChoirName,
                        ValueListProperty : 'ChoirName',
                    },
                    {
                        $Type : 'Common.ValueListParameterDisplayOnly',
                        ValueListProperty : 'ChoirCoordinator',
                    },
                ]
            },
        }
    );
    GrandChoirMember @title: 'Grand Choir Member?';
    GCMember;
    JuniorChoir;
    StatusCrit;
	Age @title: 'Age';
	Status @(
        title: 'Status',
        Common: {
            ValueListWithFixedValues,
            ValueList : {
                $Type : 'Common.ValueListType',
                CollectionPath : 'Status',
                Parameters: [
                    {
                        $Type : 'Common.ValueListParameterInOut',
                        LocalDataProperty : Status,
                        ValueListProperty : 'Status',
                    },
                ]
            },
        }
    );
};

annotate service.ChoirMembers with @(
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
				Value: Choir_ChoirName,
			}
		},
		SelectionFields: [Status, Choir_ChoirName, VocalSection],
		LineItem: [
			{
				Value: Name,
				![@HTML5.CssDefaults] : {width : '100%'}
			},
            {Value: Choir_ChoirName,
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
                Value: Choir.ChoirCoordinator,
                Label: 'Choir Coordinator'
            }
		],
		Facets: [
			{$Type: 'UI.ReferenceFacet', Label: 'Main', Target: '@UI.FieldGroup#Main'},
            {$Type: 'UI.ReferenceFacet', Label: 'Chorale Details', Target: '@UI.FieldGroup#Choirs'},
            {$Type: 'UI.ReferenceFacet', Label : 'Trainings', Target: 'Trainings/@UI.LineItem',}
		],
		FieldGroup#Main: {
			Data: [
				{Value: Name},
                {Value: Choir_ChoirName},
				{Value: Status},
				{Value: VocalSection},
                {Value: GrandChoirMember},
                {Value: Age}
			]
		},
        FieldGroup #Choirs : {
            $Type : 'UI.FieldGroupType',
            Data: [
                {Value: Choir.ChoirName},
                {Value: Choir.ChoirCoordinator},
                {Value: Choir.MassSchedule},
                {Value: Choir.YearFounded},
                {Value: Choir.Acronym}
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

annotate service.Choirs with {
    ChoirName @title: 'Chorale Name';
    MassSchedule @title: 'Mass Schedule';
    ChoirCoordinator @title: 'Choir Coordinator';
    YearFounded @title: 'Year Founded';
    Acronym @title: 'Acronym';
};

annotate service.Choirs with @(
    UI: {
        LineItem  : [
            {
                $Type : 'UI.DataField',
                Value : ChoirName,
                Label : 'Choir Name',
            }
        ],
        Facets  : [
            {$Type : 'UI.ReferenceFacet', Label: 'Sub', Target: '@UI.FieldGroup#Choirs'}
        ],
        FieldGroup#Choirs: {
			Data: [
				{Value: ChoirName},
				{Value: ChoirCoordinator},
                {Value: YearFounded},
                {Value: Acronym}
			]
		}
    }
);

annotate service.TrainingSet with @(
    UI: {
        LineItem  : [
            {
                Value: Lvl,
                Label : 'Level',
            },
            {
                Value : Trainings,
            },
        ],
    }
);
