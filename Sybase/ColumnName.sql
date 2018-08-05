SELECT syscolumns.name, sysobjects.name FROM sysobjects
JOIN syscolumns ON sysobjects.id = syscolumns.id
JOIN systypes ON systypes.type = syscolumns.type AND systypes.usertype = syscolumns.usertype

