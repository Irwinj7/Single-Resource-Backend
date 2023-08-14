\c videogames_dev;

INSERT INTO videogames (id, name, url, genre,is_favorite) VALUES
(730,'Counter-Strike: Global Offensive', 'https://steamdb.info/app/730/charts/', 'Shooter', true),
(1086940,'Baldurs Gate 3', 'https://steamdb.info/app/1086940/charts/', 'RPG', true),
(570,'Dota 2', 'https://steamdb.info/app/570/charts/', 'MOBA', true),
(1172470,'Apex Legends', 'https://steamdb.info/app/1172470/charts/', 'Battle Royal', false),
(218,'Source SDK Base 2007', 'https://steamdb.info/app/218/charts/', 'Tool', false),
(578080,'PUBG: BATTLEGROUNDS', 'https://steamdb.info/app/578080/charts/', 'Battle Royale', true),
(252490,'Rust', 'https://steamdb.info/app/252490/charts/', 'Survival', false),
(440,'Team Fortress 2', 'https://steamdb.info/app/440/charts/', 'Shooter', false),
(271590,'Grand Theft Auto V', 'https://steamdb.info/app/271590/charts/', 'Shooter', true),
(1938090,'Call of Duty®', 'https://steamdb.info/app/1938090/charts/', 'Shooter', true),
(304930,'Unturned', 'https://steamdb.info/app/304930/charts/', 'Shooter', false),
(359550,'Tom Clancys Rainbow Six Siege', 'https://steamdb.info/app/359550/charts/', 'Shooter', true),
(431960,'Wallpaper Engine', 'https://steamdb.info/app/431960/charts/', 'Tool', true),
(236390,'War Thunder', 'https://steamdb.info/app/236390/charts/', 'MMO', false),
(1282100,'Remnant II', 'https://steamdb.info/app/1282100/charts/', 'Survival', false),
(1085660,'Destiny 2', 'https://steamdb.info/app/1085660/charts/', 'MMO', true),
(381210,'Dead by Daylight', 'https://steamdb.info/app/381210/charts/', 'Survival', true);

INSERT INTO abouts (app_id, app_type, publisher, last_change, last_update, release_date)
VALUES
(730, 'Game', 'Valve', 19816755, '7 August 2023','21 August 2012'),
(1086940, 'Game', 'Larian Studios', 19892998, '14 August 2023','3 August 2023'),
(570,'Game','Valve',19880472,'12 August 2023','9 July 2013'),
(1172470,'Game','Electronic Arts',19892152,'14 August 2023','5 November 2020'),
(218,'Tool','N/A',18987327,'30 May 2023','N/A'),
(578080,'Game.','KRAFTON, Inc.',19848739,'10 August 2023','21 December 2017'),
(252490,'Game','Facepunch Studios',19876368,'12 August 2023','8 February 2018'),
(440,'Game','Valve',19816861,'7 August 2023','10 October 2007'),
(271590,'Game','Rockstar Games',19895989,'14 August 2023','13 April 2015'),
(1938090,'Game','Activision',19896994,'14 August 2023','28 October 2022'), 
(304930,'Game','Smartly Dressed Games',19817157,'7 August 2023','7 July 2017'),
(359550,'Game','Ubisoft',19897949,'14 August 2023','1 December 2015'),
(431960,'Application','Wallpaper Engine Team',19884830,'13 August 2023','16 November 2018'),
(236390,'Game','Gaijin Distribution KFT',19890893,'14 August 2023','15 August 2013'),
(1282100,'Game','Gearbox Publishing',19894168,'14 August 2023','25 July 2023'), 
(1085660,'Game','Bungie',19895172,'14 August 2023','1 October 2019'),
(381210,'Game','Behaviour Interactive Inc.',19892743,'14 August 2023','14 June 2016');