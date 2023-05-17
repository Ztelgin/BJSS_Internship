Create TABLE roles (
	ID int PRIMARY KEY,
	Title varchar(50) not null
);

INSERT INTO roles VALUES(1, 'Software Engineer');
INSERT INTO roles VALUES(2, 'Data Engineer');
INSERT INTO roles VALUES(3, 'Project Manager');
INSERT INTO roles VALUES(4, 'HR Coordinator');
INSERT INTO roles VALUES(5, 'Office Manager');
INSERT INTO roles VALUES(6, 'Secretary');
INSERT INTO roles VALUES(7, 'Business Analyst');
INSERT INTO roles VALUES(8, 'Finance Coordinator');
INSERT INTO roles VALUES(9, 'Head of Office');
INSERT INTO roles VALUES(10, 'Country Head');

Create TABLE offices (
	O_ID int PRIMARY KEY,
	streetName varchar(50) not null,
	city varchar(50) not null,
	timeZone varchar(50) not null,
	country varchar(50) not null
);

INSERT INTO offices VALUES(1, 'Main st', 'Houston', 'UTC-06:00', 'USA');
INSERT INTO offices VALUES(2, 'Broad st', 'New York', 'UTC-05:00', 'USA');
INSERT INTO offices VALUES(3, 'Temple st', 'Birmingham', 'UTC+00:00', 'UK');
INSERT INTO offices VALUES(4, 'One Crown ct', 'London', 'UTC+00:00', 'UK');
INSERT INTO offices VALUES(5, '2 Dublin Landings', 'Dublin', 'UTC+00:00', 'IE');
INSERT INTO offices VALUES(6, 'Victoria st', 'Bristol', 'UTC+00:00', 'UK');
INSERT INTO offices VALUES(7, 'Flaesketorvet 68', 'Kobenhavn V', 'UTC+01:00', 'DK');
INSERT INTO offices VALUES(8, '11th floor', 'Lisbon', 'WET', 'PT');
INSERT INTO offices VALUES(9, 'Edificio Burgo', 'Porto', WET', 'PT');
INSERT INTO offices VALUES(10, '161 Collins st', 'Melbourne', 'UTC+10:00', 'ASTL');




Create TABLE Employee (
	emp_ID int PRIMARY KEY,
	fName varchar(50) not null,
	lName varchar(50) not null,
	email varchar(50) not null,
	status varchar(50) not null,
	roleId int,
	officeId int,
	FOREIGN KEY (roleId) REFERENCES roles(ID),
	FOREIGN KEY (officeId) REFERENCES offices(O_ID)  
);

INSERT INTO EMPLOYEE VALUES(ID, 'firstName', 'LastName', 'email', 'status', roleId, officeId);    
INSERT INTO EMPLOYEE VALUES(1000, 'Michael', 'Scott', 'MichaelScott@bjss.com', 'OnBench', 9, 1);  
INSERT INTO EMPLOYEE VALUES(1001, 'Pamela', 'Beasly', 'PamelaBeasly@bjss.com', 'OnBench', 6, 1);  
INSERT INTO EMPLOYEE VALUES(1002, 'Toby', 'Flenderson', 'TobyFlenderson@bjss.com', 'OffBench', 4, 
1);
INSERT INTO EMPLOYEE VALUES(1003, 'Andy', 'Smith', 'AndySmith@bjss.com', 'OffBench', 8, 1);       
INSERT INTO EMPLOYEE VALUES(1004, 'Nicole', 'Jones', 'NicoleJones@bjss.com', 'OnBench', 7, 1);    
INSERT INTO EMPLOYEE VALUES(1005, 'James', 'Thompson', 'JamesThompson@bjss.com', 'OnBench', 5, 1);
INSERT INTO EMPLOYEE VALUES(1006, 'Angela', 'Peters', 'AngelaPeters@bjss.com', 'OffBench', 1, 1); 
INSERT INTO EMPLOYEE VALUES(1007, 'John', 'Nolan', 'JohnNolan@bjss.com', 'OffBench', 1, 1);       
INSERT INTO EMPLOYEE VALUES(1008, 'David', 'Gomez', 'DavidGomez@bjss.com', 'OnBench', 2, 1);      
INSERT INTO EMPLOYEE VALUES(1009, 'Lisa', 'Simpson', 'LisaSimpson@bjss.com', 'OnBench', 2, 1);    
INSERT INTO EMPLOYEE VALUES(1010, 'Stewart', 'Griffin', 'StewartGriffin@bjss.com', 'OffBench', 3, 
1);
INSERT INTO EMPLOYEE VALUES(1011, 'Marie', 'Palacios', 'MariePalacios@bjss.com', 'OffBench', 3, 1);
INSERT INTO EMPLOYEE VALUES(1012, 'Chris', 'Badgley', 'ChrisBadgley@bjss.com', 'OnBench', 10, 1); 
INSERT INTO EMPLOYEE VALUES(1100, 'Martin', 'Gonzalez', 'MartinGonzalez@bjss.com', 'OnBench', 9, 2);
INSERT INTO EMPLOYEE VALUES(1101, 'Frank', 'Gallagher', 'FrankGallagher@bjss.com', 'OffBench', 6, 
2);
INSERT INTO EMPLOYEE VALUES(1102, 'Selena', 'Argueta', 'SelenaArgueta@bjss.com', 'OffBench', 4, 2);
INSERT INTO EMPLOYEE VALUES(1103, 'Jasmine', 'Noxford', 'JasmineNoxford@bjss.com', 'OnBench', 8, 2);
INSERT INTO EMPLOYEE VALUES(1104, 'Jenna', 'Nunez', 'JennaNunez@bjss.com', 'OnBench', 7, 2);      
INSERT INTO EMPLOYEE VALUES(1105, 'Kyle', 'Giles', 'KyleGiles@bjss.com', 'OffBench', 5, 2);       
INSERT INTO EMPLOYEE VALUES(1106, 'Rebecca', 'Brown', 'RebeccaBrown@bjss.com', 'OffBench', 1, 2); 
INSERT INTO EMPLOYEE VALUES(1107, 'Connor', 'White', 'ConnorWhite@bjss.com', 'OnBench', 1, 2);    
INSERT INTO EMPLOYEE VALUES(1108, 'Melinda', 'Martinez', 'MelindaMartinez@bjss.com', 'OnBench', 1, 2);
INSERT INTO EMPLOYEE VALUES(1109, 'Chloe', 'Alvarez', 'ChloeAlvarez@bjss.com', 'OffBench', 2, 2); 
INSERT INTO EMPLOYEE VALUES(1110, 'Justin', 'Clark', 'JustinClark@bjss.com', 'OffBench', 2, 2);   
INSERT INTO EMPLOYEE VALUES(1111, 'Craig', 'Newman', 'CraigNewman@bjss.com', 'OnBench', 3, 2);    
INSERT INTO EMPLOYEE VALUES(1112, 'Chris', 'Badgley', 'ChrisBadgley@bjss.com', 'OnBench', 10, 2); 
INSERT INTO EMPLOYEE VALUES(2000, 'Victoria', 'Justice', 'VictoriaJustice@bjss.com', 'OffBench', 9, 3);
INSERT INTO EMPLOYEE VALUES(2001, 'Jeffrey', 'Castillo', 'JeffrreyCastillo@bjss.com', 'OffBench', 
6, 3);
INSERT INTO EMPLOYEE VALUES(2002, 'Taylor', 'Murray', 'TaylorMurray@bjss.com', 'OnBench', 4, 3);  
INSERT INTO EMPLOYEE VALUES(2003, 'Meghan', 'Phillips', 'MeghanPhillips@bjss.com', 'OnBench', 8, 3);
INSERT INTO EMPLOYEE VALUES(2004, 'Amber', 'Rico', 'AmberRoci@bjss.com', 'OffBench', 7, 3);       
INSERT INTO EMPLOYEE VALUES(2005, 'Luna', 'Jefferson', 'LunaJefferson@bjss.com', 'OffBench', 5, 3);
INSERT INTO EMPLOYEE VALUES(2006, 'Carly', 'Ortiz', 'CarlyOrtiz@bjss.com', 'OnBench', 1, 3);      
INSERT INTO EMPLOYEE VALUES(2007, 'Hannah', 'Luis', 'HannahLuis@bjss.com', 'OnBench', 1, 3);      
INSERT INTO EMPLOYEE VALUES(2008, 'Thomas', 'Tran', 'ThomasTran@bjss.com', 'OffBench', 2, 3);     
INSERT INTO EMPLOYEE VALUES(2009, 'Devin', 'Robinson', 'DevinRobinson@bjss.com', 'OffBench', 2, 3);
INSERT INTO EMPLOYEE VALUES(2010, 'Brandon', 'Russel', 'BrandonRussel@bjss.com', 'OnBench', 2, 3);
INSERT INTO EMPLOYEE VALUES(2011, 'Joshua', 'Payne', 'JoshuaPayne@bjss.com', 'OnBench', 3, 3);    
INSERT INTO EMPLOYEE VALUES(2012, 'Ross', 'Hinojosa', 'RossHinojosa@bjss.com', 'OffBench', 10, 3);
INSERT INTO EMPLOYEE VALUES(2100, 'Sarah', 'Lambert', 'SarahLambert@bjss.com', 'OffBench', 9, 4); 
INSERT INTO EMPLOYEE VALUES(2101, 'Jonah', 'Hill', 'JonahHill@bjss.com', 'OnBench', 6, 4);        
INSERT INTO EMPLOYEE VALUES(2102, 'Mohammed', 'Zaid', 'MohammedZaid@bjss.com', 'OnBench', 4, 4);  
INSERT INTO EMPLOYEE VALUES(2103, 'Samantha', 'Strong', 'SamanthaStrong@bjss.com', 'OffBench', 8, 
4);
INSERT INTO EMPLOYEE VALUES(2104, 'Sydney', 'Davis', 'SydneyDavis@bjss.com', 'OffBench', 7, 4);   
INSERT INTO EMPLOYEE VALUES(2105, 'Joscelyn', 'Flores', 'JoscelynFlores@bjss.com', 'OnBench', 5, 4);
INSERT INTO EMPLOYEE VALUES(2106, 'Stephen', 'King', 'StephenKing@bjss.com', 'OnBench', 1, 4);    
INSERT INTO EMPLOYEE VALUES(2107, 'Sandra', 'Ericson', 'SandraEricson@bjss.com', 'OffBench', 1, 4);
INSERT INTO EMPLOYEE VALUES(2108, 'Alexis', 'Dominguez', 'AlexisDominguez@bjss.com', 'OffBench', 2, 4);
INSERT INTO EMPLOYEE VALUES(2109, 'Joffrey', 'Lane', 'JoffreyLane@bjss.com', 'OnBench', 2, 4);    
INSERT INTO EMPLOYEE VALUES(2110, 'Zachary', 'Frank', 'ZacharyFrank@bjss.com', 'OnBench', 2, 4);  
INSERT INTO EMPLOYEE VALUES(2111, 'Fernando', 'Alvarez', 'FernandoAlvarez@bjss.com', 'OffBench', 3, 4);
INSERT INTO EMPLOYEE VALUES(2112, 'Ross', 'Hinojosa', 'RossHinojosa@bjss.com', 'OnBench', 10, 4); 
INSERT INTO EMPLOYEE VALUES(2200, 'Chelsea', 'Stokes', 'ChelseaStokes@bjss.com', 'OnBench', 9, 5);
INSERT INTO EMPLOYEE VALUES(2201, 'Gary', 'Jones', 'GaryJones@bjss.com', 'OnBench', 6, 5);        
INSERT INTO EMPLOYEE VALUES(2202, 'Greg', 'Hemsworth', 'GregHemsworth@bjss.com', 'OffBench', 4, 5);
INSERT INTO EMPLOYEE VALUES(2203, 'Daniel', 'Lewis', 'DanielLewis@bjss.com', 'OffBench', 8, 5);   
INSERT INTO EMPLOYEE VALUES(2204, 'Gabrielle', 'Fransisco', 'GabrielleFransisco@bjss.com', 'OnBench', 7, 5);
INSERT INTO EMPLOYEE VALUES(2205, 'Erin', 'Lim', 'ErinLim@bjss.com', 'OnBench', 5, 5);
INSERT INTO EMPLOYEE VALUES(2206, 'Wade', 'Williams', 'WadeWilliams@bjss.com', 'OffBench', 1, 5); 
INSERT INTO EMPLOYEE VALUES(2207, 'Frank', 'Watson', 'FrankWatson@bjss.com', 'OffBench', 1, 5);   
INSERT INTO EMPLOYEE VALUES(2208, 'Ashley', 'Johnston', 'AshleyJohnston@bjss.com', 'OnBench', 1, 5);
INSERT INTO EMPLOYEE VALUES(2209, 'Jim', 'Clifford', 'JimClifford@bjss.com', 'OnBench', 2, 5);    
INSERT INTO EMPLOYEE VALUES(2210, 'Herbert', 'Perry', 'HerbertPerry@bjss.com', 'OffBench', 2, 5); 
INSERT INTO EMPLOYEE VALUES(2211, 'Madison', 'Kristoff', 'MadisonKristoff@bjss.com', 'OffBench', 2, 5);
INSERT INTO EMPLOYEE VALUES(2212, 'Randall', 'Vaughn', 'RandallVaughn@bjss.com', 'OnBench', 3, 5);
INSERT INTO EMPLOYEE VALUES(2213, 'Ross', 'Hinojosa', 'RossHinojosa@bjss.com', 'OnBench', 10, 5); 
INSERT INTO EMPLOYEE VALUES(3000, 'Ethel', 'Collins', 'EthelCollins@bjss.com', 'OffBench', 9, 6); 
INSERT INTO EMPLOYEE VALUES(3001, 'Tamara', 'Bruce', 'TamaraBruce@bjss.com', 'OffBench', 6, 6);   
INSERT INTO EMPLOYEE VALUES(3002, 'Isla', 'Mcintosh', 'IslaMcintosh@bjss.com', 'OnBench', 4, 6);  
INSERT INTO EMPLOYEE VALUES(3003, 'Ada', 'Sanford', 'AdaSanford@bjss.com', 'OnBench', 8, 6);      
INSERT INTO EMPLOYEE VALUES(3004, 'Nelson', 'Williams', 'NelsonWilliams@bjss.com', 'OffBench', 7, 
6);
INSERT INTO EMPLOYEE VALUES(3005, 'Kate', 'Davila', 'KateDavila@bjss.com', 'OffBench', 5, 6);     
INSERT INTO EMPLOYEE VALUES(3006, 'Emmanuel', 'Tran', 'EmmanuelTran@bjss.com', 'OnBench', 1, 6);  
INSERT INTO EMPLOYEE VALUES(3007, 'Ariana', 'Gill', 'ArianaGill@bjss.com', 'OnBench', 1, 6);      
INSERT INTO EMPLOYEE VALUES(3008, 'Lydia', 'Hendricks', 'LydiaHendricks@bjss.com', 'OffBench', 1, 
6);
INSERT INTO EMPLOYEE VALUES(3009, 'Dennis', 'Vaughan', 'DennisVaughan@bjss.com', 'OffBench', 2, 6);
INSERT INTO EMPLOYEE VALUES(3010, 'Jannat', 'Miller', 'JannatMiller@bjss.com', 'OnBench', 2, 6);  
INSERT INTO EMPLOYEE VALUES(3011, 'Madeline', 'Gillespie', 'MadelineGillespie@bjss.com', 'OnBench', 3, 6);
INSERT INTO EMPLOYEE VALUES(3012, 'Roger', 'Dorsey', 'RogerDorsey@bjss.com', 'OffBench', 3, 6);   
INSERT INTO EMPLOYEE VALUES(3013, 'Janet', 'Humphry', 'JanetHumphrey@bjss.com', 'OffBench', 10, 6);
INSERT INTO EMPLOYEE VALUES(3100, 'Hajra', 'Rocha', 'HajraRocha@bjss.com', 'OnBench', 9, 7);      
INSERT INTO EMPLOYEE VALUES(3101, 'Hope', 'Cummings', 'HopeCummings@bjss.com', 'OnBench', 6, 7);  
INSERT INTO EMPLOYEE VALUES(3102, 'Sion', 'Bentley', 'SionBentley@bjss.com', 'OffBench', 4, 7);   
INSERT INTO EMPLOYEE VALUES(3103, 'Ernest', 'Donovan', 'ErnestDonovan@bjss.com', 'OffBench', 8, 7);
INSERT INTO EMPLOYEE VALUES(3104, 'Alexander', 'Pugh', 'AlexanderPugh@bjss.com', 'OnBench', 7, 7);
INSERT INTO EMPLOYEE VALUES(3105, 'Leroy', 'Jenkins', 'LeroyJenkins@bjss.com', 'OnBench', 5, 7);  
INSERT INTO EMPLOYEE VALUES(3106, 'Kelly', 'Pitts', 'KellyPitts@bjss.com', 'OffBench', 1, 7);     
INSERT INTO EMPLOYEE VALUES(3107, 'Martha', 'Connor', 'MarthaConnor@bjss.com', 'OffBench', 1, 7); 
INSERT INTO EMPLOYEE VALUES(3108, 'Zaynab', 'Kent', 'ZaynabKent@bjss.com', 'OnBench', 1, 7);      
INSERT INTO EMPLOYEE VALUES(3109, 'Pauline', 'Holland', 'PaulineHolland@bjss.com', 'OnBench', 2, 7);
INSERT INTO EMPLOYEE VALUES(3110, 'Sid', 'Romero', 'SidRomero@bjss.com', 'OffBench', 3, 7);       
INSERT INTO EMPLOYEE VALUES(3111, 'Diana', 'Freeman', 'DianaFreeman@bjss.com', 'OffBench', 3, 7); 
INSERT INTO EMPLOYEE VALUES(3112, 'Mabel', 'Leach', 'MabelLeach@bjss.com', 'OnBench', 3, 7);      
INSERT INTO EMPLOYEE VALUES(3113, 'Janet', 'Humphry', 'JanetHumphrey@bjss.com', 'OnBench', 10, 7);
INSERT INTO EMPLOYEE VALUES(3200, 'Kye', 'Hawkins', 'KyeHawkins@bjss.com', 'OffBench', 9, 8);     
INSERT INTO EMPLOYEE VALUES(3201, 'Matilda', 'Dillon', 'MatildaDillon@bjss.com', 'OffBench', 6, 8);
INSERT INTO EMPLOYEE VALUES(3203, 'Neil', 'Acosta', 'NeilAcosta@bjss.com', 'OnBench', 4, 8);      
INSERT INTO EMPLOYEE VALUES(3204, 'Kirsty', 'Delacruz', 'KirsyDelacruz@bjss.com', 'OnBench', 8, 8);
INSERT INTO EMPLOYEE VALUES(3205, 'Athena', 'Dalton', 'AthenaDalton@bjss.com', 'OffBench', 7, 8); 
INSERT INTO EMPLOYEE VALUES(3206, 'Findlay', 'Casey', 'FindlayCasey@bjss.com', 'OffBench', 5, 8);
INSERT INTO EMPLOYEE VALUES(3207, 'Rose', 'Garrett', 'RoseGarrett@bjss.com', 'OnBench', 1, 8);    
INSERT INTO EMPLOYEE VALUES(3208, 'Nabil', 'Chang', 'NabilChang@bjss.com', 'OnBench', 1, 8);      
INSERT INTO EMPLOYEE VALUES(3209, 'Rosanna', 'Baldwin', 'RosannaBaldwin@bjss.com', 'OffBench', 1, 
8);
INSERT INTO EMPLOYEE VALUES(3210, 'Jon', 'Anthony', 'JonAnthony@bjss.com', 'OffBench', 2, 8);     
INSERT INTO EMPLOYEE VALUES(3211, 'Cain', 'Chan', 'CainChan@bjss.com', 'OnBench', 3, 8);
INSERT INTO EMPLOYEE VALUES(3212, 'Lilly', 'Roth', 'LillyRoth@bjss.com', 'OnBench', 3, 8);        
INSERT INTO EMPLOYEE VALUES(3213, 'Janet', 'Humphry', 'JanetHumphrey@bjss.com', 'OffBench', 10, 8);
INSERT INTO EMPLOYEE VALUES(3300, 'Ifan', 'Roach', 'IfanRoach@bjss.com', 'OffBench', 9, 9);       
INSERT INTO EMPLOYEE VALUES(3301, 'Drew', 'Luna', 'DrewLuna@bjss.com', 'OnBench', 6, 9);
INSERT INTO EMPLOYEE VALUES(3302, 'Michael', 'Baxter', 'MichaelBaxter@bjss.com', 'OnBench', 4, 9);
INSERT INTO EMPLOYEE VALUES(3303, 'Ava', 'Fry', 'AvaFry@bjss.com', 'OffBench', 8, 9);
INSERT INTO EMPLOYEE VALUES(3304, 'Madison', 'Gonzalez', 'MadisonGonzalez@bjss.com', 'OffBench', 7, 9);
INSERT INTO EMPLOYEE VALUES(3305, 'Aidan', 'Pacheco', 'AidanPacheco@bjss.com', 'OnBench', 5, 9);  
INSERT INTO EMPLOYEE VALUES(3306, 'Dexter', 'French', 'DexterFrench@bjss.com', 'OnBench', 1, 9);  
INSERT INTO EMPLOYEE VALUES(3307, 'Nancy', 'Hunter', 'NancyHunter@bjss.com', 'OnBench', 1, 9);    
INSERT INTO EMPLOYEE VALUES(3308, 'Josef', 'Glover', 'JosefGlover@bjss.com', 'OffBench', 2, 9);   
INSERT INTO EMPLOYEE VALUES(3309, 'Omari', 'Black', 'OmariBlack@bjss.com', 'OffBench', 2, 9);     
INSERT INTO EMPLOYEE VALUES(3310, 'Maximilian', 'Bond', 'MaximilianBond@bjss.com', 'OnBench', 3, 9);
INSERT INTO EMPLOYEE VALUES(3311, 'Alan', 'Pena', 'AlanPena@bjss.com', 'OnBench', 3, 9);
INSERT INTO EMPLOYEE VALUES(3312, 'Janet', 'Humphry', 'JanetHumphrey@bjss.com', 'OffBench', 10, 9);
INSERT INTO EMPLOYEE VALUES(4000, 'Frazer', 'Taylor', 'FrazerTaylor@bjss.com', 'OffBench', 9, 10);
INSERT INTO EMPLOYEE VALUES(4001, 'Conner', 'Golden', 'ConnerGolden@bjss.com', 'OnBench', 6, 10); 
INSERT INTO EMPLOYEE VALUES(4002, 'Hugh', 'Buck', 'HughBuck@bjss.com', 'OnBench', 4, 10);
INSERT INTO EMPLOYEE VALUES(4003, 'Brett', 'Copeland', 'BrettCopeland@bjss.com', 'OffBench', 8, 10);
INSERT INTO EMPLOYEE VALUES(4004, 'Elinor', 'Kelley', 'ElinorKelley@bjss.com', 'OffBench', 7, 10);
INSERT INTO EMPLOYEE VALUES(4005, 'Elaine', 'Wright', 'ElaineWright@bjss.com', 'OnBench', 5, 10); 
INSERT INTO EMPLOYEE VALUES(4006, 'Maya', 'Valenzuela', 'MayaValenzuela@bjss.com', 'OnBench', 1, 10);
INSERT INTO EMPLOYEE VALUES(4007, 'Edie', 'Stephens', 'EdieStephens@bjss.com', 'OffBench', 1, 10);
INSERT INTO EMPLOYEE VALUES(4008, 'Jonah', 'Bridges', 'JonahBridges@bjss.com', 'OffBench', 2, 10);
INSERT INTO EMPLOYEE VALUES(4009, 'Ronnie', 'Pearson', 'RonniePearson@bjss.com', 'OnBench', 2, 10);
INSERT INTO EMPLOYEE VALUES(4010, 'Julius', 'Perez', 'JuliusPerez@bjss.com', 'OnBench', 2, 10);   
INSERT INTO EMPLOYEE VALUES(4011, 'David', 'Valdos', 'DavidValdos@bjss.com', 'OffBench', 3, 10);  
INSERT INTO EMPLOYEE VALUES(4012, 'Michael', 'Fuentes', 'MichaelFuentes@bjss.com', 'OffBench', 10, 10);




select distinct CONCAT(e.fName, ' ', e.lName) as "Employee Name", r.title, o.city as location, o.timeZone as "Time Zone", e.status
from employee as e inner join roles as r on(e.roleId = r.ID) inner join offices as o on (e.officeId=o.O_ID)