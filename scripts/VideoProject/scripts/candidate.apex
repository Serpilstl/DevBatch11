Candidates.CompanyName='Soft Innovas';
Candidates.printCandidateInfo();
system.debug('count of candidates= '+Candidates.countCandidates);

Candidates c1=new Candidates();

c1.Name='Jeery';
c1.Gender='Female';
c1.printCandidate();

Candidates c2=new Candidates();

c2.Name='Jane';
c2.Gender='Female';
c2.printCandidate();
Candidates.CompanyName='Vandelays';

Candidates c3=new Candidates();

c3.Name='Mark';
c3.Gender='Male';
c3.printCandidate();
system.debug('.....');
Candidates.printCandidateInfo();
system.debug(' END '+Candidates.countCandidates);

