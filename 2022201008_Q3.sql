select essn,count(*) as count from WORKS_ON where essn IN( select mgr_ssn from DEPARTMENT wh
ere dnumber IN ( select dnum from PROJECT where pname="ProductY") ) group by essn;
