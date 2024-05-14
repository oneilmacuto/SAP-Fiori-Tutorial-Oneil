using choirs as my from '../db/data-model';

service ChoirService {
    entity Choirs @(
        Capabilities : { 
            InsertRestrictions : {
                $Type : 'Capabilities.InsertRestrictionsType',
                Insertable,
            },
            UpdateRestrictions : {
                $Type : 'Capabilities.UpdateRestrictionsType',
                Updatable,
            },
            DeleteRestrictions : {
                $Type : 'Capabilities.DeleteRestrictionsType',
                Deletable,
            },
        },
    ) as projection on my.Choirs;
    entity Status as projection on my.Status;
    entity ChoirMembers @(
        Capabilities : { 
            InsertRestrictions : {
                $Type : 'Capabilities.InsertRestrictionsType',
                Insertable,
            },
            UpdateRestrictions : {
                $Type : 'Capabilities.UpdateRestrictionsType',
                Updatable,
            },
            DeleteRestrictions : {
                $Type : 'Capabilities.DeleteRestrictionsType',
                Deletable,
            },
        },
    )
    as projection on my.ChoirMembers;
    annotate ChoirMembers with @odata.draft.enabled;
    entity ChoirMember_Chorale_View as projection on my.ChoirMember_Chorale_View;
}
