CREATE USER 'backappnode'@'localhost' IDENTIFIED BY 'node123';
-- Grant select privilege to all databases;
GRANT SELECT ON *.* TO 'backappNode'@'localhost' WITH GRANT OPTION;
-- Grant all privileges to all databases;
GRANT ALL PRIVILEGES ON *.* TO 'backappNode'@'localhost' WITH GRANT OPTION;


CREATE TABLE usuarios(  
    id int NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT 'Primary Key',
    create_time DATETIME COMMENT 'Create Time',
    usuario VARCHAR(50),
    clave VARCHAR(50),
    rol varchar(50)
)engine=innodb;
