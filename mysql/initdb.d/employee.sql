DROP SCHEMA IF EXISTS sample;
CREATE SCHEMA sample;

DROP TABLE IF EXISTS sample.employee;

CREATE TABLE sample.employee
(
    id           INT(10),
    name     VARCHAR(40)
);

INSERT INTO sample.employee (id, name) VALUES (1, "Nagaoka");
INSERT INTO sample.employee (id, name) VALUES (2, "Tanaka");