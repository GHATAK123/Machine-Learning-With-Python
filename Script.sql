select E.F_NAME,E.L_NAME,JH.START_DATE from EMPLOYEES as E 
  INNER JOIN JOB_HISTORY as JH 
   on E.EMP_ID=JH.EMPL_ID where JH.DEPT_ID='5';
   
 select E.F_NAME,E.L_NAME,JH.START_DATE,JB.JOB_TITLE from EMPLOYEES as E 
  INNER JOIN JOB_HISTORY as JH on E.EMP_ID=JH.EMPL_ID INNER JOIN JOBS AS JB on E.JOB_ID=JB.JOB_IDENT
    where JH.DEPT_ID='5'; 
  
select E.EMP_ID,E.L_NAME,D.DEPT_ID_DEP,D.DEP_NAME from EMPLOYEES as E  LEFT OUTER JOIN DEPARTMENTS
 as D on E.MANAGER_ID=D.MANAGER_ID;
 
   
select E.EMP_ID,E.L_NAME,D.DEPT_ID_DEP,D.DEP_NAME from EMPLOYEES as E  LEFT OUTER JOIN DEPARTMENTS
 as D on E.MANAGER_ID=D.MANAGER_ID where YEAR(E.B_DATE)<1980;
 
 select E.EMP_ID,E.L_NAME,D.DEPT_ID_DEP,D.DEP_NAME
	from EMPLOYEES AS E 
	LEFT OUTER JOIN DEPARTMENTS AS D ON E.MANAGER_ID=D.MANAGER_ID  
	AND YEAR(E.B_DATE) < 1980;
 
 select E.F_NAME,E.L_NAME,D.DEP_NAME
	from EMPLOYEES AS E 
	FULL OUTER JOIN DEPARTMENTS AS D ON E.DEP_ID=D.DEPT_ID_DEP
;
--- Query 3B ---
select E.F_NAME,E.L_NAME,D.DEPT_ID_DEP, D.DEP_NAME
	from EMPLOYEES AS E 
	FULL OUTER JOIN DEPARTMENTS AS D ON E.DEP_ID=D.DEPT_ID_DEP AND E.SEX = 'M'
;