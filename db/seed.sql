\c videogames_dev;

INSERT INTO videogames (name, url, genre,is_favorite) VALUES
('Counter-Strike: Global Offensive', 'https://steamdb.info/app/730/charts/', 'Shooter', true),
('Baldurs Gate 3', 'https://steamdb.info/app/1086940/charts/', 'RPG', true),
('Dota 2', 'https://steamdb.info/app/570/charts/', 'MOBA', true),
('Apex Legends', 'https://steamdb.info/app/1172470/charts/', 'Battle Royal', false),
('Source SDK Base 2007', 'https://steamdb.info/app/218/charts/', 'Tool', false),
('PUBG: BATTLEGROUNDS', 'https://steamdb.info/app/578080/charts/', 'Battle Royale', true),
('Rust', 'https://steamdb.info/app/252490/charts/', 'Survival', false),
('Team Fortress 2', 'https://steamdb.info/app/440/charts/', 'Shooter', false),
('Grand Theft Auto V', 'https://steamdb.info/app/271590/charts/', 'Shooter', true),
('Call of Duty®', 'https://steamdb.info/app/1938090/charts/', 'Shooter', true),
('Unturned', 'https://steamdb.info/app/304930/charts/', 'Shooter', false),
('Tom Clancys Rainbow Six Siege', 'https://steamdb.info/app/359550/charts/', 'Shooter', true),
('Wallpaper Engine', 'https://steamdb.info/app/431960/charts/', 'Tool', true),
('War Thunder', 'https://steamdb.info/app/236390/charts/', 'MMO', false),
('Remnant II', 'https://steamdb.info/app/1282100/charts/', 'Survival', false),
('Destiny 2', 'https://steamdb.info/app/1085660/charts/', 'MMO', true),
('Dead by Daylight', 'https://steamdb.info/app/381210/charts/', 'Survival', true);

INSERT INTO abouts (videogame_id, app_type, publisher, last_change, last_update, release_date)
VALUES
('1', 'Game', 'Valve', 19816755, '7 August 2023','21 August 2012'),
('2', 'Game', 'Larian Studios', 19892998, '14 August 2023','3 August 2023'),
('3','Game','Valve',19880472,'12 August 2023','9 July 2013'),
('4','Game','Electronic Arts',19892152,'14 August 2023','5 November 2020'),
('5','Tool','N/A',18987327,'30 May 2023','N/A'),
('6','Game.','KRAFTON, Inc.',19848739,'10 August 2023','21 December 2017'),
('7','Game','Facepunch Studios',19876368,'12 August 2023','8 February 2018'),
('8','Game','Valve',19816861,'7 August 2023','10 October 2007'),
('9','Game','Rockstar Games',19895989,'14 August 2023','13 April 2015'),
('10','Game','Activision',19896994,'14 August 2023','28 October 2022'), 
('11','Game','Smartly Dressed Games',19817157,'7 August 2023','7 July 2017'),
('12','Game','Ubisoft',19897949,'14 August 2023','1 December 2015'),
('13','Application','Wallpaper Engine Team',19884830,'13 August 2023','16 November 2018'),
('14','Game','Gaijin Distribution KFT',19890893,'14 August 2023','15 August 2013'),
('15','Game','Gearbox Publishing',19894168,'14 August 2023','25 July 2023'), 
('16','Game','Bungie',19895172,'14 August 2023','1 October 2019'),
('17','Game','Behaviour Interactive Inc.',19892743,'14 August 2023','14 June 2016');