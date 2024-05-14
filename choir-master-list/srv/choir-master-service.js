const cds = require("@sap/cds");

module.exports = cds.service.impl(async function() {
    this.after('READ', 'ChoirMember_Chorale_View', choirMembersData => {
        const members = Array.isArray(choirMembersData) ? choirMembersData : [choirMembersData];
        members.forEach(member => {
            if (member.GrandChoirMember === "Y") {
                member.GCMember = 0;
            } else {
                member.GCMember = 1;
            }
            if (parseInt(member.ChoirId?.YearFounded) > 2018) {
                member.JuniorChoir = 1;
            } else {
                member.JuniorChoir = 0;
            }
            if (member.Status?.Status === "Active") {
                member.StatusCrit = 0;
            } else {
                member.StatusCrit = 1;
            }
        });
    });
});