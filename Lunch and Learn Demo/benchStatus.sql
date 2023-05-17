Create TABLE benchStatus (
	ID int PRIMARY KEY,
	Name varchar(50) not null,
	Status varchar(50) not null
);
INSERT INTO benchStatus VALUES(1, 'Johnny Blue', 'On Bench');
INSERT INTO benchStatus VALUES(2, 'Billy red', 'Not On Bench');
