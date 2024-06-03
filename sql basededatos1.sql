create database cine;
create table PRODUCTOS (
    PRO_ID number not null,
    PRO_NOMBRE varchar (20),
    PRO_TDF_ID number,
    PRO_PRECIO number
)

insert into PRODUCTOS (PRO_ID, PRO_NOMBRE, PRO_TDF_ID, PRO_PRECIO)
    values (1, 'madagascar', 2, 6.000)
    values (2, 'king_kong', 1, 10.00)
    values (3, 'cars', 1, 8.000)


alter table  PRODUCTOS (
         add constraint PK_PRO_ID PRIMARY KEY (PRO_ID)
        FOREIGN KEY  (PRO_TDF_ID) reference TIPOS_DE_FORMATOS  (TDF_ID) 
    )
 
create table STOCKS (  
STO_ID number not null,
STO_SDF_ID number,
STO_CANTIDAD number
 )

insert into STOCKS (STO_ID, STO_SDC_ID, STO_CANTIDAD)
    values (1, 2, 30)
    values (2, 3, 40)
    values (3, 1, 60)

    alter table STOCKS (
            add constraint PK_STO_ID PRIMARY KEY (STO_ID)
            FOREIGN KEY (STO_SDC_ID) reference SUCURSALES_DE_LOS_CINES (SDC_ID)
    )

    create table SUCURSALES_DE_LOS_CINES (
    SDC_ID number not null,
    SDC_NOMBRE varchar (20)
    )
    insert into SUCURSALES_DE_LOS_CINES (SDC_ID, SDC_NOMBRE)
        values (1, 'bolivar')
        values (2, 'olavarria')
        values (3, 'pehuajo')
        
alter table SUCURSALES_DE_LOS_CINES (
            add constraint PK_SDC_ID PRIMARY KEY (SDC_ID)
)
            

create table TIPOS_DE_FORMATOS ( 
                TDF_ID number not null,
                TDF_NOMBRE varchar (20)
) 
(
insert into TIPOS_DE_FORMATOS (TDF_ID, TDF_NOMBRE)
    values (1, 3d)
    values (2, 2d)
)

alter table TIPOS_DE_FORMATOS (
        add constraint PK_TDF_ID PRIMARY KEY (TDF_ID)
)
        





        
          

    

