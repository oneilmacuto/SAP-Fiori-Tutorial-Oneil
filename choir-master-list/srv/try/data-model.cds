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
    ChoirId   : Association to Choirs;
    VocalSection  : String;
    Status    : Association to Status;
    GrandChoirMember  : String;
    GCMember: Integer;
    JuniorChoir: Integer;
    StatusCrit: Integer;
    Age: Integer;
  }

  entity Status : managed {
    key ID  : String;
    Status  : String;
  }
