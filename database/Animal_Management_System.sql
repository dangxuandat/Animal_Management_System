
CREATE DATABASE Animal_Management_System
GO
USE Animal_Management_System
GO


CREATE TABLE food(
    id                    int IDENTITY (1,1) PRIMARY KEY,
    name                  nvarchar(50)          NOT NULL,
    expired_date          DATE                  NOT NULL,
)


CREATE TABLE type(
    id                    int IDENTITY (1,1) PRIMARY KEY,
    name                  nvarchar(50)          NOT NULL,
)


CREATE TABLE type_food(
    id                    int IDENTITY (1,1) PRIMARY KEY,
    type_id               int                   NOT NULL FOREIGN KEY REFERENCES type(id),
    food_id               int                   NOT NULL FOREIGN KEY REFERENCES food(id),
)


CREATE TABLE area(
    id                    int IDENTITY (1,1) PRIMARY KEY,
    name                  nvarchar(50)         NOT NULL,
    square                float                NOT NULL,
)



CREATE TABLE manager(
    id                    int IDENTITY (1,1) PRIMARY KEY,
    name                  nvarchar(50)         NOT NULL,
    phone                 varchar(15)          NULL,
    age                   int                  NOT NULL,
    area_id               int                  NOT NULL FOREIGN KEY REFERENCES area(id),
)



CREATE TABLE animal(
    id                    int   IDENTITY (1,1) PRIMARY KEY,
    name                  nvarchar(50)          NOT NULL,
    weight                float                 NULL ,
    age                   int                   NULL ,
    imported_date         DATE                  NOT NULL,
    type_id               int                   NOT NULL FOREIGN KEY REFERENCES type(id),
    area_id               int                   NOT NULL FOREIGN KEY REFERENCES area(id),
)