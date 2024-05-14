namespace choirs;
using { managed } from '@sap/cds/common';

  entity Choirs : managed {
    key ID      : String;
    ChoirName   : String;
    Status      : String;
    YearFounded : String;
    Acronym     : String;
    ChoirCoordinator  : String;
    MassSchedule : String;
  }

  entity ChoirMembers : managed {
    key ID    : String;
    Name      : String;
    ChoirId   : String;
    VocalSection  : String;
    Status    : String;
    GrandChoirMember  : String;
  }
