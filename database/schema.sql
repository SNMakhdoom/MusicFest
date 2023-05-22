CREATE DATABASE IF NOT EXISTS event_db;

USE event_db;

CREATE TABLE IF NOT EXISTS lineup (
            id INT AUTO_INCREMENT PRIMARY KEY,
            track_name VARCHAR(255),
            artist_name VARCHAR(255),
            artwork_url VARCHAR(255),
            date_time date
        )

CREATE TABLE IF NOT EXISTS stages (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    description TEXT,
    location VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS contact_forms (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    message TEXT
);



INSERT INTO lineup (track_name, artist_name, artwork_url, date_time)
VALUES 
('Music', 'Erick Sermon', 'https://is4-ssl.mzstatic.com/image/thumb/Music125/v4/54/9f/62/549f62b4-f934-a91f-3d1c-a6972e7d7b41/mzi.fuesaexk.jpg/100x100bb.jpg', DATE_ADD('2023-10-01', INTERVAL FLOOR(RAND() * 30) DAY)),
('Music', 'Madonna', 'https://is4-ssl.mzstatic.com/image/thumb/Music123/v4/1c/46/da/1c46da55-6dff-2c58-837e-bdd419ff9ca8/093624759829.jpg/100x100bb.jpg', DATE_ADD('2023-10-01', INTERVAL FLOOR(RAND() * 30) DAY)),
('Music (2021)', 'Sia', 'https://is4-ssl.mzstatic.com/image/thumb/Video114/v4/cb/b3/8b/cbb38bb2-127c-8081-94f4-1595daf40cb6/pr_source.jpg/100x100bb.jpg', DATE_ADD('2023-10-01', INTERVAL FLOOR(RAND() * 30) DAY)),
("Don't Stop Believin", 'Journey', 'https://is5-ssl.mzstatic.com/image/thumb/Music125/v4/cd/43/e7/cd43e76f-4ff1-f700-d84f-86eeea7fa5bb/828768588925.jpg/100x100bb.jpg', DATE_ADD('2023-10-01', INTERVAL FLOOR(RAND() * 30) DAY)),
('Crazy Rich Asians', 'Jon M. Chu', 'https://is2-ssl.mzstatic.com/image/thumb/Video128/v4/44/14/8b/44148b1a-741d-6280-a897-9957b8c8e189/pr_source.lsr/100x100bb.jpg', DATE_ADD('2023-10-01', INTERVAL FLOOR(RAND() * 30) DAY)),
("I'm Yours", 'Jason Mraz', 'https://is3-ssl.mzstatic.com/image/thumb/Music115/v4/f8/ac/ec/f8acec21-40e2-fa91-fe61-1be3cbc1467a/mzi.jokpbtnf.jpg/100x100bb.jpg', DATE_ADD('2023-10-01', INTERVAL FLOOR(RAND() * 30) DAY)),
('Just Give Me a Reason (feat. Nate Ruess)', 'P!nk', 'https://is2-ssl.mzstatic.com/image/thumb/Music115/v4/2c/b0/de/2cb0de7b-4559-d885-36f8-271c950cba34/886443562097.jpg/100x100bb.jpg', DATE_ADD('2023-10-01', INTERVAL FLOOR(RAND() * 30) DAY)),
('Some Nights', 'Fun.', 'https://is1-ssl.mzstatic.com/image/thumb/Features115/v4/b2/df/a3/b2dfa32c-ea54-7983-0da1-6964e60a1bd7/dj.aqphuayl.jpg/100x100bb.jpg', DATE_ADD('2023-10-01', INTERVAL FLOOR(RAND() * 30) DAY)),
('Pumped Up Kicks', 'Foster the People', 'https://is1-ssl.mzstatic.com/image/thumb/Music115/v4/ba/07/5b/ba075b3c-f0c4-b519-59f3-7ae74d43246b/dj.lajxsvkg.jpg/100x100bb.jpg', DATE_ADD('2023-10-01', INTERVAL FLOOR(RAND() * 30) DAY)),
("Can't Hold Us (feat. Ray Dalton)", 'Macklemore & Ryan Lewis', 'https://is4-ssl.mzstatic.com/image/thumb/Music125/v4/91/c1/b5/91c1b5cc-d4f1-da61-d3dc-2dd93e6b0a7d/707541525299.jpg/100x100bb.jpg', DATE_ADD('2023-10-01', INTERVAL FLOOR(RAND() * 30) DAY)),
('Dont Stop Believin', 'Journey', 'https://is5-ssl.mzstatic.com/image/thumb/Music125/v4/cd/43/e7/cd43e76f-4ff1-f700-d84f-86eeea7fa5bb/828768588925.jpg/100x100bb.jpg', DATE_ADD('2023-10-01', INTERVAL FLOOR(RAND() * 30) DAY)),
('Im Yours', 'Jason Mraz', 'https://is3-ssl.mzstatic.com/image/thumb/Music115/v4/f8/ac/ec/f8acec21-40e2-fa91-fe61-1be3cbc1467a/mzi.jokpbtnf.jpg/100x100bb.jpg', DATE_ADD('2023-10-01', INTERVAL FLOOR(RAND() * 30) DAY)),
('Just Give Me a Reason (feat. Nate Ruess)', 'P!nk', 'https://is2-ssl.mzstatic.com/image/thumb/Music115/v4/2c/b0/de/2cb0de7b-4559-d885-36f8-271c950cba34/886443562097.jpg/100x100bb.jpg', DATE_ADD('2023-10-01', INTERVAL FLOOR(RAND() * 30) DAY)),
('Pumped Up Kicks', 'Foster the People', 'https://is1-ssl.mzstatic.com/image/thumb/Music115/v4/ba/07/5b/ba075b3c-f0c4-b519-59f3-7ae74d43246b/dj.lajxsvkg.jpg/100x100bb.jpg', DATE_ADD('2023-10-01', INTERVAL FLOOR(RAND() * 30) DAY)),
('Sail', 'AWOLNATION', 'https://is1-ssl.mzstatic.com/image/thumb/Music125/v4/57/96/fe/5796fe01-7f69-8054-9ac2-1fea6b051f18/884977928860.jpg/100x100bb.jpg', DATE_ADD('2023-10-01', INTERVAL FLOOR(RAND() * 30) DAY)),
('When I Was Your Man', 'Bruno Mars', 'https://is1-ssl.mzstatic.com/image/thumb/Music115/v4/e0/a4/7c/e0a47c6f-005a-9f9f-ce29-8e858e2bcfcb/075679957283.jpg/100x100bb.jpg', DATE_ADD('2023-10-01', INTERVAL FLOOR(RAND() * 30) DAY)),
('Rockstar', 'Nickelback', 'https://is2-ssl.mzstatic.com/image/thumb/Music114/v4/f8/e0/db/f8e0db52-f6e5-5d85-6e0a-ae73e5caab11/mzi.qohxegpg.jpg/100x100bb.jpg', DATE_ADD('2023-10-01', INTERVAL FLOOR(RAND() * 30) DAY)),
('What Makes You Beautiful', 'One Direction', 'https://is2-ssl.mzstatic.com/image/thumb/Music125/v4/c3/d4/76/c3d4765f-006e-c9ac-6b83-50ae04894eff/dj.dqbxwvpe.jpg/100x100bb.jpg', DATE_ADD('2023-10-01', INTERVAL FLOOR(RAND() * 30) DAY)),
('Stronger (What Doesnt Kill You)', 'Kelly Clarkson', 'https://is2-ssl.mzstatic.com/image/thumb/Music/68/81/4f/mzi.wrtaopaz.jpg/100x100bb.jpg', DATE_ADD('2023-10-01', INTERVAL FLOOR(RAND() * 30) DAY)),
('Locked Out of Heaven', 'Bruno Mars', 'https://is1-ssl.mzstatic.com/image/thumb/Music115/v4/e0/a4/7c/e0a47c6f-005a-9f9f-ce29-8e858e2bcfcb/075679957283.jpg/100x100bb.jpg', DATE_ADD('2023-10-01', INTERVAL FLOOR(RAND() * 30) DAY));



INSERT INTO stages (name, description, location)
VALUES 
('O2 Arena', 'The O2 Arena is a multi-purpose indoor arena in the centre of The O2, a large entertainment complex on the Greenwich Peninsula in London.', 'London'),
('Royal Albert Hall', 'A concert hall on the northern edge of South Kensington, London. One of the UK''s most treasured and distinctive buildings.', 'London'),
('Wembley Stadium', 'Wembley Stadium is a football stadium in Wembley, London. It opened in 2007 on the site of the original Wembley Stadium, which was demolished from 2002 to 2003.', 'London'),
('Roundhouse', 'Roundhouse is a performing arts and concert venue situated at the Grade II* listed former railway engine shed in Chalk Farm, London.', 'London'),
('Eventim Apollo', 'The Eventim Apollo is a live entertainment venue in Hammersmith, London. It is one of England''s largest and best-preserved original theatres.', 'London'),
('Barbican Centre', 'The Barbican Centre is a performing arts centre in the Barbican Estate of the City of London and the largest of its kind in Europe.', 'London'),
('Brixton Academy', 'The Brixton Academy, officially called O2 Academy, Brixton, is one of London''s leading music venues, nightclubs and theatres.', 'London');

