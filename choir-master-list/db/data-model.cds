namespace choirs;
using { managed, cuid } from '@sap/cds/common';

  entity Choirs : managed {
    key ID      : String;
    ChoirName   : String;
    Status      : String;
    YearFounded : String;
    Acronym     : String;
    ChoirCoordinator  : String;
    MassSchedule : String;
  }

  entity ChoirMembers : cuid, managed {
    key ID    : UUID;
    Name      : String;
    ChoirId_ID   : String;
    VocalSection  : String;
    Status_ID    : String;
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

  view ChoirMember_Chorale_View as
    select from ChoirMembers
    left join Choirs on ChoirMembers.ChoirId_ID = Choirs.ID
    left join Status on ChoirMembers.Status_ID = Status.ID
    {
      ChoirMembers.Name,
      ChoirMembers.VocalSection,
      ChoirMembers.GrandChoirMember,
      ChoirMembers.GCMember,
      ChoirMembers.JuniorChoir,
      ChoirMembers.StatusCrit,
      ChoirMembers.Age,
      Choirs.ChoirName,
      Choirs.YearFounded,
      Status.Status
    }
