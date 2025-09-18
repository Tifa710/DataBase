create database movie
go
use movie 
go
create table actor (
act_id int identity primary key ,
act_fname char (20),
act_lname char(20),
act_gender char(1))
go
create table director 
(
dir_id int identity primary key,
dir_fname char (20),
dir_lname char(20)
)
go
create table movie 
(
mov_id int identity primary key,
mov_title char(50),
mov_year int,
mov_time int,
mov_lang char (50),
mov_dt_rel date,
mov_rel_country char(5)
)
go
create table reviewer
(
rev_id int identity primary key,
rev_name char(30)
)
go
create table geners (
gen_id int identity primary key ,
gen_title char(20)
)
go
create table movie_geners(
mov_id int references movie (mov_id),
gen_id int references geners (gen_id)
)
go
create table rating 
(
mov_id int references movie (mov_id),
rev_id int references reviewer (rev_id),
rev_stars int,
num_o_ratings int
)
go
create table movie_cast (
act_id int references actor (act_id) ,
mov_id int references movie (mov_id),
role char(30)
)
go 
create table movie_direction (
dir_id int references director (dir_id),
mov_id int references movie (mov_id)
)