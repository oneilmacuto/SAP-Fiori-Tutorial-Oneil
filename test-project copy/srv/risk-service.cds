using { choirs as my } from '../db/schema';

@path: 'service/risk'
service ChoirsService {
  entity Choirs as projection on my.Choirs;
    annotate Choirs with @odata.draft.enabled;
  entity ChoirMembers as projection on my.ChoirMembers;
    annotate ChoirMembers with @odata.draft.enabled;
}