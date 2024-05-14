using choirs as my from '../db/data-model';

service ChoirService {
    @readonly entity Choirs as projection on my.Choirs;
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
    entity Status as projection on my.Status;
    entity VocalSection as projection on my.VocalSection;
}