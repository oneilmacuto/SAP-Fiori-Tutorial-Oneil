namespace choirs;
using { managed, cuid } from '@sap/cds/common';

  entity Choirs : managed {
    ID      : String;
    key ChoirName   : String;
    Status      : String;
    YearFounded : String;
    Acronym     : String;
    ChoirCoordinator  : String;
    MassSchedule : String;
  }

  entity ChoirMembers : cuid, managed {
    key ID    : UUID;
    Name      : String;
    Choir   : Association to Choirs;
    VocalSection  : String;
    Status    : String;
    GrandChoirMember  : String;
    GCMember: Integer;
    JuniorChoir: Integer;
    StatusCrit: Integer;
    Age: Integer;
    Lvl: String;
    Trainings              : Composition of many TrainingSet on Trainings.Lvl = Lvl;
  }

  entity Status : managed {
    key ID: String;
    Status: String;
  }

  entity VocalSection : cuid {
    key ID: String;
    VocalSection: String;
    VocalRange: String;
  }

  entity TrainingSet : managed {
    Lvl: String;
    Trainings: String;
  }

  // entity ChoirMember_Chorale_View as
  //   select from ChoirMembers
  //   left join Choirs on ChoirMembers.ChoirId_ID = Choirs.ID
  //   left join Status on ChoirMembers.Status_ID = Status.ID
  //   {
  //     ChoirMembers.Name,
  //     ChoirMembers.VocalSection,
  //     ChoirMembers.GrandChoirMember,
  //     ChoirMembers.GCMember,
  //     ChoirMembers.JuniorChoir,
  //     ChoirMembers.StatusCrit,
  //     ChoirMembers.Age,
  //     Choirs.ChoirName,
  //     Choirs.YearFounded,
  //     Status.Status
  //   }
