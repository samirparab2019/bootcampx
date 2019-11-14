const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

const cohortName = process.argv[2];
const values = [`%${cohortName}%`];

const queryString = `
SELECT teachers.name AS teacher_name, cohorts.name AS cohort_name
FROM teachers
JOIN assistance_requests ON teacher_id = teachers.id
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = students.cohort_id
WHERE cohorts.name LIKE $1
GROUP BY cohorts.name, teachers.name
ORDER BY teachers.name;
`;
pool.query(queryString, values)

.then(res => {
  res.rows.forEach(user => {
    console.log(`${user.cohort_name}: ${user.teacher_name}`);
  })
}).catch(err => console.error('query error', err.stack));