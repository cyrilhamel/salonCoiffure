create database coiffHomme;

use coiffHomme;

create table roles(
    id_role int primary key auto_increment not null,
    nom_role varchar(50) not null
)engine=innodb;

create table utilisateurs(
    id_utilisateur int primary key auto_increment not null,
    nom varchar(50) not null,
    tel int(10) null,
    email varchar(100) not null,
    message_utilisateur text not null
)engine=innodb;

create table definir(
    id_utilisateur int not null,
    id_role int not null,
    primary key(id_utilisateur, id_role)
)engine=innodb;

create table reservations(
    id_reservation int PRIMARY KEY auto_increment not null,
    date_reservation date not null,
    debut time not null,
    fin time not null
)engine=innodb;

create table calendrier(
    id_calendrier int primary key auto_increment not null,
    date_calendrier date not null,
    heure_calendrier time not null
)engine=innodb;

create table affecter(
    id_calendrier int not null,
    id_reservation int not null,
    primary key (id_calendrier, id_reservation)
)engine=innodb;

create table reserver(
    id_reservation int not null,
    id_utilisateur int not null,
    primary key (id_reservation, id_utilisateur)
)engine=innodb;

create table prestations(
    id_prestation int primary key auto_increment not null,
    nom_prestation varchar(50) not null,
    prix int not null
)engine=innodb;

create table choisir(
    id_prestation int not null,
    id_reservation int not null,
    primary key(id_prestation, id_reservation)
)engine=innodb;

alter table definir
add constraint fk_definir_utilisateur
Foreign Key (id_utilisateur)
references utilisateurs (id_utilisateur);

alter table definir
add constraint fk_definir_role
Foreign Key (id_role)
references roles (id_role);

alter table reserver
add constraint fk_reserver_utilisateur
Foreign Key (id_utilisateur)
references utilisateurs (id_utilisateur);

alter table reserver
add constraint fk_reserver_reservation
Foreign Key (id_reservation)
references reservations (id_reservation);

alter table affecter
add constraint fk_affecter_reservation
Foreign Key (id_reservation)
references reservations (id_reservation);

alter table affecter
add constraint fk_affecter_calendrier
Foreign Key (id_calendrier)
references calendrier (id_calendrier);

alter table choisir
add constraint fk_choisir_reservation
Foreign Key (id_reservation)
references reservations (id_reservation);

alter table choisir
add constraint fk_choisir_prestation
Foreign Key (id_prestation)
references prestations (id_prestation);


