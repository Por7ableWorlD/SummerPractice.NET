create table Roles(
pk_Id integer,
Role varchar(50) 
primary key (pk_Id)
);

create table Skills(pk_Id int,
Skill varchar(50),
primary key(pk_Id),
);

create table Users(
pk_Id integer,
Фамилия varchar(50),
Имя varchar(50),
fk_Role integer,
foreign key (fk_Role) references Roles(pk_Id)
on update cascade on delete set null
);

create table Accounts(
pk_Id integer,
Login varchar(50),
Password varchar(50),
primary key (pk_Id),
);

create table UsersSkills(
Users_Id integer,
Skill_Id integer,
foreign key (skill_Id) references Skills(pk_Id) 
on update cascade on delete set null
);

INSERT INTO Roles (pk_Id, Role) 
VALUES (1, 'User'),
       (2, 'Admin');

INSERT INTO Skills (pk_Id, Skill) 
VALUES (1, 'Programmer'),
       (2, 'Analyst'),
	   (3, 'Tester'),
	   (4, 'Game designer'),
	   (5, 'Game developer'),
	   (6, 'System administrator'),
	   (7, 'Developer'),
	   (8, 'Bid Data Developer'),
	   (9, 'Writer'),
	   (10, 'Screenwriter');

INSERT INTO Users (pk_Id, Фамилия, Имя, fk_Role) 
VALUES (1, 'Ivanov', 'Vanya', 1),
       (2, 'Petrov', 'Petya', 2),
	   (3, 'Nikolaev', 'Koly', 1),
	   (4, 'Zolatoryv', 'Kirill', 1),
	   (5, 'Basov', 'Artem', 1);

INSERT INTO Accounts (pk_Id, Login, Password) 
VALUES (1, 'vanin', 'account1'),
       (2, 'petin', 'account2'),
	   (3, 'kolin', 'account3'),
	   (4, 'kirilin', 'account4'),
	   (5, 'artemin', 'account5');

INSERT INTO UsersSkills (Users_Id, Skill_Id) 
VALUES (1, 2),
       (1, 4),
	   (2, 5),
	   (2, 7),
	   (3, 6),
	   (4, 1),
	   (4, 8),
	   (5, 3),
	   (5, 6);
