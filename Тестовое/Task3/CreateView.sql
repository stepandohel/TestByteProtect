create view PassportView
as
select
 a.t_pas_series as KeyPassportSeria, a.t_pas_number as KeyPassportNumber,
 b.t_name, b.t_surname, b.t_pas_series, b.t_pas_number
from
 Task3 a join
 Task3 b on b.t_name = a.t_name and b.t_surname = a.t_surname;