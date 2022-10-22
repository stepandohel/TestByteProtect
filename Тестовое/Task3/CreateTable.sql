create table Task3
(
t_name varchar(25) not null,
t_surname varchar(30) not null,
t_pas_series varchar(3) not null,
t_pas_number varchar(10) not null,
PRIMARY KEY (t_pas_series,t_pas_number)
)