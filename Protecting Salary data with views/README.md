I'll use views in this project to hide sensitive salary data in the employees table. The company in question has one database for each user in all departments (Human resource, Supply chain, Quality Assurance, Aftersales etc) who are allowed to access most of the employee data. However, only users from the HR department should be able to view the salaries.

### Controlling permissions
I have one database user per department hr_user, aftersales_user, qa_user etc. The employee table is only granted access to the hr_user.