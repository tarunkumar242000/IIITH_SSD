select count(*) as count, from EMPLOYEE e,EMPLOYEE d where e.ssn=d.super_ssn group by d.super_ssn ORDER BY super_ssn;
