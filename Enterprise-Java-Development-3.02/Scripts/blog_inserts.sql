use BlogDB;

insert into Author (Name) values ('Maria Charlotte');
insert into Author (Name) values ('Juan Perez');
insert into Author (Name) values ('Gemma Alcocer');

insert into Post (AuthorID, Title, WordCount, Views)
values
(1, 'Best Paint Colors', 814, 14),
(2, 'Small Space Decorating Tips', 1146, 221),
(1, 'Hot Accessories', 986, 105),
(1, 'Mixing Textures', 765, 22),
(2, 'Kitchen Refresh', 1242, 307),
(1, 'Homemade Art Hacks', 1002, 193),
(3, 'Refinishing Wood Floors', 1571, 7542);
