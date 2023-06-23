CREATE DATABASE photoalbum;
use photoalbum;
CREATE table photos
(photoID int NOT NULL,
title varchar(100),
description varchar(255),
photo varchar(100),
CONSTRAINT PK_ID PRIMARY KEY (photoID));

INSERT INTO photos
(photoID, title, description, photo)
VALUES ('1', 'Bearded Dragon', 
'This lizard is learning how to use the computer mouse.',
 'BeardedDragon_mouse.jpg');
 INSERT INTO photos
(photoID, title, description, photo)
VALUES ('2', 'Dogs in a Smart Car', 
'These cute dogs are learning how to drive a Smart car.',
'dogcar.jpg');
 INSERT INTO photos
(photoID, title, description, photo)
VALUES ('3', 'Cat Studying', 
'This tortiseshell tabby cat is studying for the CompTIA IT Fundamentals exam.',
'catstudy.jpg');
 INSERT INTO photos
(photoID, title, description, photo)
VALUES ('4', 'Chameleon on a Keyboard', 
'The chameleon is having a hard time changing its color to blend in with the computer keyboard.',
'chameleon_keyboard_computer.jpg');
