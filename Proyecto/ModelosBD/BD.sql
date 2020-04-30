create database soccer;
use soccer;

drop table Jugador ;
drop table Equipo ;
drop table Liga;
drop table copa;
drop table fichaje;

create table Equipo(id_equipo varchar(6) not null PRIMARY KEY, nombre varchar(50));

create table Jugador (id_jug varchar(6) not null PRIMARY KEY, Nombre varchar(30), id_equipo varchar(6), Nacionalidad varchar(35), 
Nacimiento date, dorsal int(2), posicion varchar(40), foreign key(id_equipo) references Equipo (id_equipo));

create table Liga(id int NOT NULL AUTO_INCREMENT primary key,id_liga varchar(6), id_equipo varchar(6),Puntos int(3), PJ INT(2), PG int(2), PE int(2), PP int(2), 
	GF int(3), GC int(2), TA int(3), TR int(2), foreign key(id_equipo) references equipo (id_equipo));
    
create table Copa(id int NOT NULL AUTO_INCREMENT primary key,id_copa varchar(6), id_equipo varchar(6), estado varchar(45), PJ INT(2), PG int(2), PE int(2), PP int(2), 
	GF int(3), GC int(2), TA int(3), TR int(2), foreign key(id_equipo) references equipo (id_equipo));
    
create table Fichaje(id int not null auto_increment primary key, id_jug varchar(6),id_equipo1 varchar(6),id_equipo varchar(6), año int (4),
					valor varchar (7),foreign key(id_equipo1) references equipo(id_equipo),
                    foreign key(id_equipo) references equipo (id_equipo),
                    foreign key(id_jug) references Jugador (id_jug));
                    
                    

insert into Equipo (id_equipo,nombre) values ('JUV', 'Juventus de Turin');
insert into Equipo (id_equipo,nombre) values ('LAZ', 'Società Sportiva Lazio');
insert into Equipo (id_equipo,nombre) values ('ATA', 'Atalanta Bergamasca Calcio');
insert into Equipo (id_equipo,nombre) values ('INTER', 'Football Club Internazionale Milano');
insert into Equipo (id_equipo,nombre) values ('ROM', 'La Associazione Sportiva Roma');

insert into Equipo (id_equipo,nombre) values ('LIV', 'Liverpool Football Club');
insert into Equipo (id_equipo,nombre) values ('MCI', 'Manchester City FC');
insert into Equipo (id_equipo,nombre) values ('LEI', 'Leicester City Football Club');
insert into Equipo (id_equipo,nombre) values ('MNU', 'Manchester United');

insert into Equipo (id_equipo,nombre) values ('SPL', 'Sporting Clube de Portugal');

insert into Equipo (id_equipo,nombre) values ('BYM', 'Bayern de Múnich');

insert into Equipo (id_equipo,nombre) values ('RM', 'Real Madrid Club de Fútbol');
insert into Equipo (id_equipo,nombre) values ('ATM', 'Club Atlético de Madrid');
insert into Equipo (id_equipo,nombre) values ('FCB', 'FC Barcelona');

insert into Equipo (id_equipo,nombre) values ('PSG', 'París Saint-Germain Football Club');
insert into Equipo (id_equipo,nombre) values ('MON', 'Association Sportive Monaco Football Club');

insert into Liga (id_liga,id_equipo,Puntos,PJ,PG, PE, PP, GF, GC, TA, TR) values
				 ('SA','JUV',57, 24, 18, 3, 3, 46, 23, 54, 2);
insert into Liga (id_liga,id_equipo,Puntos,PJ,PG, PE, PP, GF, GC, TA, TR) values
				 ('SA','LAZ',56, 24, 17, 5, 2, 55, 21, 65, 1);
insert into Liga (id_liga,id_equipo,Puntos,PJ,PG, PE, PP, GF, GC, TA, TR) values
				 ('SA','ATA',45, 24, 13, 6, 5, 63, 32, 52, 2);
insert into Liga (id_liga,id_equipo,Puntos,PJ,PG, PE, PP, GF, GC, TA, TR) values
				 ('SA','ROM',39, 24, 11, 6, 7, 43, 32, 71, 6);
                 
insert into Liga (id_liga,id_equipo,Puntos,PJ,PG, PE, PP, GF, GC, TA, TR) values
				 ('PL','LIV',76, 26, 25, 1, 0, 61, 15, 26, 1);
insert into Liga (id_liga,id_equipo,Puntos,PJ,PG, PE, PP, GF, GC, TA, TR) values
				 ('PL','MCI',51, 25, 16, 3, 6, 65, 29, 49, 3);
insert into Liga (id_liga,id_equipo,Puntos,PJ,PG, PE, PP, GF, GC, TA, TR) values
				 ('PL','LEI',50, 26, 15, 5, 6, 54, 26, 28, 1);

insert into Copa (id_copa,id_equipo,estado,PJ,PG, PE, PP, GF, GC, TA, TR) values
				 ('UCL','JUV','Round of 16', 6, 5, 1, 0, 12, 4, 8, 0);

insert into Copa (id_copa,id_equipo,estado,PJ,PG, PE, PP, GF, GC, TA, TR) values
				 ('UCL','ATA','Round of 16', 7, 3, 1, 3, 12, 13, 18, 0);
insert into Copa (id_copa,id_equipo,estado,PJ,PG, PE, PP, GF, GC, TA, TR) values
				 ('UCL','LIV','Round of 16', 7, 4, 1, 2, 13, 9, 10, 0);
