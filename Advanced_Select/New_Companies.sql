SELECT company.company_code, company.founder,
COUNT(DISTINCT lm.lead_manager_code) AS Total_lead_manager,
COUNT(DISTINCT sm.senior_manager_code) AS Total_senior_manager,
COUNT(DISTINCT m.manager_code) AS Total_manager,
COUNT(DISTINCT e.employee_code) AS Total_employee,
FROM Company company
LEFT JOIN 
    lead_manager lm ON company.company_code = lm.company_code
LEFT JOIN
    senior_manager sm ON company.company_code=sm.company_code
LEFT JOIN
    manager m ON company.company_code=m.company_code
LEFT JOIN
    employee e ON company.company_code=e.company_code
GROUP BY company.company_code,company.founder
ORDER BY company.company_code;