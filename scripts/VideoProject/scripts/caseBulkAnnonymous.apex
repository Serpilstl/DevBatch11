List<Case> listCase = new List<Case>();
for (Integer i = 0; i < 205; i++) {
    case c = new case ();
    c.Subject = 'There is a bug';
    c.Description = 'Resolve it';
    c.Status = 'New';
    c.Origin = 'Web';
    listCase.add(c);
    
}
insert listCase;

List<case>getCases = [select id,status from case where status = 'New'];
for (case eachCase : getCases) {
    eachCase.status ='Working';
    
}
update getCases;