SELECT p1.name AS person_name1, pp.name AS person_name2	, p1.address AS common_address
from person p1
         inner join person pp on p1.address = pp.address and p1.id > pp.id
ORDER BY person_name1, person_name2	, common_address


