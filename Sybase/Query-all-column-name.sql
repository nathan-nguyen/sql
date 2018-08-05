SELECT syscolumns.name "ColumnName", systypes.name "Type", syscolumns.length "Length", sysobjects.name "TableName" FROM sysobjects
JOIN syscolumns ON sysobjects.id = syscolumns.id
JOIN systypes ON systypes.type = syscolumns.type AND systypes.usertype = syscolumns.usertype

