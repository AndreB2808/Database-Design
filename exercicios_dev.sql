CREATE TABLE EMPLOYEES (
    employee_id   NUMBER(6)
        CONSTRAINT EMP_EMP_ID_PK PRIMARY KEY,
    first_name    VARCHAR(20),
    last_name     VARCHAR(25) NOT NULL,
    email         VARCHAR(25) NOT NULL,
    phone_number  VARCHAR(20),
    hire_date     DATE NOT NULL,
    job_id        VARCHAR(10) NOT NULL,
    salary        NUMBER(8, 2)
        CONSTRAINT EMP_SALARY_MIN CHECK ( salary > 0 ),
    comission_pct NUMBER(2, 2),
    manager_id    NUMBER(6),
    department_id NUMBER(4)
);

CREATE TABLE DEPARTMNETS (
    department_id   NUMBER(4)
        CONSTRAINT DEPT_ID_PK PRIMARY KEY,
    department_name VARCHAR(30) NOT NULL,
    manager_id      NUMBER(6),
    location_id     NUMBER(4)
);

CREATE TABLE JOBS (
    job_id     VARCHAR(10)
        CONSTRAINT JOB_ID_PK PRIMARY KEY,
    job_name   VARCHAR(35) NOT NULL,
    min_salary NUMBER(6),
    max_salary NUMBER(6)
);

ALTER TABLE EMPLOYEES
    ADD CONSTRAINT EMP_JOB_PK FOREIGN KEY ( job_id )
        REFERENCES JOBS ( job_id );

ALTER TABLE EMPLOYEES
    ADD CONSTRAINT EMP_DEPT_PK FOREIGN KEY ( department_id )
        REFERENCES DEPARTMNETS ( department_id );

ALTER TABLE DEPARTMNETS
    ADD CONSTRAINT DEPT_MGR_PK FOREIGN KEY ( manager_id )
        REFERENCES EMPLOYEES ( employee_id );

DROP TABLE EMPLOYEES PURGE;

DROP TABLE DEPARTMNETS PURGE;

DROP TABLE JOBS PURGE;

----------------------------------------------------------

CREATE TABLE EMPRESTIMOS (
    cod_emprestimo INTEGER
        CONSTRAINT EMPRESTIMOS_PK PRIMARY KEY,
    dt_retirada    DATE NOT NULL,
    dt_entrega     DATE,
    cod_aluno      NUMBER(5) NOT NULL,
    cod_livro      INTEGER NOT NULL
);

CREATE TABLE LIVROS (
    cod_livros INTEGER  
        CONSTRAINT LIVROS_PK PRIMARY KEY,
    titulo     VARCHAR(100) NOT NULL
);

CREATE TABLE AUTORES (
    cod_autor INTEGER
        CONSTRAINT AUTORES_PK PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    sobrenome VARCHAR(50) NOT NULL   
);  

CREATE TABLE LIVROS_AUTORES (
    cod_autor INTEGER,
    cod_livros INTEGER,
    CONSTRAINT LIVROS_AUTORES_PK PRIMARY KEY(cod_autor,cod_livros)
);  

CREATE TABLE ALUNOS (
    cod_aluno NUMBER(5)
        CONSTRAINT ALUNOS_PK PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    sobrenome VARCHAR(50) NOT NULL,
    dt_nasc DATE NOT NULL
);  

ALTER TABLE EMPRESTIMOS
    ADD CONSTRAINT EMPRESTIMOS_ALUNOS_PK FOREIGN KEY ( cod_aluno )
        REFERENCES ALUNOS ( cod_aluno );
        
ALTER TABLE EMPRESTIMOS
    ADD CONSTRAINT EMPRESTIMOS_LIVROS_PK FOREIGN KEY ( cod_livros )
        REFERENCES LIVROS ( cod_livros );
    
