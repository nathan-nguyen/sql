select convert(varchar(30),o.name) AS table_name,
--row_count(db_id(), o.id) AS row_count,
--data_pages(db_id(), o.id, 0) AS pages,
data_pages(db_id(), o.id, 0) * (@@maxpagesize/1024) AS "Size (Kbs)"
data_pages(db_id(), o.id, 0) * (@@maxpagesize/1024)/1024 AS "Size (Mbs)"
from sysobjects o
where type = 'U'
order by "Size (Mbs)" desc

sp_spaceused	-- Check whole DB memory

sp_spaceused $TableName

