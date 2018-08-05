select convert(varchar(30),o.name) AS table_name
from sysobject o
where type = 'U'
order by table_name

