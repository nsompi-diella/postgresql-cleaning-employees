-- =========== CREATION OF TABLES  ===================

-- =========================
-- TABLE: departments
-- =========================
CREATE TABLE departments (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT
);

-- =========================
-- TABLE: countries
-- =========================
CREATE TABLE countries (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    capital VARCHAR(100),
    code_country VARCHAR(10) UNIQUE NOT NULL
);

-- =========================
-- TABLE: experiences
-- =========================
CREATE TABLE experiences (
    id SERIAL PRIMARY KEY,
    year INTEGER NOT NULL,
    description TEXT
);

-- =========================
-- TABLE: employees
-- =========================
CREATE TABLE employees (
    id SERIAL PRIMARY KEY,
    fullname VARCHAR(150) NOT NULL,
    phone VARCHAR(20),
    email VARCHAR(150) UNIQUE,
    age INTEGER,
    city VARCHAR(100),
    salary NUMERIC(10,2),
    country_id INTEGER,
    status VARCHAR(50),
    address TEXT,
    department_id INTEGER,
    hire_date DATE,

    CONSTRAINT fk_country
        FOREIGN KEY (country_id)
        REFERENCES countries(id),

    CONSTRAINT fk_department
        FOREIGN KEY (department_id)
        REFERENCES departments(id)
);


