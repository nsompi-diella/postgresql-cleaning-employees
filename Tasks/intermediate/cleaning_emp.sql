--====================================

--INTERMEDIATE CLEANING EMPLOYEES TABLE 

--==================================



SELECT 
e.ID,
TRIM(UPPER(e.fullname)) as fullname ,
TRIM(LEFT(e.phone,4)) as phone_code,
TRIM(SUBSTRING(phone,5))  as phone_number,
SPLIT_PART(email,'@',1) as username,
SPLIT_PART (
SPLIT_PART(email,'@',2),
'.',1
)
as domain_name  ,
SPLIT_PART (
SPLIT_PART(email,'@',2),
'.',2
)
as domain_extension  ,
e.age,
CASE
    WHEN e.age BETWEEN 0 AND 2 THEN 'Infant'
    WHEN e.age BETWEEN 3 AND 5 THEN 'Toddler'
    WHEN e.age BETWEEN 6 AND 12 THEN 'Child'
    WHEN e.age BETWEEN 13 AND 17 THEN 'Teenager'
    WHEN e.age BETWEEN 18 AND 24 THEN 'Young Adult'
    WHEN e.age BETWEEN 25 AND 34 THEN 'Adult'
    WHEN e.age BETWEEN 35 AND 44 THEN 'Mid Adult'
    WHEN e.age BETWEEN 45 AND 54 THEN 'Mature Adult'
    WHEN e.age BETWEEN 55 AND 64 THEN 'Pre-Senior'
    WHEN e.age BETWEEN 65 AND 74 THEN 'Young Senior'
    WHEN e.age BETWEEN 75 AND 84 THEN 'Senior'
    WHEN e.age BETWEEN 85 AND 99 THEN 'Elderly'
    ELSE 'Centenarian'
END AS age_category,
UPPER(d.name) AS department_name,
ROUND(e.salary) as salary,
UPPER(c.name) as countries_name,
e.city,
INITCAP(e.status) as status, 
COALESCE(LOWER(e.address),'empty') as address,
TO_CHAR(e.hire_date,'dd/mm/yyyy') as hire_date
FROM employees as e
LEFT JOIN countries as c ON e.country_id =c.id
LEFT JOIN departments as d ON e.department_id=d.id
WHERE e.fullname IS NOT NULL
AND e.email IS NOT NULL
AND ( e.age IS NOT NULL AND e.age > 0 ) 
AND ( e.salary IS NOT NULL AND e.salary>0 )
AND e.phone IS NOT NULL
AND country_id IS NOT NULL
AND department_id IS NOT NULL
AND hire_date IS NOT NULL 
AND e.status ='Actif'
ORDER BY e.ID ASC  ;


-- =========================== 

