select dnumber,count(*) as no_of_locations from DEPT_LOCATIONS where dnumber IN(select Dnumber from DEPARTMENT where mgr_ssn IN( select essn from DEPENDENT where sex="F" group by essn HAVING
count(*)>=2 )) group by dnumber;