insert into Copa (id_copa,id_equipo,estado,PJ,PG, PE, PP, GF, GC, TA, TR) values
				 ('UCL','MCI','Round of 16', 6, 4, 2, 0, 16, 4, 13, 2);
insert into Copa (id_copa,id_equipo,estado,PJ,PG, PE, PP, GF, GC, TA, TR) values
				 ('UCL','ATM','Round of 16', 7, 4, 1, 2, 9, 5, 12, 0);


insert into Jugador (id_jug, Nombre, id_equipo, Nacionalidad, Nacimiento, dorsal,posicion)
			values ('CR7', 'Cristiano Ronaldo','JUV','Portugal',('1985-02-05'),07,'EXT IZQ');
insert into Jugador (id_jug, Nombre, id_equipo, Nacionalidad, Nacimiento, dorsal,posicion)
			values ('WSZ', 'Wojciech Szczesny','JUV','Varsovia',('1990-04-18'),01,'GOAL KEE');
insert into Jugador (id_jug, Nombre, id_equipo, Nacionalidad, Nacimiento, dorsal,posicion)
			values ('GCH', 'Giorgio Chiellini','JUV','Italia',('1984-08-14'),03,'DEFEN');            
insert into Jugador (id_jug, Nombre, id_equipo, Nacionalidad, Nacimiento, dorsal,posicion)
			values ('MDL', 'De Ligt','JUV','Holanda',('1999-08-12'),04,'DEFEN');            
insert into Jugador (id_jug, Nombre, id_equipo, Nacionalidad, Nacimiento, dorsal,posicion)
			values ('LEB', 'Leonardo Bonucci','JUV','Italia',('1987-05-01'),19,'DEFEN');
insert into Jugador (id_jug, Nombre, id_equipo, Nacionalidad, Nacimiento, dorsal,posicion)
			values ('MPJ', 'Miralem Pjanic','JUV','Bosnia y Herzegovina',('1990-04-02'),05,'MC');            
insert into Jugador (id_jug, Nombre, id_equipo, Nacionalidad, Nacimiento, dorsal,posicion)
			values ('JGC', 'Juan Cuadrado','JUV','COLOMBIA',('1988-05-26'),16,'LAT DER');
insert into Jugador (id_jug, Nombre, id_equipo, Nacionalidad, Nacimiento, dorsal,posicion)
			values ('BMT', 'Blaise Matuidi','JUV','Francia',('1987-04-09'),14,'MI');
insert into Jugador (id_jug, Nombre, id_equipo, Nacionalidad, Nacimiento, dorsal,posicion)
			values ('SKH', 'Sami Khedira','JUV','Alemania',('1987-04-04'),06,'MC');
insert into Jugador (id_jug, Nombre, id_equipo, Nacionalidad, Nacimiento, dorsal,posicion)
			values ('D10', 'Paulo Dybala','JUV','Argentina',('1993-11-15'),10,'MP');
insert into Jugador (id_jug, Nombre, id_equipo, Nacionalidad, Nacimiento, dorsal,posicion)
			values ('GH', 'Gonzalo Higuaín','JUV','Argentina',('1985-02-05'),21,'DC');   

insert into Jugador (id_jug, Nombre, id_equipo, Nacionalidad, Nacimiento, dorsal,posicion)
			values ('NEY', 'Neymar JR','PSG','Brasil',('1992-02-05'),10,'DC');   
insert into Jugador (id_jug, Nombre, id_equipo, Nacionalidad, Nacimiento, dorsal,posicion)
			values ('COU', 'Philippe Coutinho','BYM','Brasil',('1992-06-12'),10,'MP');   
insert into Jugador (id_jug, Nombre, id_equipo, Nacionalidad, Nacimiento, dorsal,posicion)
			values ('KMP', 'Kylian Mbappé','PSG','Francia',('1998-12-20'),7,'DC');   
insert into Jugador (id_jug, Nombre, id_equipo, Nacionalidad, Nacimiento, dorsal,posicion)
			values ('POG', 'Paul Pogba','MNU','Francia',('1993-03-15'),6,'MC');   
insert into Jugador (id_jug, Nombre, id_equipo, Nacionalidad, Nacimiento, dorsal,posicion)
			values ('J10', 'James Rodriguez','RM','COLOMBIA',('1991-07-12'),16,'MC');   
            
insert into fichaje (id_jug, id_equipo1, id_equipo, año, valor) values
					 ('CR7','RM','JUV', 2018,'100M€');                      
insert into fichaje (id_jug, id_equipo1, id_equipo, año, valor) values
					 ('NEY','FCB','PSG', 2017,'222M€'); 
insert into fichaje (id_jug, id_equipo1, id_equipo, año, valor) values
					 ('COU','LIV','FCB', 2018,'160M€');                      
insert into fichaje (id_jug, id_equipo1, id_equipo, año, valor) values
					 ('KMP','MON','PSG', 2018,'135M€'); 
insert into fichaje (id_jug, id_equipo1, id_equipo, año, valor) values
					 ('POG','JUV','MNU', 2016,'105M€');                      
insert into fichaje (id_jug, id_equipo1, id_equipo, año, valor) values
					 ('J10','MON','RM', 2014,'80M€'); 


                     
select * from Equipo;
select * from Jugador order by dorsal;
select * from Liga where id_liga='SA';
select * from Liga where id_liga='PL';
select * from copa;
select * from fichaje;

delete from Jugador where id='CR7';
delete from equipo where id_equipo='BYM';
delete from Liga where id_liga ='SA';
delete from fichaje where id=1;