
# My Solution

✔ Converted employee names to uppercase and removed unnecessary spaces.

✔ Split phone numbers into Phone Code and Phone Number.

✔ Extracted the Username, Domain Name, and Domain Extension from each email address.

✔ Removed records where Age was NULL or less than or equal to 0.

✔ Created age groups using a CASE statement:

Infant
Toddler
Child
Teenager
Young Adult
Adult
Mid Adult
Mature Adult
Pre-Senior
Young Senior
Senior
Elderly
Centenarian

✔ Joined the Departments table to retrieve the Department Name.

✔ Removed NULL salaries, kept salaries greater than 0, and rounded salary values.

✔ Joined the Countries table to retrieve the Country Name.

✔ Kept only active employees and formatted the Status column using INITCAP().

✔ Replaced NULL values in the Address column with "empty".

✔ Formatted the Hire Date using the DD/MM/YYYY format.

✔ Applied additional validation by removing records with missing values in required columns such as Full Name, Email, Phone, Country, Department, and Hire Date.

✔ Sorted the final result by Employee ID in ascending order.
*/

