--- 
--- This is a generated script. Do not edit directly.
--- If you need this file updated, you can do it by
--- editing the seed_generator/index.js file directly.
--- 

--- Users
INSERT INTO users VALUES(null, "Pake", "Perez", "pakeperez@gmail.com");
INSERT INTO users VALUES(null, "Edgar", "Magana", "edgarmaganaglez@hotmail.com");
INSERT INTO users VALUES(null, "Marcelo", "Ramos", "march.reymus@gmail.com");

--- Severities
INSERT INTO severity VALUES(null, 'Low');
INSERT INTO severity VALUES(null, 'Medium');
INSERT INTO severity VALUES(null, 'High');

--- Ticket Types
INSERT INTO ticket_types VALUES(null, "Bug");
INSERT INTO ticket_types VALUES(null, "Development Item");
INSERT INTO ticket_types VALUES(null, "Enhancement");

--- Resolutions
INSERT INTO resolutions VALUES(null, "Fixed");
INSERT INTO resolutions VALUES(null, "Working as Designed");
INSERT INTO resolutions VALUES(null, "Won't Fix");

--- Status
INSERT INTO status VALUES(null, 'New');
INSERT INTO status VALUES(null ,'In Progress');
INSERT INTO status VALUES(null, 'Under Review');
INSERT INTO status VALUES(null, 'Closed');

INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(1, 'Ticket 1', 'Ticket 1 will hopefully have a description one day... 

Ticket 1 will hopefully have a description one day... Ticket 1 will hopefully have a description one day... 
Ticket 1 will hopefully have a description one day...  ', 2, 3, 3, '2020-05-13 23:35:52', 3, '2020-05-17 18:23:52', 2, null, null, 3, null);
INSERT INTO comments VALUES(null, '#1 Trending in Wakanda', 1, 2, '2020-05-19 19:01:52');
INSERT INTO comments VALUES(null, 'Easily one of the best trailers of all time', 1, 2, '2020-05-19 07:54:52');
INSERT INTO comments VALUES(null, 'Iron Man : Tell me his name again             


Gamora : Covid-19! 




(BGM rolls)', 1, 1, '2020-05-18 07:38:52');
INSERT INTO comments VALUES(null, 'Who is here 2 years later.', 1, 3, '2020-05-16 11:34:52');
INSERT INTO comments VALUES(null, 'Marvel: I hope they remember you..


DC: The hell they won’t', 1, 1, '2020-05-21 08:19:52');
INSERT INTO comments VALUES(null, '“I hope they remember you.”






Oh boy, did we ever...', 1, 3, '2020-05-20 18:45:52');
INSERT INTO comments VALUES(null, 'lets be honest, you came here because you miss the hype too', 1, 2, '2020-05-17 03:54:52');
INSERT INTO comments VALUES(null, 'Avengers 1: Tries To Kill Tony 


Avengers 2: Still Trying To Kill Tony


Avengers 3: Almost Tries To Kill


Avengers 4: Mission Successful', 1, 1, '2020-05-16 19:26:52');
INSERT INTO comments VALUES(null, 'Iron Man - "Tell me his name again?"








Gamora....."THANOS!"', 1, 2, '2020-05-18 12:00:52');
INSERT INTO comments VALUES(null, 'Easily one of the best trailers of all time', 1, 1, '2020-05-21 07:58:52');
INSERT INTO comments VALUES(null, 'For me, Infinity War is better than Endgame.', 1, 1, '2020-05-16 19:31:52');
INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(2, 'Ticket 2', 'Ticket 2 will hopefully have a description one day... 

Ticket 2 will hopefully have a description one day... Ticket 2 will hopefully have a description one day... 
Ticket 2 will hopefully have a description one day...  ', 1, 2, 3, '2020-05-16 20:00:52', 1, '2020-05-24 03:31:52', 3, '2020-05-23 08:38:52', 2, 4, 2);
INSERT INTO comments VALUES(null, 'That moment when Marvel fooled us into believing Gamora was talking to Tony.', 2, 1, '2020-05-21 00:10:52');
INSERT INTO comments VALUES(null, '1:10
 Did anyone see thor without his head?', 2, 2, '2020-05-19 09:59:52');
INSERT INTO comments VALUES(null, '“I hope they remember you” Don’t worry mr.Stark I will never forget U', 2, 3, '2020-05-22 09:05:52');
INSERT INTO comments VALUES(null, '"Your choices were him or a tree"', 2, 3, '2020-05-21 02:47:52');
INSERT INTO comments VALUES(null, 'Anyone  still watching in october 2019', 2, 3, '2020-05-21 09:29:52');
INSERT INTO comments VALUES(null, 'I remember I literally screamed when Cap stopped Thanoss hand', 2, 3, '2020-05-21 21:45:52');
INSERT INTO comments VALUES(null, 'This does put a smile on my face', 2, 3, '2020-05-21 22:59:52');
INSERT INTO comments VALUES(null, 'Anyone  still watching in october 2019', 2, 3, '2020-05-19 00:35:52');
INSERT INTO comments VALUES(null, 'Marvel : Lets talk about plans here......first kill half heros ......again give life to them in endgame


Disney: WOW!!!!!...', 2, 2, '2020-05-24 16:07:52');
INSERT INTO comments VALUES(null, '2:08
 no, not anymore you`re not :(', 2, 2, '2020-05-20 07:19:52');
INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(3, 'Ticket 3', 'Ticket 3 will hopefully have a description one day... 

Ticket 3 will hopefully have a description one day... Ticket 3 will hopefully have a description one day... 
Ticket 3 will hopefully have a description one day...  ', 1, 3, 3, '2020-05-13 08:12:52', 1, '2020-05-14 21:50:52', 2, null, null, 3, null);
INSERT INTO comments VALUES(null, 'Infinity war trailer :  gives me goosebumps




Me : i m still worthy', 3, 3, '2020-05-16 18:12:52');
INSERT INTO comments VALUES(null, 'Who is here in Dec 2019..', 3, 3, '2020-05-18 21:40:52');
INSERT INTO comments VALUES(null, 'Who is here 2 years later.', 3, 2, '2020-05-17 11:26:52');
INSERT INTO comments VALUES(null, 'i remember being so hyped to see a gamora x tony convo for it to just be edited for the trailer', 3, 2, '2020-05-20 16:46:52');
INSERT INTO comments VALUES(null, 'Im here to remind you that Infinity War is almost 2 years old.', 3, 2, '2020-05-17 18:08:52');
INSERT INTO comments VALUES(null, 'Iron Man : Tell me his name again             


Gamora : Covid-19! 




(BGM rolls)', 3, 2, '2020-05-14 20:46:52');
INSERT INTO comments VALUES(null, 'Thanos: When I m done half of humanity will still exist


Coronavirus: My turn', 3, 1, '2020-05-16 08:46:52');
INSERT INTO comments VALUES(null, '“How many times are you going to watch that trailer?”




Me : “I could do this all day”', 3, 1, '2020-05-18 04:08:52');
INSERT INTO comments VALUES(null, 'Coronavirus: "When im done...Half of humanity will still exist. Perfectly balanced.....As all things should be."', 3, 1, '2020-05-21 04:37:52');
INSERT INTO comments VALUES(null, '1:45
 to 
2:04
 i didnt feel my body when i see this first time....(next level goosebumps)', 3, 2, '2020-05-17 10:25:52');
INSERT INTO comments VALUES(null, 'Coronavirus: when Im done half of humanity will still exist.', 3, 2, '2020-05-15 13:58:52');
INSERT INTO comments VALUES(null, 'This movie unknowingly predicted the pandemic.', 3, 1, '2020-05-14 16:11:52');
INSERT INTO comments VALUES(null, 'Best way to pass the Quarantine: 
WATCH MCU TRAILERS', 3, 3, '2020-05-18 02:42:52');
INSERT INTO comments VALUES(null, 'Who’s here after endgame?', 3, 1, '2020-05-15 20:41:52');
INSERT INTO comments VALUES(null, 'This trailer is full of mistakes scenes that never happened in the real movie', 3, 2, '2020-05-20 14:53:52');
INSERT INTO comments VALUES(null, 'This movie unknowingly predicted the pandemic.', 3, 2, '2020-05-20 18:40:52');
INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(4, 'Ticket 4', 'Ticket 4 will hopefully have a description one day... 

Ticket 4 will hopefully have a description one day... Ticket 4 will hopefully have a description one day... 
Ticket 4 will hopefully have a description one day...  ', 1, 1, 2, '2020-05-15 11:12:52', 3, '2020-05-22 18:14:52', 3, null, null, 2, null);
INSERT INTO comments VALUES(null, 'I am from the future mark ruffolo was right “everyone dies”', 4, 1, '2020-05-19 05:50:52');
INSERT INTO comments VALUES(null, 'Here after endgame. Still believing that this is the greatest trailer ever made in cinematic history', 4, 3, '2020-05-20 08:51:52');
INSERT INTO comments VALUES(null, 'Still watching after endgame', 4, 3, '2020-05-16 13:02:52');
INSERT INTO comments VALUES(null, '2020 : 


Tell me his name again : 


CORONA', 4, 3, '2020-05-16 21:46:52');
INSERT INTO comments VALUES(null, 'YouTube: 
pops this on my recommended page


Me: Youre about... 2 years late!', 4, 2, '2020-05-21 20:25:52');
INSERT INTO comments VALUES(null, 'One of the greatest trailers ever made!', 4, 1, '2020-05-21 01:54:52');
INSERT INTO comments VALUES(null, '“How many times are you going to watch that trailer?”




Me : “I could do this all day”', 4, 3, '2020-05-20 00:53:52');
INSERT INTO comments VALUES(null, '"I hope they remember you" RIP Tony ❤3000', 4, 1, '2020-05-20 03:31:52');
INSERT INTO comments VALUES(null, 'I wanna see Stan Lee come in with an eraser and kill Thanos', 4, 1, '2020-05-18 03:23:52');
INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(5, 'Ticket 5', 'Ticket 5 will hopefully have a description one day... 

Ticket 5 will hopefully have a description one day... Ticket 5 will hopefully have a description one day... 
Ticket 5 will hopefully have a description one day...  ', 2, 3, 1, '2020-05-16 01:41:52', 3, '2020-05-19 05:04:52', 1, null, null, 1, null);
INSERT INTO comments VALUES(null, 'You didnt find this Trailer, the Trailer found you', 5, 3, '2020-05-18 01:53:52');
INSERT INTO comments VALUES(null, 'So its December 2019 and you just rewatched the first IW trailer bc Black widow is giving you a trip down memory lane. And now youre here bc you just couldnt help yourself. 


Well...see you in the endgame trailer comments bc we both know youll skip over CM.', 5, 2, '2020-05-19 07:34:52');
INSERT INTO comments VALUES(null, 'who is watching after AVENGERS ENDGAME', 5, 1, '2020-05-23 01:55:52');
INSERT INTO comments VALUES(null, '2 years ago I can’t believe it , feels like the other day 😭', 5, 2, '2020-05-23 00:04:52');
INSERT INTO comments VALUES(null, 'PLEASE IMAGINE CORONA VIRUS SAYING THANOS LINES 😂', 5, 2, '2020-05-20 03:22:52');
INSERT INTO comments VALUES(null, 'I know many of you are here after watching the movie 😂😂', 5, 2, '2020-05-19 10:23:52');
INSERT INTO comments VALUES(null, 'bro the fact that this trailer is almost at a 100 million views', 5, 3, '2020-05-23 02:28:52');
INSERT INTO comments VALUES(null, 'A wise king never seek out war




Bring me thanos 




Lets kill him properly this time', 5, 1, '2020-05-22 02:15:52');
INSERT INTO comments VALUES(null, 'Still watching after endgame', 5, 1, '2020-05-24 00:28:52');
INSERT INTO comments VALUES(null, '2020 Best Trailer ever made Thanos is also the best villain ever made!', 5, 3, '2020-05-20 22:46:52');
INSERT INTO comments VALUES(null, 'When you dont know what to do so you start watching old trailers*', 5, 2, '2020-05-23 22:22:52');
INSERT INTO comments VALUES(null, 'Its amazing how this trailer created a conversation between tony and gamora that never happened', 5, 3, '2020-05-19 14:25:52');
INSERT INTO comments VALUES(null, 'My subtitles said: "Tell me his name again." "Santos." 😂😂', 5, 2, '2020-05-20 08:25:52');
INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(6, 'Ticket 6', 'Ticket 6 will hopefully have a description one day... 

Ticket 6 will hopefully have a description one day... Ticket 6 will hopefully have a description one day... 
Ticket 6 will hopefully have a description one day...  ', 1, 3, 3, '2020-05-16 09:52:52', 1, '2020-05-24 03:51:52', 1, null, null, 3, null);
INSERT INTO comments VALUES(null, 'So its December 2019 and you just rewatched the first IW trailer bc Black widow is giving you a trip down memory lane. And now youre here bc you just couldnt help yourself. 


Well...see you in the endgame trailer comments bc we both know youll skip over CM.', 6, 2, '2020-05-20 02:41:52');
INSERT INTO comments VALUES(null, 'Evacuate the internet..


Disengage all notifications..


And give the spoilers a thumbs down..', 6, 1, '2020-05-22 16:56:52');
INSERT INTO comments VALUES(null, 'TChalla: And get this man a shield.


Gets him hockey pads.', 6, 1, '2020-05-20 07:55:52');
INSERT INTO comments VALUES(null, 'Infinity War is still my top MCU movie even after Endgame', 6, 1, '2020-05-21 09:24:52');
INSERT INTO comments VALUES(null, 'For me, Infinity War is better than Endgame.', 6, 1, '2020-05-19 02:36:52');
INSERT INTO comments VALUES(null, '1:11
 Coronavirus Thanos:The end is near...', 6, 1, '2020-05-20 22:01:52');
INSERT INTO comments VALUES(null, 'This  is the perfect 2nd trailer', 6, 3, '2020-05-20 12:11:52');
INSERT INTO comments VALUES(null, '1:46
 Remember when everyone thought that Caps gonna die', 6, 1, '2020-05-23 06:59:52');
INSERT INTO comments VALUES(null, 'Thanos: fails


Coronavirus: 
Fine, I’ll d9 it myself', 6, 1, '2020-05-19 22:54:52');
INSERT INTO comments VALUES(null, 'This  is the perfect 2nd trailer', 6, 3, '2020-05-22 11:32:52');
INSERT INTO comments VALUES(null, 'When you dont know what to do so you start watching old trailers*', 6, 2, '2020-05-18 19:53:52');
INSERT INTO comments VALUES(null, 'This trailer still gives me the chills down my spine 2020', 6, 2, '2020-05-23 13:07:52');
INSERT INTO comments VALUES(null, '(Avengers) Loki: I have an army.


Tony: We have a hulk.




(Infinity War) Loki: We have a hulk. 😆😭', 6, 2, '2020-05-22 22:14:52');
INSERT INTO comments VALUES(null, 'Atfter Tony Stark....Loki Will Be Most Powerful, Popular Hero either Villain ..', 6, 1, '2020-05-22 19:49:52');
INSERT INTO comments VALUES(null, '"Your choices were him or a tree"', 6, 3, '2020-05-22 08:35:52');
INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(7, 'Ticket 7', 'Ticket 7 will hopefully have a description one day... 

Ticket 7 will hopefully have a description one day... Ticket 7 will hopefully have a description one day... 
Ticket 7 will hopefully have a description one day...  ', 2, 3, 3, '2020-05-18 20:16:52', 2, '2020-05-19 22:46:52', 1, null, null, 2, null);
INSERT INTO comments VALUES(null, '1:45
 to 
2:04
 i didnt feel my body when i see this first time....(next level goosebumps)', 7, 3, '2020-05-24 07:53:52');
INSERT INTO comments VALUES(null, 'He legit says “he’s comin to us” while iron man flies to Thanos.', 7, 3, '2020-05-25 13:33:52');
INSERT INTO comments VALUES(null, 'I love how the editors of this trailer were able to weave the Avengers theme into Audiomachines "Redshift".', 7, 2, '2020-05-25 08:42:52');
INSERT INTO comments VALUES(null, 'Grandpa: who were the avengers?


Me: I don’t even know who you are😫', 7, 2, '2020-05-20 03:28:52');
INSERT INTO comments VALUES(null, 'Marvel : Lets talk about plans here......first kill half heros ......again give life to them in endgame


Disney: WOW!!!!!...', 7, 3, '2020-05-22 01:54:52');
INSERT INTO comments VALUES(null, 'This trailer is still EPIC', 7, 1, '2020-05-25 10:19:52');
INSERT INTO comments VALUES(null, 'I remember I literally screamed when Cap stopped Thanoss hand', 7, 2, '2020-05-26 10:00:52');
INSERT INTO comments VALUES(null, 'Back to this trailer after endgame...still gives goosebumps...', 7, 3, '2020-05-23 21:16:52');
INSERT INTO comments VALUES(null, 'Infinity war trailer :  gives me goosebumps




Me : i m still worthy', 7, 2, '2020-05-24 01:39:52');
INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(8, 'Ticket 8', 'Ticket 8 will hopefully have a description one day... 

Ticket 8 will hopefully have a description one day... Ticket 8 will hopefully have a description one day... 
Ticket 8 will hopefully have a description one day...  ', 3, 1, 1, '2020-05-14 09:30:52', 3, '2020-05-15 14:13:52', 1, null, null, 1, null);
INSERT INTO comments VALUES(null, 'Thanos: When I m done half of humanity will still exist


Coronavirus: My turn', 8, 3, '2020-05-19 17:40:52');
INSERT INTO comments VALUES(null, 'An south Indian Tamil film created a record by beatings avengers infinity war trailer. 














Bigilleeeeeeyyyyyy', 8, 3, '2020-05-21 17:27:52');
INSERT INTO comments VALUES(null, 'This trailer is so good that when I stop watching it for a while and come back to watch it again all the hype comes back from when it first got released', 8, 3, '2020-05-17 02:08:52');
INSERT INTO comments VALUES(null, 'Anyone  still watching in october 2019', 8, 3, '2020-05-19 00:33:52');
INSERT INTO comments VALUES(null, 'A wise king never seek out war




Bring me thanos 




Lets kill him properly this time', 8, 2, '2020-05-18 17:13:52');
INSERT INTO comments VALUES(null, 'My subtitles said: "Tell me his name again." "Santos." 😂😂', 8, 1, '2020-05-18 17:44:52');
INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(9, 'Ticket 9', 'Ticket 9 will hopefully have a description one day... 

Ticket 9 will hopefully have a description one day... Ticket 9 will hopefully have a description one day... 
Ticket 9 will hopefully have a description one day...  ', 3, 1, 2, '2020-05-15 05:34:52', 3, '2020-05-17 21:35:52', 2, null, null, 1, null);
INSERT INTO comments VALUES(null, 'this trailer would have a billion views in a few years . We all lost a part of ourselves in it .', 9, 3, '2020-05-17 13:29:52');
INSERT INTO comments VALUES(null, '“Who is your master?”




“My master? What do I say, Jesus?”', 9, 3, '2020-05-22 05:22:52');
INSERT INTO comments VALUES(null, 'I literally left my job interview to watch it. Still doesnt regret it.', 9, 1, '2020-05-22 20:55:52');
INSERT INTO comments VALUES(null, 'One thing worse than a breakup














Waiting for Avengers 4', 9, 2, '2020-05-20 04:03:52');
INSERT INTO comments VALUES(null, 'Everyone mad about star lord


Atleast he aimed for the head', 9, 1, '2020-05-19 00:57:52');
INSERT INTO comments VALUES(null, 'Loved this movie although i was looking forward to watching the scene with Gamora warning Tony about Thanos. Kinda dissapointed they never even met', 9, 1, '2020-05-16 06:58:52');
INSERT INTO comments VALUES(null, 'My subtitles said: "Tell me his name again." "Santos." 😂😂', 9, 3, '2020-05-20 03:05:52');
INSERT INTO comments VALUES(null, 'Thanos: When I’m done..




Captions: and um..', 9, 1, '2020-05-16 06:51:52');
INSERT INTO comments VALUES(null, '- Tell me his name again  


- Covid-19', 9, 1, '2020-05-16 16:41:52');
INSERT INTO comments VALUES(null, 'Marvel to DC: 
"I hope they remember you. . . ."', 9, 2, '2020-05-19 02:21:52');
INSERT INTO comments VALUES(null, '“Who is your master?”




“My master? What do I say, Jesus?”', 9, 2, '2020-05-16 06:53:52');
INSERT INTO comments VALUES(null, '“Who is your master?”




“My master? What do I say, Jesus?”', 9, 1, '2020-05-22 09:34:52');
INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(10, 'Ticket 10', 'Ticket 10 will hopefully have a description one day... 

Ticket 10 will hopefully have a description one day... Ticket 10 will hopefully have a description one day... 
Ticket 10 will hopefully have a description one day...  ', 1, 2, 1, '2020-05-18 16:19:52', 2, '2020-05-23 14:24:52', 2, '2020-05-24 16:42:52', 1, 4, 1);
INSERT INTO comments VALUES(null, 'Here after endgame. Still believing that this is the greatest trailer ever made in cinematic history', 10, 2, '2020-05-24 14:48:52');
INSERT INTO comments VALUES(null, 'Best most popular trailer forever 🖤


Who still watching in December 2019?', 10, 3, '2020-05-24 09:01:52');
INSERT INTO comments VALUES(null, 'Who’s here after endgame?', 10, 3, '2020-05-24 00:18:52');
INSERT INTO comments VALUES(null, 'I swear Thor’s cape is like the best thing in trailers (for me anyway) the way he walked and what his cape did is so cool and in the AOU trailer when it took up the whole screen 😍', 10, 3, '2020-05-25 23:31:52');
INSERT INTO comments VALUES(null, '"I hope they remember you" RIP Tony ❤3000', 10, 3, '2020-05-23 08:10:52');
INSERT INTO comments VALUES(null, 'Iron Man - "Tell me his name again?"








Gamora....."THANOS!"', 10, 2, '2020-05-26 09:11:52');
INSERT INTO comments VALUES(null, '“I hope they remember you.”






Oh boy, did we ever...', 10, 1, '2020-05-23 09:24:52');
INSERT INTO comments VALUES(null, 'Atfter Tony Stark....Loki Will Be Most Powerful, Popular Hero either Villain ..', 10, 2, '2020-05-24 12:06:52');
INSERT INTO comments VALUES(null, 'I remember I literally screamed when Cap stopped Thanoss hand', 10, 3, '2020-05-20 13:43:52');
INSERT INTO comments VALUES(null, '#1 Trending in Wakanda', 10, 2, '2020-05-25 18:14:52');
INSERT INTO comments VALUES(null, 'DC: See here, marvel we made a movie with all super heros!


Marvel: Hold my beer.', 10, 2, '2020-05-21 06:06:52');
INSERT INTO comments VALUES(null, '1:10
 Did anyone see thor without his head?', 10, 1, '2020-05-21 02:39:52');
INSERT INTO comments VALUES(null, 'Infinity war trailer :  gives me goosebumps




Me : i m still worthy', 10, 2, '2020-05-20 04:23:52');
INSERT INTO comments VALUES(null, 'Marvel: “I hope they remember you”


DC: ...', 10, 2, '2020-05-22 01:17:52');
INSERT INTO comments VALUES(null, '-How many times would you like to watch Infinity War for the first time?


-14,000,605.


-How many can you watch?


-One.', 10, 3, '2020-05-23 22:37:52');
INSERT INTO comments VALUES(null, 'No matter how many times I watch this 
1:27
 will always give me goosebumps and make me tear up a bit', 10, 2, '2020-05-24 14:42:52');
INSERT INTO comments VALUES(null, 'I still love this movie more  than end game ❤️', 10, 3, '2020-05-25 17:35:52');
INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(11, 'Ticket 11', 'Ticket 11 will hopefully have a description one day... 

Ticket 11 will hopefully have a description one day... Ticket 11 will hopefully have a description one day... 
Ticket 11 will hopefully have a description one day...  ', 2, 2, 1, '2020-05-14 17:51:52', 1, '2020-05-22 09:01:52', 1, null, null, 3, null);
INSERT INTO comments VALUES(null, 'I love how the editors of this trailer were able to weave the Avengers theme into Audiomachines "Redshift".', 11, 2, '2020-05-22 09:32:52');
INSERT INTO comments VALUES(null, 'Best way to pass the Quarantine: 
WATCH MCU TRAILERS', 11, 1, '2020-05-18 19:20:52');
INSERT INTO comments VALUES(null, 'I wish Tony and Gamora would have actually talked in the MCU, even for a single scene.', 11, 3, '2020-05-20 00:40:52');
INSERT INTO comments VALUES(null, 'My friend - how many times did u watch the trailer


Me - 
yes', 11, 1, '2020-05-17 13:43:52');
INSERT INTO comments VALUES(null, 'Two Years Ago Today


The greatest trailer of all time was released. This one! 


Miss the hype 😔', 11, 3, '2020-05-18 02:25:52');
INSERT INTO comments VALUES(null, '"I hope theyll remember you"




This is what MCU says to DCEU', 11, 2, '2020-05-16 08:13:52');
INSERT INTO comments VALUES(null, 'Who else got recommended?', 11, 1, '2020-05-21 15:42:52');
INSERT INTO comments VALUES(null, 'Wow this was really two years ago who else is here wit me', 11, 3, '2020-05-16 08:14:52');
INSERT INTO comments VALUES(null, 'I feel like this happened yesterday.', 11, 2, '2020-05-21 14:41:52');
INSERT INTO comments VALUES(null, 'Who else got recommended?', 11, 2, '2020-05-22 10:49:52');
INSERT INTO comments VALUES(null, 'In all Thanos scenes in the trailers, they showed him with only two stones even though he got more than 4 stones before fighting on Titan and Wakanda.', 11, 1, '2020-05-16 10:06:52');
INSERT INTO comments VALUES(null, 'Ha! i remember seeing cap holding The infinity gauglet and almost passing out, now you imagine how i felt in andgame with cap lifting mjonir😂 If i could choose a super power, it would be the power to watch endgame and infity war again for the first time!', 11, 1, '2020-05-16 08:32:52');
INSERT INTO comments VALUES(null, '"Your choices were him or a tree"', 11, 1, '2020-05-20 03:00:52');
INSERT INTO comments VALUES(null, 'This trailer is so good that when I stop watching it for a while and come back to watch it again all the hype comes back from when it first got released', 11, 3, '2020-05-17 13:47:52');
INSERT INTO comments VALUES(null, '- Tell me his name again  


- Covid-19', 11, 1, '2020-05-21 08:33:52');
INSERT INTO comments VALUES(null, 'Iron Man Is still not dead tO Know why like  my comment', 11, 2, '2020-05-20 11:29:52');
INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(12, 'Ticket 12', 'Ticket 12 will hopefully have a description one day... 

Ticket 12 will hopefully have a description one day... Ticket 12 will hopefully have a description one day... 
Ticket 12 will hopefully have a description one day...  ', 1, 1, 1, '2020-05-12 15:13:52', 2, '2020-05-15 00:56:52', 1, '2020-05-16 16:59:52', 1, 4, 3);
INSERT INTO comments VALUES(null, '0:45
 "so thats what we use" why did tony sound a bit Scottish when he said use? or is it just me?', 12, 3, '2020-05-16 04:36:52');
INSERT INTO comments VALUES(null, 'love how they put a ton of peter at the end 😂', 12, 1, '2020-05-19 15:38:52');
INSERT INTO comments VALUES(null, '"Who is here after watching Endgame?"




Me: me




"How many times you watch this trailer?"




Me: i can do this all day', 12, 2, '2020-05-16 00:08:52');
INSERT INTO comments VALUES(null, 'Who else got recommended?', 12, 3, '2020-05-14 06:44:52');
INSERT INTO comments VALUES(null, 'One thing worse than a breakup














Waiting for Avengers 4', 12, 1, '2020-05-14 06:06:52');
INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(13, 'Ticket 13', 'Ticket 13 will hopefully have a description one day... 

Ticket 13 will hopefully have a description one day... Ticket 13 will hopefully have a description one day... 
Ticket 13 will hopefully have a description one day...  ', 3, 1, 3, '2020-05-12 07:16:52', 2, '2020-05-14 15:48:52', 1, null, null, 3, null);
INSERT INTO comments VALUES(null, 'The best movie in MCU.', 13, 1, '2020-05-18 21:13:52');
INSERT INTO comments VALUES(null, 'Avengers Infinity War Trailer 2: 93 Million Views. 


Avengers Endgame Trailer 2: 93 Million Views.


Perfectly Balanced As All Things Should Be!!', 13, 2, '2020-05-16 04:08:52');
INSERT INTO comments VALUES(null, 'Whos here after the tragic spiderman news', 13, 1, '2020-05-17 03:06:52');
INSERT INTO comments VALUES(null, 'Infinity War is still my top MCU movie even after Endgame', 13, 3, '2020-05-18 04:23:52');
INSERT INTO comments VALUES(null, '“Who is your master?”




“My master? What do I say, Jesus?”', 13, 1, '2020-05-15 11:27:52');
INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(14, 'Ticket 14', 'Ticket 14 will hopefully have a description one day... 

Ticket 14 will hopefully have a description one day... Ticket 14 will hopefully have a description one day... 
Ticket 14 will hopefully have a description one day...  ', 3, 2, 3, '2020-05-17 03:51:52', 3, '2020-05-21 11:33:52', 1, '2020-05-20 17:51:52', 1, 4, 2);
INSERT INTO comments VALUES(null, 'Whos here after the tragic spiderman news', 14, 3, '2020-05-23 16:42:52');
INSERT INTO comments VALUES(null, 'When u realised that all that happened under a random green room...', 14, 3, '2020-05-22 14:33:52');
INSERT INTO comments VALUES(null, 'Makes Justice League look like a youtube sketch', 14, 2, '2020-05-24 09:24:52');
INSERT INTO comments VALUES(null, '- Tell me his name again  


- Covid-19', 14, 3, '2020-05-19 01:06:52');
INSERT INTO comments VALUES(null, 'When u realised that all that happened under a random green room...', 14, 2, '2020-05-22 04:18:52');
INSERT INTO comments VALUES(null, 'So its December 2019 and you just rewatched the first IW trailer bc Black widow is giving you a trip down memory lane. And now youre here bc you just couldnt help yourself. 


Well...see you in the endgame trailer comments bc we both know youll skip over CM.', 14, 1, '2020-05-20 15:37:52');
INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(15, 'Ticket 15', 'Ticket 15 will hopefully have a description one day... 

Ticket 15 will hopefully have a description one day... Ticket 15 will hopefully have a description one day... 
Ticket 15 will hopefully have a description one day...  ', 1, 1, 1, '2020-05-12 07:46:52', 2, '2020-05-14 13:17:52', 3, null, null, 1, null);
INSERT INTO comments VALUES(null, '1:48


Yep, thats me during college', 15, 3, '2020-05-19 20:40:52');
INSERT INTO comments VALUES(null, 'Chris evans , chris pratt, chris hemsworth in one movie.










This is CHRISis', 15, 2, '2020-05-17 15:40:52');
INSERT INTO comments VALUES(null, 'Thanos other code name = Coronavirus 2020', 15, 3, '2020-05-15 00:10:52');
INSERT INTO comments VALUES(null, '#1 Trending in Wakanda', 15, 1, '2020-05-18 15:18:52');
INSERT INTO comments VALUES(null, 'love how they put a ton of peter at the end 😂', 15, 3, '2020-05-14 05:08:52');
INSERT INTO comments VALUES(null, 'I am from the future mark ruffolo was right “everyone dies”', 15, 1, '2020-05-14 19:46:52');
INSERT INTO comments VALUES(null, 'Whoever edited the trailer from 
1:28
 to 
1:30
 deserves a raise', 15, 1, '2020-05-18 11:33:52');
INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(16, 'Ticket 16', 'Ticket 16 will hopefully have a description one day... 

Ticket 16 will hopefully have a description one day... Ticket 16 will hopefully have a description one day... 
Ticket 16 will hopefully have a description one day...  ', 3, 3, 3, '2020-05-16 06:59:52', 1, '2020-05-21 23:08:52', 2, null, null, 2, null);
INSERT INTO comments VALUES(null, 'My friend - how many times did u watch the trailer


Me - 
yes', 16, 2, '2020-05-22 10:22:52');
INSERT INTO comments VALUES(null, 'That Scene Cap holding Thanoss hand Was the most prestigious moment when the trailer initially came out two years back.', 16, 1, '2020-05-20 14:20:52');
INSERT INTO comments VALUES(null, 'even though all is finished, cap is old, iron man is dead... I will never forget them, Avengers forever.', 16, 3, '2020-05-20 15:15:52');
INSERT INTO comments VALUES(null, 'Thanos: "When Im done half of humanity will still exist"


Stark: "Hold my nano gauntlet"', 16, 2, '2020-05-18 15:32:52');
INSERT INTO comments VALUES(null, 'Best trailer, Ive ever seen. it still feels is great.', 16, 2, '2020-05-23 02:18:52');
INSERT INTO comments VALUES(null, 'Back to this trailer after endgame...still gives goosebumps...', 16, 1, '2020-05-17 11:40:52');
INSERT INTO comments VALUES(null, 'Its amazing how this trailer created a conversation between tony and gamora that never happened', 16, 1, '2020-05-19 14:58:52');
INSERT INTO comments VALUES(null, 'Avengers 1: Tries To Kill Tony 


Avengers 2: Still Trying To Kill Tony


Avengers 3: Almost Tries To Kill


Avengers 4: Mission Successful', 16, 2, '2020-05-22 04:08:52');
INSERT INTO comments VALUES(null, 'All the interactions between characters whove never met before will make me so happy', 16, 3, '2020-05-17 23:23:52');
INSERT INTO comments VALUES(null, '2 years ago, this day Thanos snapped', 16, 3, '2020-05-18 20:39:52');
INSERT INTO comments VALUES(null, '2:08
 no, not anymore you`re not :(', 16, 2, '2020-05-21 06:10:52');
INSERT INTO comments VALUES(null, 'I wish Tony and Gamora would have actually talked in the MCU, even for a single scene.', 16, 1, '2020-05-17 09:10:52');
INSERT INTO comments VALUES(null, 'Thanos: 
Fails






Coronavirus: Fine, Ill do it myself.', 16, 1, '2020-05-18 23:44:52');
INSERT INTO comments VALUES(null, '*You cannot live with the ending of the movie........where did that bring you*








Back to the trailers.


Ctto.', 16, 1, '2020-05-23 07:30:52');
INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(17, 'Ticket 17', 'Ticket 17 will hopefully have a description one day... 

Ticket 17 will hopefully have a description one day... Ticket 17 will hopefully have a description one day... 
Ticket 17 will hopefully have a description one day...  ', 2, 1, 3, '2020-05-16 03:55:52', 1, '2020-05-20 22:59:52', 1, null, null, 3, null);
INSERT INTO comments VALUES(null, 'Anyone still watching the trailer in October????!?!?!', 17, 2, '2020-05-23 12:25:52');
INSERT INTO comments VALUES(null, '"I am inevitable"


"and I am groot"', 17, 3, '2020-05-24 04:39:52');
INSERT INTO comments VALUES(null, 'Gamora: "The entire time I knew him he only ever had one goal. To be number one on trending. If he is released at the end of November, he will do it in a matter of seconds". 




Iron Man: "Tell me his name again"




Gamora: 
Avengers 4 trailer', 17, 3, '2020-05-20 10:02:52');
INSERT INTO comments VALUES(null, 'We have one advantage, thanos is coming to us. *flies towards Thanos’ ship', 17, 2, '2020-05-20 18:16:52');
INSERT INTO comments VALUES(null, 'who is watching after AVENGERS ENDGAME', 17, 1, '2020-05-23 05:55:52');
INSERT INTO comments VALUES(null, '“I AM GROOT”


“I am Steve Rogers”', 17, 1, '2020-05-23 13:42:52');
INSERT INTO comments VALUES(null, '“I AM GROOT”


“I am Steve Rogers”', 17, 2, '2020-05-19 11:42:52');
INSERT INTO comments VALUES(null, 'Thanos: 
Fails






Coronavirus: Fine, Ill do it myself.', 17, 1, '2020-05-17 11:28:52');
INSERT INTO comments VALUES(null, 'Bru I would be so mad if I was a wakanda warrior that died in the snap and then came back to life to die in endgame 😭😂', 17, 2, '2020-05-23 12:47:52');
INSERT INTO comments VALUES(null, '"I hope theyll remember you"




This is what MCU says to DCEU', 17, 3, '2020-05-20 07:54:52');
INSERT INTO comments VALUES(null, 'bro the fact that this trailer is almost at a 100 million views', 17, 2, '2020-05-19 05:21:52');
INSERT INTO comments VALUES(null, 'Easily Marvels best and most hype trailer ever', 17, 3, '2020-05-17 11:40:52');
INSERT INTO comments VALUES(null, '1:50
 just a loop button for me', 17, 2, '2020-05-23 00:24:52');
INSERT INTO comments VALUES(null, 'who is here watching in September 2019 ?', 17, 1, '2020-05-18 20:12:52');
INSERT INTO comments VALUES(null, '0:26


Tony:Tell me his name again


YouTube caption:Santos', 17, 2, '2020-05-23 02:42:52');
INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(18, 'Ticket 18', 'Ticket 18 will hopefully have a description one day... 

Ticket 18 will hopefully have a description one day... Ticket 18 will hopefully have a description one day... 
Ticket 18 will hopefully have a description one day...  ', 3, 1, 2, '2020-05-18 06:16:52', 3, '2020-05-21 02:15:52', 3, null, null, 2, null);
INSERT INTO comments VALUES(null, 'even though all is finished, cap is old, iron man is dead... I will never forget them, Avengers forever.', 18, 3, '2020-05-19 21:32:52');
INSERT INTO comments VALUES(null, 'Just noticed that they edited the other infinity stones out for that scene at 
1:45
 to not spoil the movie in the trailer. In the actual scene Thanos has all the stones except the mind stone.', 18, 2, '2020-05-21 06:46:52');
INSERT INTO comments VALUES(null, '2:10
 


Peter:"Karen,hide my spider legs for the trailer but show them in the movie."








Karen:"Do you want me to activate Instant Kill?"', 18, 2, '2020-05-21 06:24:52');
INSERT INTO comments VALUES(null, 'Marvel to DC: 
"I hope they remember you. . . ."', 18, 1, '2020-05-21 20:51:52');
INSERT INTO comments VALUES(null, '"I am inevitable"


"and I am groot"', 18, 2, '2020-05-25 08:53:52');
INSERT INTO comments VALUES(null, 'The version of the ‘made-up names’ scene we got in this trailer is way way way better than the one in the film', 18, 1, '2020-05-23 22:18:52');
INSERT INTO comments VALUES(null, 'In all Thanos scenes in the trailers, they showed him with only two stones even though he got more than 4 stones before fighting on Titan and Wakanda.', 18, 2, '2020-05-22 19:16:52');
INSERT INTO comments VALUES(null, '1:46
 Remember when everyone thought that Caps gonna die', 18, 1, '2020-05-26 00:18:52');
INSERT INTO comments VALUES(null, 'Who is here after Spiderman is no longer in MCU?', 18, 3, '2020-05-19 12:18:52');
INSERT INTO comments VALUES(null, '1:42
 Gives me chills now!!!', 18, 1, '2020-05-21 04:29:52');
INSERT INTO comments VALUES(null, 'That "I hope they remember you..." line means so much more now. :(', 18, 3, '2020-05-21 15:27:52');
INSERT INTO comments VALUES(null, 'Who’s here after avengers 4 trailer ‼️‼️‼️🔥🔥🔥🔥🔥🎉', 18, 3, '2020-05-19 16:51:52');
INSERT INTO comments VALUES(null, '1:45
 y’all remember when we thought that this was Cap’s last stand? Lol', 18, 1, '2020-05-25 08:12:52');
INSERT INTO comments VALUES(null, 'Remember when we thought that the hulk buster was Tony', 18, 3, '2020-05-24 12:50:52');
INSERT INTO comments VALUES(null, 'Two Years Ago today, it was very intense to watch. It still is amazing just watching it.', 18, 1, '2020-05-22 15:46:52');
INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(19, 'Ticket 19', 'Ticket 19 will hopefully have a description one day... 

Ticket 19 will hopefully have a description one day... Ticket 19 will hopefully have a description one day... 
Ticket 19 will hopefully have a description one day...  ', 3, 1, 2, '2020-05-18 06:13:52', 3, '2020-05-23 00:52:52', 1, null, null, 2, null);
INSERT INTO comments VALUES(null, 'Avengers 1: Tries To Kill Tony 


Avengers 2: Still Trying To Kill Tony


Avengers 3: Almost Tries To Kill


Avengers 4: Mission Successful', 19, 2, '2020-05-23 13:58:52');
INSERT INTO comments VALUES(null, 'Thanos: "When Im done half of humanity will still exist"


Stark: "Hold my nano gauntlet"', 19, 1, '2020-05-26 01:48:52');
INSERT INTO comments VALUES(null, 'Gamora: "The entire time I knew him he only ever had one goal. To be number one on trending. If he is released at the end of November, he will do it in a matter of seconds". 




Iron Man: "Tell me his name again"




Gamora: 
Avengers 4 trailer', 19, 2, '2020-05-23 20:52:52');
INSERT INTO comments VALUES(null, '1:28
 onwards


Oh man, its been 2 years and Im still getting getting the goosebumps....', 19, 3, '2020-05-19 16:53:52');
INSERT INTO comments VALUES(null, 'Thanos: When I m done half of humanity will still exist


Coronavirus: My turn', 19, 3, '2020-05-26 02:35:52');
INSERT INTO comments VALUES(null, 'who is watching after AVENGERS ENDGAME', 19, 2, '2020-05-21 17:48:52');
INSERT INTO comments VALUES(null, 'Anyone still watching the trailer in October????!?!?!', 19, 1, '2020-05-22 08:45:52');
INSERT INTO comments VALUES(null, 'Remember how hyped were we for this movie.', 19, 3, '2020-05-24 14:13:52');
INSERT INTO comments VALUES(null, 'Y’all remember all the theories', 19, 3, '2020-05-20 13:39:52');
INSERT INTO comments VALUES(null, 'I hope they remember you....




Me : I  still watch this trailer for him...', 19, 3, '2020-05-22 06:52:52');
INSERT INTO comments VALUES(null, '- Tell me his name again  


- Covid-19', 19, 3, '2020-05-26 02:48:52');
INSERT INTO comments VALUES(null, 'I wish Tony and Gamora would have actually talked in the MCU, even for a single scene.', 19, 3, '2020-05-19 18:18:52');
INSERT INTO comments VALUES(null, 'In all Thanos scenes in the trailers, they showed him with only two stones even though he got more than 4 stones before fighting on Titan and Wakanda.', 19, 1, '2020-05-25 11:05:52');
INSERT INTO comments VALUES(null, 'This trailer still gives me the chills down my spine 2020', 19, 3, '2020-05-23 07:12:52');
INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(20, 'Ticket 20', 'Ticket 20 will hopefully have a description one day... 

Ticket 20 will hopefully have a description one day... Ticket 20 will hopefully have a description one day... 
Ticket 20 will hopefully have a description one day...  ', 1, 3, 2, '2020-05-15 17:32:52', 3, '2020-05-18 23:27:52', 3, null, null, 2, null);
INSERT INTO comments VALUES(null, 'The trailers and TV spots of Infinity War &amp; Endgame never get old.', 20, 3, '2020-05-19 14:15:52');
INSERT INTO comments VALUES(null, '" The  end is near " that Scene was awesome', 20, 3, '2020-05-23 13:56:52');
INSERT INTO comments VALUES(null, '"Who is here after watching Endgame?"




Me: me




"How many times you watch this trailer?"




Me: i can do this all day', 20, 1, '2020-05-21 04:10:52');
INSERT INTO comments VALUES(null, 'It’s called Creativity the conversation between Tony &amp; Gamoora(Tell me his name again Gamoora Replied Thanos) That never happened in whole movie...', 20, 2, '2020-05-23 12:01:52');
INSERT INTO comments VALUES(null, 'Who is here after Spiderman is no longer in MCU?', 20, 2, '2020-05-21 08:56:52');
INSERT INTO comments VALUES(null, 'Coronavirus after wiping out half the population of China: “Perfectly balanced as all things should be”', 20, 3, '2020-05-23 00:48:52');
INSERT INTO comments VALUES(null, 'When people believed that cap had the soul stone when holding back thanos', 20, 1, '2020-05-22 03:09:52');
INSERT INTO comments VALUES(null, 'This movie promised, this movie delivered', 20, 2, '2020-05-18 06:15:52');
INSERT INTO comments VALUES(null, 'I remember this trailer dropping while i was in lunch,instead of eating i rewatched this', 20, 1, '2020-05-21 02:35:52');
INSERT INTO comments VALUES(null, 'well this trailer give us the clue the title about the part 2 of the avengers infinity war.. but we dont realize it!!... well done marvel...




at minute 
1:10
 "The end is near"', 20, 3, '2020-05-19 18:43:52');
INSERT INTO comments VALUES(null, 'Who’s here after endgame?', 20, 2, '2020-05-17 01:47:52');
INSERT INTO comments VALUES(null, '- Tell me his name again  


- Covid-19', 20, 1, '2020-05-17 20:21:52');
INSERT INTO comments VALUES(null, '"I hope they remember you" RIP Tony ❤3000', 20, 1, '2020-05-20 07:55:52');
INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(21, 'Ticket 21', 'Ticket 21 will hopefully have a description one day... 

Ticket 21 will hopefully have a description one day... Ticket 21 will hopefully have a description one day... 
Ticket 21 will hopefully have a description one day...  ', 2, 2, 1, '2020-05-15 09:35:52', 1, '2020-05-19 03:53:52', 2, null, null, 1, null);
INSERT INTO comments VALUES(null, 'Easily one of the best trailers of all time', 21, 2, '2020-05-20 00:39:52');
INSERT INTO comments VALUES(null, 'Grandpa: who were the avengers?


Me: I don’t even know who you are😫', 21, 2, '2020-05-20 23:20:52');
INSERT INTO comments VALUES(null, 'Nothing in the MCU will ever come close to the hype and excitement created in the build up to Infinity War and even Endgame. The best that I can think of that could come close is the Secret Invasion or Avengers vs X-Men..', 21, 3, '2020-05-23 05:42:52');
INSERT INTO comments VALUES(null, 'They do remember him, they will always remember him 😭😭', 21, 3, '2020-05-23 08:22:52');
INSERT INTO comments VALUES(null, 'This trailer is so good that when I stop watching it for a while and come back to watch it again all the hype comes back from when it first got released', 21, 3, '2020-05-17 14:03:52');
INSERT INTO comments VALUES(null, 'I wanna go back in time and show this to a Marvel fan in the 90s. I feel like their first question would be "wheres Wolverine?"', 21, 3, '2020-05-23 06:36:52');
INSERT INTO comments VALUES(null, 'Easily Marvels best and most hype trailer ever', 21, 3, '2020-05-18 03:15:52');
INSERT INTO comments VALUES(null, '00:28
 goosebumps', 21, 2, '2020-05-17 17:49:52');
INSERT INTO comments VALUES(null, 'That trailer music that lead to so many "infinity war style" trailers.', 21, 2, '2020-05-18 19:28:52');
INSERT INTO comments VALUES(null, 'i remember being so hyped to see a gamora x tony convo for it to just be edited for the trailer', 21, 1, '2020-05-23 04:20:52');
INSERT INTO comments VALUES(null, '#1 Trending in Wakanda', 21, 2, '2020-05-21 22:12:52');
INSERT INTO comments VALUES(null, 'I know many of you are here after watching the movie 😂😂', 21, 3, '2020-05-19 13:58:52');
INSERT INTO comments VALUES(null, 'Who is here in Dec 2019..', 21, 1, '2020-05-19 10:52:52');
INSERT INTO comments VALUES(null, 'Best trailer, Ive ever seen. it still feels is great.', 21, 2, '2020-05-19 00:49:52');
INSERT INTO comments VALUES(null, 'Just hearing the Guardians talking to the other Avengers is enough to make me moister than an oyster', 21, 1, '2020-05-21 05:16:52');
INSERT INTO comments VALUES(null, 'Its already second month of 2020 and idk why Im I still watching it.', 21, 2, '2020-05-21 07:07:52');
INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(22, 'Ticket 22', 'Ticket 22 will hopefully have a description one day... 

Ticket 22 will hopefully have a description one day... Ticket 22 will hopefully have a description one day... 
Ticket 22 will hopefully have a description one day...  ', 2, 2, 3, '2020-05-16 22:04:52', 1, '2020-05-20 09:53:52', 1, null, null, 2, null);
INSERT INTO comments VALUES(null, 'It’s March 20 2020 and this is still awesome', 22, 2, '2020-05-22 18:22:52');
INSERT INTO comments VALUES(null, '1:11
 Coronavirus Thanos:The end is near...', 22, 2, '2020-05-17 23:10:52');
INSERT INTO comments VALUES(null, 'Star Lord- Where Is Gamora?


Iron-Man- I’ll Do You One Better, Who Is Gamora?


Drax- I’ll Do You One Better, WHY IS GAMORA? 😂', 22, 3, '2020-05-19 23:15:52');
INSERT INTO comments VALUES(null, 'Who is here in Dec 2019..', 22, 2, '2020-05-24 03:36:52');
INSERT INTO comments VALUES(null, 'Back to this trailer after endgame...still gives goosebumps...', 22, 1, '2020-05-20 10:04:52');
INSERT INTO comments VALUES(null, 'It’s 2020 and this trailer is still giving me goosebumps', 22, 2, '2020-05-23 23:35:52');
INSERT INTO comments VALUES(null, '“Who is your master?”




“My master? What do I say, Jesus?”', 22, 2, '2020-05-19 05:39:52');
INSERT INTO comments VALUES(null, 'A year and a half later, this trailer still gives me chills', 22, 3, '2020-05-24 20:09:52');
INSERT INTO comments VALUES(null, 'This  is the perfect 2nd trailer', 22, 1, '2020-05-23 00:44:52');
INSERT INTO comments VALUES(null, 'Star Lord- Where Is Gamora?


Iron-Man- I’ll Do You One Better, Who Is Gamora?


Drax- I’ll Do You One Better, WHY IS GAMORA? 😂', 22, 3, '2020-05-21 12:59:52');
INSERT INTO comments VALUES(null, '2 year anniversary how fast time goes', 22, 1, '2020-05-23 02:15:52');
INSERT INTO comments VALUES(null, 'Remember when people thought Cap was the soul stone because of his eyes....', 22, 1, '2020-05-19 13:43:52');
INSERT INTO comments VALUES(null, 'All the interactions between characters whove never met before will make me so happy', 22, 1, '2020-05-19 21:42:52');
INSERT INTO comments VALUES(null, '1:17
 was I the only one who thought Thanos is holding a flower bouquet?', 22, 3, '2020-05-19 00:21:52');
INSERT INTO comments VALUES(null, 'Two Years Ago today, it was very intense to watch. It still is amazing just watching it.', 22, 3, '2020-05-24 03:01:52');
INSERT INTO comments VALUES(null, 'This movie still makes me sad


Even though I know what happens after it', 22, 1, '2020-05-23 07:19:52');
INSERT INTO comments VALUES(null, 'I still love this movie more  than end game ❤️', 22, 2, '2020-05-20 07:45:52');
INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(23, 'Ticket 23', 'Ticket 23 will hopefully have a description one day... 

Ticket 23 will hopefully have a description one day... Ticket 23 will hopefully have a description one day... 
Ticket 23 will hopefully have a description one day...  ', 3, 1, 1, '2020-05-17 22:47:52', 2, '2020-05-23 03:53:52', 3, null, null, 2, null);
INSERT INTO comments VALUES(null, '1:45
 y’all remember when we thought that this was Cap’s last stand? Lol', 23, 1, '2020-05-23 06:14:52');
INSERT INTO comments VALUES(null, 'Thanos: fails


Coronavirus: 
Fine, I’ll d9 it myself', 23, 2, '2020-05-23 10:07:52');
INSERT INTO comments VALUES(null, 'Nothing in the MCU will ever come close to the hype and excitement created in the build up to Infinity War and even Endgame. The best that I can think of that could come close is the Secret Invasion or Avengers vs X-Men..', 23, 3, '2020-05-20 18:49:52');
INSERT INTO comments VALUES(null, '- Tell me his name again  


- Covid-19', 23, 3, '2020-05-21 01:27:52');
INSERT INTO comments VALUES(null, 'Nothing will ever come close to the hype I got from watching the trailers for Infinity War and Endgame. Ahh those were the days', 23, 3, '2020-05-21 15:29:52');
INSERT INTO comments VALUES(null, 'After 8 months of Endgame, My feeling is just "I keep telling everybody they should move on. Some do but not us." #3000', 23, 1, '2020-05-24 15:25:52');
INSERT INTO comments VALUES(null, 'Thanos: 
*fails*




Coronavirus: 
fine I’ll do it myself', 23, 2, '2020-05-23 23:58:52');
INSERT INTO comments VALUES(null, '"I hope theyll remember you"




This is what MCU says to DCEU', 23, 3, '2020-05-19 13:38:52');
INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(24, 'Ticket 24', 'Ticket 24 will hopefully have a description one day... 

Ticket 24 will hopefully have a description one day... Ticket 24 will hopefully have a description one day... 
Ticket 24 will hopefully have a description one day...  ', 2, 2, 1, '2020-05-12 14:27:52', 2, '2020-05-14 10:51:52', 3, null, null, 2, null);
INSERT INTO comments VALUES(null, 'I Wish I could time travel back to the hype of this!', 24, 3, '2020-05-16 10:42:52');
INSERT INTO comments VALUES(null, 'My subtitles said: "Tell me his name again." "Santos." 😂😂', 24, 3, '2020-05-13 19:56:52');
INSERT INTO comments VALUES(null, '2:08
 no, not anymore you`re not :(', 24, 3, '2020-05-15 07:49:52');
INSERT INTO comments VALUES(null, 'Coronavirus: "When im done...Half of humanity will still exist. Perfectly balanced.....As all things should be."', 24, 3, '2020-05-14 01:42:52');
INSERT INTO comments VALUES(null, 'Spoiler alert!!!








Drax stood so still that he became invisible', 24, 3, '2020-05-15 11:45:52');
INSERT INTO comments VALUES(null, 'i remember being so hyped to see a gamora x tony convo for it to just be edited for the trailer', 24, 1, '2020-05-19 11:33:52');
INSERT INTO comments VALUES(null, 'All the interactions between characters whove never met before will make me so happy', 24, 2, '2020-05-14 23:06:52');
INSERT INTO comments VALUES(null, 'A wise king never seek out war




Bring me thanos 




Lets kill him properly this time', 24, 1, '2020-05-20 07:00:52');
INSERT INTO comments VALUES(null, 'This trailer is so good that when I stop watching it for a while and come back to watch it again all the hype comes back from when it first got released', 24, 3, '2020-05-18 02:29:52');
INSERT INTO comments VALUES(null, 'Who is here in Dec 2019..', 24, 3, '2020-05-14 06:17:52');
INSERT INTO comments VALUES(null, '“I AM GROOT”


“I am Steve Rogers”', 24, 1, '2020-05-13 21:55:52');
INSERT INTO comments VALUES(null, 'The entire time I knew him, he only ever had one goal. To wipe out half of the country’s finances.


If he gets all the electoral college votes, he could do it with the sign of an executive orders. “sound effect of paper being signed”


Just like that. 




Tell me his name again. 




Donald Trump.', 24, 2, '2020-05-18 02:32:52');
INSERT INTO comments VALUES(null, 'Someone: when goosebumps will occur??


Me:  when u are listening to avengers theme music!!!', 24, 1, '2020-05-14 06:02:52');
INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(25, 'Ticket 25', 'Ticket 25 will hopefully have a description one day... 

Ticket 25 will hopefully have a description one day... Ticket 25 will hopefully have a description one day... 
Ticket 25 will hopefully have a description one day...  ', 1, 2, 1, '2020-05-13 14:52:52', 3, '2020-05-17 16:45:52', 3, null, null, 3, null);
INSERT INTO comments VALUES(null, 'No matter how many times I watch this 
1:27
 will always give me goosebumps and make me tear up a bit', 25, 2, '2020-05-17 06:31:52');
INSERT INTO comments VALUES(null, 'This movie looks great. I can’t wait for it to come out.', 25, 2, '2020-05-19 23:27:52');
INSERT INTO comments VALUES(null, 'A year and a half later, this trailer still gives me chills', 25, 1, '2020-05-19 16:55:52');
INSERT INTO comments VALUES(null, 'This tralier still hits different', 25, 3, '2020-05-15 08:29:52');
INSERT INTO comments VALUES(null, '1:44
 my dad when he sees me touching the thermostat', 25, 1, '2020-05-15 11:40:52');
INSERT INTO comments VALUES(null, 'The media to Disney: "how much money did you profit off of Avengers:Infinity War and Endgame?"




Disney:..."Yes"....', 25, 1, '2020-05-14 17:00:52');
INSERT INTO comments VALUES(null, 'Anyone still watching the trailer in October????!?!?!', 25, 2, '2020-05-16 18:28:52');
INSERT INTO comments VALUES(null, 'No matter how many times I watch this 
1:27
 will always give me goosebumps and make me tear up a bit', 25, 2, '2020-05-21 15:35:52');
INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(26, 'Ticket 26', 'Ticket 26 will hopefully have a description one day... 

Ticket 26 will hopefully have a description one day... Ticket 26 will hopefully have a description one day... 
Ticket 26 will hopefully have a description one day...  ', 3, 1, 2, '2020-05-15 08:26:52', 1, '2020-05-20 10:14:52', 1, '2020-05-16 10:56:52', 2, 4, 1);
INSERT INTO comments VALUES(null, '2:08
 no, not anymore you`re not :(', 26, 3, '2020-05-19 04:22:52');
INSERT INTO comments VALUES(null, 'Who is here after Spiderman is no longer in MCU?', 26, 2, '2020-05-17 07:28:52');
INSERT INTO comments VALUES(null, '1:46
 Remember when everyone thought that Caps gonna die', 26, 2, '2020-05-21 05:13:52');
INSERT INTO comments VALUES(null, 'Remember when we thought that the hulk buster was Tony', 26, 2, '2020-05-17 19:06:52');
INSERT INTO comments VALUES(null, 'Wow this was really two years ago who else is here wit me', 26, 1, '2020-05-17 16:22:52');
INSERT INTO comments VALUES(null, 'Someone: when goosebumps will occur??


Me:  when u are listening to avengers theme music!!!', 26, 1, '2020-05-18 02:50:52');
INSERT INTO comments VALUES(null, 'Spoiler alert!!!








Drax stood so still that he became invisible', 26, 2, '2020-05-21 12:36:52');
INSERT INTO comments VALUES(null, 'I Wish I could time travel back to the hype of this!', 26, 2, '2020-05-21 18:01:52');
INSERT INTO comments VALUES(null, 'Its 2020 but still watching this trailer..I wish that we will see them again one more time🙂', 26, 3, '2020-05-20 11:03:52');
INSERT INTO comments VALUES(null, 'Loved this movie although i was looking forward to watching the scene with Gamora warning Tony about Thanos. Kinda dissapointed they never even met', 26, 3, '2020-05-16 19:14:52');
INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(27, 'Ticket 27', 'Ticket 27 will hopefully have a description one day... 

Ticket 27 will hopefully have a description one day... Ticket 27 will hopefully have a description one day... 
Ticket 27 will hopefully have a description one day...  ', 2, 3, 1, '2020-05-12 19:17:52', 1, '2020-05-17 07:14:52', 2, null, null, 2, null);
INSERT INTO comments VALUES(null, 'Remember when the soul stone was with Heimdall , but he ended up dying in less than  10 mins after the start .', 27, 2, '2020-05-14 17:38:52');
INSERT INTO comments VALUES(null, 'I wish Tony and Gamora would have actually talked in the MCU, even for a single scene.', 27, 1, '2020-05-15 13:47:52');
INSERT INTO comments VALUES(null, 'Iron Man - "Tell me his name again?"








Gamora....."THANOS!"', 27, 2, '2020-05-19 16:48:52');
INSERT INTO comments VALUES(null, 'Avengers:Saving New York




Avengers Age Of Ultron:saving the world




Avengers Infinity War:Saving The Galaxy 




Avengers Endgame:Avenging the Galaxy', 27, 3, '2020-05-16 05:47:52');
INSERT INTO comments VALUES(null, 'Atfter Tony Stark....Loki Will Be Most Powerful, Popular Hero either Villain ..', 27, 1, '2020-05-15 17:33:52');
INSERT INTO comments VALUES(null, 'Anyone still watching the trailer in October????!?!?!', 27, 3, '2020-05-17 01:45:52');
INSERT INTO comments VALUES(null, '0:24
 ...Coronavirus!', 27, 3, '2020-05-20 17:28:52');
INSERT INTO comments VALUES(null, 'Trailer doesnt have 200M views yet


"Fine...Ill do it myself."', 27, 3, '2020-05-14 01:27:52');
INSERT INTO comments VALUES(null, 'Watching this trailer in 2118: I could this all day. Even today!!', 27, 3, '2020-05-16 20:31:52');
INSERT INTO comments VALUES(null, 'Happy 2nd Anniversary to this, and to those who are affected by the CoronaVirus, and who are not, be sure to wash your hands and stay home and be safe', 27, 1, '2020-05-16 05:42:52');
INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(28, 'Ticket 28', 'Ticket 28 will hopefully have a description one day... 

Ticket 28 will hopefully have a description one day... Ticket 28 will hopefully have a description one day... 
Ticket 28 will hopefully have a description one day...  ', 3, 3, 2, '2020-05-13 17:29:52', 2, '2020-05-20 16:28:52', 3, '2020-05-19 21:29:52', 2, 4, 3);
INSERT INTO comments VALUES(null, '“I hope they remember you.”






Oh boy, did we ever...', 28, 3, '2020-05-20 17:27:52');
INSERT INTO comments VALUES(null, 'My subtitles said: "Tell me his name again." "Santos." 😂😂', 28, 2, '2020-05-15 02:50:52');
INSERT INTO comments VALUES(null, '1:45
 still gives me goosebumps', 28, 1, '2020-05-20 22:22:52');
INSERT INTO comments VALUES(null, '2:07
 Doctor strange is his real name, not a made name, Cmon peter.', 28, 1, '2020-05-17 15:40:52');
INSERT INTO comments VALUES(null, '1:45
 y’all remember when we thought that this was Cap’s last stand? Lol', 28, 1, '2020-05-19 08:29:52');
INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(29, 'Ticket 29', 'Ticket 29 will hopefully have a description one day... 

Ticket 29 will hopefully have a description one day... Ticket 29 will hopefully have a description one day... 
Ticket 29 will hopefully have a description one day...  ', 3, 3, 3, '2020-05-14 02:07:52', 2, '2020-05-21 08:29:52', 1, null, null, 2, null);
INSERT INTO comments VALUES(null, 'It’s called Creativity the conversation between Tony &amp; Gamoora(Tell me his name again Gamoora Replied Thanos) That never happened in whole movie...', 29, 3, '2020-05-17 23:51:52');
INSERT INTO comments VALUES(null, 'Every Marvel fan back to watch this trailer after Endgame, one year later.', 29, 3, '2020-05-15 16:26:52');
INSERT INTO comments VALUES(null, 'Who’s rewatching old trailers during quarantine?', 29, 2, '2020-05-21 23:13:52');
INSERT INTO comments VALUES(null, 'Easily Marvels best and most hype trailer ever', 29, 3, '2020-05-20 22:04:52');
INSERT INTO comments VALUES(null, 'Remember the hype for this movie? It all seems so far away now.', 29, 3, '2020-05-21 01:22:52');
INSERT INTO comments VALUES(null, 'This tralier still hits different', 29, 1, '2020-05-16 03:37:52');
INSERT INTO comments VALUES(null, 'Loved this movie although i was looking forward to watching the scene with Gamora warning Tony about Thanos. Kinda dissapointed they never even met', 29, 3, '2020-05-20 16:54:52');
INSERT INTO comments VALUES(null, 'The best trailer in the world!!', 29, 3, '2020-05-20 06:22:52');
INSERT INTO comments VALUES(null, '2 years ago, this day Thanos snapped', 29, 1, '2020-05-20 11:36:52');
INSERT INTO comments VALUES(null, 'That trailer music that lead to so many "infinity war style" trailers.', 29, 1, '2020-05-16 07:46:52');
INSERT INTO comments VALUES(null, '2020 Best Trailer ever made Thanos is also the best villain ever made!', 29, 3, '2020-05-17 16:41:52');
INSERT INTO comments VALUES(null, 'Loki: 
brings Thanos’ corpse to the avengers




Everyone: “Holy shit, how’d you do it?!”




Loki: “Simple. I turned myself into an infinity stone. Because I know how much Thanos loves infinity stones. So he went to pick up the infinity stone to admire it, and then I turned back into myself and was like, “BLAAHH it’s me!”, and I stabbed him.”




Thor: “That’s even better than my ‘get help’ plan, brother.”', 29, 3, '2020-05-16 02:45:52');
INSERT INTO comments VALUES(null, 'Avengers 1: Tries To Kill Tony 


Avengers 2: Still Trying To Kill Tony


Avengers 3: Almost Tries To Kill


Avengers 4: Mission Successful', 29, 2, '2020-05-17 04:41:52');
INSERT INTO comments VALUES(null, '"If I tell you what happens, it wont happen"', 29, 1, '2020-05-16 11:26:52');
INSERT INTO comments VALUES(null, 'Whoever edited the trailer from 
1:28
 to 
1:30
 deserves a raise', 29, 3, '2020-05-18 07:41:52');
INSERT INTO comments VALUES(null, 'This is the best ever movie trailer in the world.', 29, 1, '2020-05-21 16:05:52');
INSERT INTO comments VALUES(null, 'who is watching after AVENGERS ENDGAME', 29, 2, '2020-05-21 04:10:52');
INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(30, 'Ticket 30', 'Ticket 30 will hopefully have a description one day... 

Ticket 30 will hopefully have a description one day... Ticket 30 will hopefully have a description one day... 
Ticket 30 will hopefully have a description one day...  ', 1, 3, 2, '2020-05-16 23:36:52', 2, '2020-05-22 01:42:52', 2, null, null, 1, null);
INSERT INTO comments VALUES(null, 'Thanos to DC : I hope they remember you', 30, 2, '2020-05-23 09:43:52');
INSERT INTO comments VALUES(null, 'Just noticed that they edited the other infinity stones out for that scene at 
1:45
 to not spoil the movie in the trailer. In the actual scene Thanos has all the stones except the mind stone.', 30, 1, '2020-05-19 19:33:52');
INSERT INTO comments VALUES(null, 'This trailer is still EPIC', 30, 2, '2020-05-24 06:07:52');
INSERT INTO comments VALUES(null, '1:44
 my dad when he sees me touching the thermostat', 30, 3, '2020-05-24 03:24:52');
INSERT INTO comments VALUES(null, '1:50
 just a loop button for me', 30, 3, '2020-05-20 16:23:52');
INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(31, 'Ticket 31', 'Ticket 31 will hopefully have a description one day... 

Ticket 31 will hopefully have a description one day... Ticket 31 will hopefully have a description one day... 
Ticket 31 will hopefully have a description one day...  ', 2, 2, 3, '2020-05-14 20:21:52', 1, '2020-05-17 17:09:52', 2, null, null, 1, null);
INSERT INTO comments VALUES(null, 'Remember when we thought that the hulk buster was Tony', 31, 3, '2020-05-18 14:13:52');
INSERT INTO comments VALUES(null, '0:26


Tony:Tell me his name again


YouTube caption:Santos', 31, 2, '2020-05-16 05:15:52');
INSERT INTO comments VALUES(null, 'Remember when we waited so long time to see infinity war and now endgame is exit 5 months ago', 31, 3, '2020-05-21 00:07:52');
INSERT INTO comments VALUES(null, 'Back to this trailer after endgame...still gives goosebumps...', 31, 2, '2020-05-20 20:16:52');
INSERT INTO comments VALUES(null, '2020 Best Trailer ever made Thanos is also the best villain ever made!', 31, 2, '2020-05-18 09:18:52');
INSERT INTO comments VALUES(null, '2 years ago, this day Thanos snapped', 31, 2, '2020-05-21 11:25:52');
INSERT INTO comments VALUES(null, '"If I tell you what happens, it wont happen"', 31, 2, '2020-05-21 17:22:52');
INSERT INTO comments VALUES(null, 'Nothing in the MCU will ever come close to the hype and excitement created in the build up to Infinity War and even Endgame. The best that I can think of that could come close is the Secret Invasion or Avengers vs X-Men..', 31, 2, '2020-05-15 23:06:52');
INSERT INTO comments VALUES(null, '2:08
 no, not anymore you`re not :(', 31, 2, '2020-05-22 00:58:52');
INSERT INTO comments VALUES(null, 'Whoever edited the trailer from 
1:28
 to 
1:30
 deserves a raise', 31, 3, '2020-05-17 23:15:52');
INSERT INTO comments VALUES(null, 'Remember when everyone were speculating that Steve Rogers had the soul stone after watching this trailer because his eyes were glowing orange? Good guess tho!', 31, 1, '2020-05-21 18:36:52');
INSERT INTO comments VALUES(null, 'That Scene Cap holding Thanoss hand Was the most prestigious moment when the trailer initially came out two years back.', 31, 3, '2020-05-21 22:58:52');
INSERT INTO comments VALUES(null, 'Who’s here after endgame?', 31, 1, '2020-05-16 09:53:52');
INSERT INTO comments VALUES(null, 'Coronavirus: when Im done half of humanity will still exist.', 31, 2, '2020-05-16 20:54:52');
INSERT INTO comments VALUES(null, '"I am inevitable"


"and I am groot"', 31, 3, '2020-05-17 12:07:52');
INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(32, 'Ticket 32', 'Ticket 32 will hopefully have a description one day... 

Ticket 32 will hopefully have a description one day... Ticket 32 will hopefully have a description one day... 
Ticket 32 will hopefully have a description one day...  ', 2, 3, 3, '2020-05-12 02:47:52', 2, '2020-05-13 05:49:52', 2, '2020-05-13 06:50:52', 1, 4, 3);
INSERT INTO comments VALUES(null, 'I swear Thor’s cape is like the best thing in trailers (for me anyway) the way he walked and what his cape did is so cool and in the AOU trailer when it took up the whole screen 😍', 32, 2, '2020-05-14 13:48:52');
INSERT INTO comments VALUES(null, 'Marvel : Lets talk about plans here......first kill half heros ......again give life to them in endgame


Disney: WOW!!!!!...', 32, 1, '2020-05-18 01:10:52');
INSERT INTO comments VALUES(null, 'I wanna see Stan Lee come in with an eraser and kill Thanos', 32, 1, '2020-05-20 02:09:52');
INSERT INTO comments VALUES(null, 'Whos here after Endgame?', 32, 2, '2020-05-13 12:22:52');
INSERT INTO comments VALUES(null, '“How many times are you going to watch that trailer?”




Me : “I could do this all day”', 32, 1, '2020-05-17 07:32:52');
INSERT INTO comments VALUES(null, '00:28
 goosebumps', 32, 3, '2020-05-19 14:56:52');
INSERT INTO comments VALUES(null, 'This is the best ever movie trailer in the world.', 32, 2, '2020-05-14 21:40:52');
INSERT INTO comments VALUES(null, 'Its already second month of 2020 and idk why Im I still watching it.', 32, 2, '2020-05-18 13:05:52');
INSERT INTO comments VALUES(null, 'ME: STILL AINT RELIVED FROM ENDGAMES EFFECT




YOUTUBE : WANNA CHECK OUT INFINITY WAR TRAILER???', 32, 3, '2020-05-13 13:29:52');
INSERT INTO comments VALUES(null, 'Who here in last 2019 movement', 32, 3, '2020-05-14 05:13:52');
INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(33, 'Ticket 33', 'Ticket 33 will hopefully have a description one day... 

Ticket 33 will hopefully have a description one day... Ticket 33 will hopefully have a description one day... 
Ticket 33 will hopefully have a description one day...  ', 1, 2, 1, '2020-05-16 05:24:52', 1, '2020-05-20 03:59:52', 1, '2020-05-21 18:22:52', 3, 4, 2);
INSERT INTO comments VALUES(null, 'When you see 43k dislikes


Its time to wipe out the disgrace half of mankind', 33, 3, '2020-05-19 05:14:52');
INSERT INTO comments VALUES(null, 'This trailer is still EPIC', 33, 1, '2020-05-24 01:10:52');
INSERT INTO comments VALUES(null, 'love how they put a ton of peter at the end 😂', 33, 2, '2020-05-20 04:13:52');
INSERT INTO comments VALUES(null, '2:07
 Doctor strange is his real name, not a made name, Cmon peter.', 33, 1, '2020-05-22 17:08:52');
INSERT INTO comments VALUES(null, '2019 December (black widow trailer)', 33, 1, '2020-05-19 02:31:52');
INSERT INTO comments VALUES(null, 'Who else think infinity war is insanely a masterpiece❤️', 33, 3, '2020-05-18 16:24:52');
INSERT INTO comments VALUES(null, 'DC: See here, marvel we made a movie with all super heros!


Marvel: Hold my beer.', 33, 3, '2020-05-21 15:21:52');
INSERT INTO comments VALUES(null, 'I feel like this happened yesterday.', 33, 1, '2020-05-19 00:24:52');
INSERT INTO comments VALUES(null, 'Thanos: Stark!


Tony Stark: You know me!!


Thanos: Youre not the only one cursed with knowledge.


Tony Stark: My only curse is you.', 33, 2, '2020-05-18 01:23:52');
INSERT INTO comments VALUES(null, 'Every Marvel fan back to watch this trailer after Endgame, one year later.', 33, 2, '2020-05-23 13:41:52');
INSERT INTO comments VALUES(null, '1:38
 I love how Doctor Stranges scream can be heard echoing through the trailer', 33, 2, '2020-05-22 20:22:52');
INSERT INTO comments VALUES(null, 'Imagine if they had killed iron man in this one.....', 33, 3, '2020-05-23 23:26:52');
INSERT INTO comments VALUES(null, 'Remember when everyone were speculating that Steve Rogers had the soul stone after watching this trailer because his eyes were glowing orange? Good guess tho!', 33, 3, '2020-05-20 23:37:52');
INSERT INTO comments VALUES(null, 'Back to this trailer after endgame...still gives goosebumps...', 33, 1, '2020-05-24 04:23:52');
INSERT INTO comments VALUES(null, '-How many times would you like to watch Infinity War for the first time?


-14,000,605.


-How many can you watch?


-One.', 33, 2, '2020-05-21 13:31:52');
INSERT INTO comments VALUES(null, 'Still watching after endgame', 33, 3, '2020-05-21 06:08:52');
INSERT INTO comments VALUES(null, 'This trailer is so good that when I stop watching it for a while and come back to watch it again all the hype comes back from when it first got released', 33, 3, '2020-05-21 16:07:52');
INSERT INTO comments VALUES(null, 'I wanna go back in time and show this to a Marvel fan in the 90s. I feel like their first question would be "wheres Wolverine?"', 33, 3, '2020-05-20 13:51:52');
INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(34, 'Ticket 34', 'Ticket 34 will hopefully have a description one day... 

Ticket 34 will hopefully have a description one day... Ticket 34 will hopefully have a description one day... 
Ticket 34 will hopefully have a description one day...  ', 1, 3, 3, '2020-05-17 08:27:52', 1, '2020-05-23 01:01:52', 2, null, null, 2, null);
INSERT INTO comments VALUES(null, 'Iron Man : Tell me his name again             


Gamora : Covid-19! 




(BGM rolls)', 34, 2, '2020-05-19 17:29:52');
INSERT INTO comments VALUES(null, 'This movie unknowingly predicted the pandemic.', 34, 2, '2020-05-24 16:51:52');
INSERT INTO comments VALUES(null, '" 
when
 
im
 
done
  
half
 
of
 
humanity
 
will
 
still
 *exist*". Thanos had to spoil the movie.', 34, 3, '2020-05-21 00:26:52');
INSERT INTO comments VALUES(null, 'lets be honest, you came here because you miss the hype too', 34, 3, '2020-05-19 01:52:52');
INSERT INTO comments VALUES(null, 'Easily one of the best trailers of all time', 34, 1, '2020-05-18 13:50:52');
INSERT INTO comments VALUES(null, '1:45
 y’all remember when we thought that this was Cap’s last stand? Lol', 34, 1, '2020-05-19 10:21:52');
INSERT INTO comments VALUES(null, 'Nothing will ever come close to the hype I got from watching the trailers for Infinity War and Endgame. Ahh those were the days', 34, 1, '2020-05-22 03:14:52');
INSERT INTO comments VALUES(null, '2 year anniversary how fast time goes', 34, 2, '2020-05-19 00:20:52');
INSERT INTO comments VALUES(null, '*You cannot live with the ending of the movie........where did that bring you*








Back to the trailers.


Ctto.', 34, 1, '2020-05-22 06:45:52');
INSERT INTO comments VALUES(null, 'For me, Infinity War is better than Endgame.', 34, 1, '2020-05-24 17:48:52');
INSERT INTO comments VALUES(null, 'This movie promised, this movie delivered', 34, 2, '2020-05-21 17:43:52');
INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(35, 'Ticket 35', 'Ticket 35 will hopefully have a description one day... 

Ticket 35 will hopefully have a description one day... Ticket 35 will hopefully have a description one day... 
Ticket 35 will hopefully have a description one day...  ', 1, 2, 1, '2020-05-15 03:22:52', 1, '2020-05-16 23:11:52', 2, null, null, 1, null);
INSERT INTO comments VALUES(null, 'Best most popular trailer forever 🖤


Who still watching in December 2019?', 35, 1, '2020-05-16 19:30:52');
INSERT INTO comments VALUES(null, '1:50
 just a loop button for me', 35, 3, '2020-05-17 21:46:52');
INSERT INTO comments VALUES(null, 'One of the greatest trailers ever made!', 35, 3, '2020-05-19 04:47:52');
INSERT INTO comments VALUES(null, 'Whos here after Endgame?', 35, 1, '2020-05-21 15:59:52');
INSERT INTO comments VALUES(null, 'Back to this trailer after endgame...still gives goosebumps...', 35, 3, '2020-05-18 21:15:52');
INSERT INTO comments VALUES(null, 'Infinity War is still my top MCU movie even after Endgame', 35, 2, '2020-05-19 17:18:52');
INSERT INTO comments VALUES(null, 'In 2018..


Iron Man: "Im sorry Earth is closed today"


Ancient One: "Youre about two years too early"', 35, 1, '2020-05-18 20:01:52');
INSERT INTO comments VALUES(null, '1:13
 Hold on, this wasnt in the movie.', 35, 3, '2020-05-18 14:29:52');
INSERT INTO comments VALUES(null, '“I AM GROOT”


“I am Steve Rogers”', 35, 1, '2020-05-16 21:42:52');
INSERT INTO comments VALUES(null, 'In 2018..


Iron Man: "Im sorry Earth is closed today"


Ancient One: "Youre about two years too early"', 35, 3, '2020-05-22 18:32:52');
INSERT INTO comments VALUES(null, 'Who else think infinity war is insanely a masterpiece❤️', 35, 1, '2020-05-17 09:23:52');
INSERT INTO comments VALUES(null, 'Trailer is amazing watching in 2020 march .. ❤️❤️❤️❤️', 35, 2, '2020-05-21 14:34:52');
INSERT INTO comments VALUES(null, 'Evacuate the internet..


Disengage all notifications..


And give the spoilers a thumbs down..', 35, 1, '2020-05-17 10:48:52');
INSERT INTO comments VALUES(null, '“we got one advantage he’s coming to us, we have what thanos wants so that’s what we’ll use” see how they showed the time stone when tony says that?', 35, 3, '2020-05-18 14:26:52');
INSERT INTO comments VALUES(null, 'Thanos to DC : I hope they remember you', 35, 3, '2020-05-21 21:13:52');
INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(36, 'Ticket 36', 'Ticket 36 will hopefully have a description one day... 

Ticket 36 will hopefully have a description one day... Ticket 36 will hopefully have a description one day... 
Ticket 36 will hopefully have a description one day...  ', 2, 1, 3, '2020-05-12 09:24:52', 2, '2020-05-13 10:57:52', 1, null, null, 1, null);
INSERT INTO comments VALUES(null, 'Remember when people thought Cap was the soul stone because of his eyes....', 36, 2, '2020-05-14 11:23:52');
INSERT INTO comments VALUES(null, 'Its already second month of 2020 and idk why Im I still watching it.', 36, 2, '2020-05-17 02:14:52');
INSERT INTO comments VALUES(null, '0:45
 "so thats what we use" why did tony sound a bit Scottish when he said use? or is it just me?', 36, 1, '2020-05-17 12:08:52');
INSERT INTO comments VALUES(null, 'Why YouTube recommended me this now ? 😥', 36, 2, '2020-05-19 19:27:52');
INSERT INTO comments VALUES(null, '-How many times would you like to watch Infinity War for the first time?


-14,000,605.


-How many can you watch?


-One.', 36, 3, '2020-05-19 23:44:52');
INSERT INTO comments VALUES(null, 'A wise king never seek out war




Bring me thanos 




Lets kill him properly this time', 36, 2, '2020-05-18 14:46:52');
INSERT INTO comments VALUES(null, '0:45
 "so thats what we use" why did tony sound a bit Scottish when he said use? or is it just me?', 36, 2, '2020-05-18 10:50:52');
INSERT INTO comments VALUES(null, 'The entire time I knew him, he only ever had one goal. To wipe out half of the country’s finances.


If he gets all the electoral college votes, he could do it with the sign of an executive orders. “sound effect of paper being signed”


Just like that. 




Tell me his name again. 




Donald Trump.', 36, 2, '2020-05-13 13:25:52');
INSERT INTO comments VALUES(null, 'Ha! i remember seeing cap holding The infinity gauglet and almost passing out, now you imagine how i felt in andgame with cap lifting mjonir😂 If i could choose a super power, it would be the power to watch endgame and infity war again for the first time!', 36, 1, '2020-05-19 16:04:52');
INSERT INTO comments VALUES(null, 'I still love thors entrance in this movie and it still gives me goosebumbs', 36, 3, '2020-05-20 02:26:52');
INSERT INTO comments VALUES(null, 'After 8 months of Endgame, My feeling is just "I keep telling everybody they should move on. Some do but not us." #3000', 36, 3, '2020-05-16 15:59:52');
INSERT INTO comments VALUES(null, 'When you have an injection 
1:37', 36, 1, '2020-05-17 22:20:52');
INSERT INTO comments VALUES(null, 'DC: See here, marvel we made a movie with all super heros!


Marvel: Hold my beer.', 36, 1, '2020-05-19 08:09:52');
INSERT INTO comments VALUES(null, 'Thanos to DC : I hope they remember you', 36, 1, '2020-05-15 04:37:52');
INSERT INTO comments VALUES(null, '2 year anniversary how fast time goes', 36, 3, '2020-05-18 10:34:52');
INSERT INTO comments VALUES(null, '“I hope they remember you” Don’t worry mr.Stark I will never forget U', 36, 1, '2020-05-17 03:18:52');
INSERT INTO comments VALUES(null, '"I hope they remember you" RIP Tony ❤3000', 36, 3, '2020-05-20 07:57:52');
INSERT INTO comments VALUES(null, 'Avatar: im 2nd highest grossing film btw 




Endgame: biggest movie of all-time.




Infinity War: oh, youre using your made up names? Then I am BIGGEST trailer of ALL-TIME.', 36, 2, '2020-05-18 11:06:52');
INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(37, 'Ticket 37', 'Ticket 37 will hopefully have a description one day... 

Ticket 37 will hopefully have a description one day... Ticket 37 will hopefully have a description one day... 
Ticket 37 will hopefully have a description one day...  ', 3, 3, 2, '2020-05-16 03:14:52', 3, '2020-05-23 11:40:52', 1, null, null, 1, null);
INSERT INTO comments VALUES(null, 'One thing worse than a breakup














Waiting for Avengers 4', 37, 1, '2020-05-20 04:30:52');
INSERT INTO comments VALUES(null, 'Best most popular trailer forever 🖤


Who still watching in December 2019?', 37, 2, '2020-05-21 18:47:52');
INSERT INTO comments VALUES(null, 'Remember when everyone were speculating that Steve Rogers had the soul stone after watching this trailer because his eyes were glowing orange? Good guess tho!', 37, 2, '2020-05-19 07:45:52');
INSERT INTO comments VALUES(null, 'Here after endgame. Still believing that this is the greatest trailer ever made in cinematic history', 37, 1, '2020-05-17 17:45:52');
INSERT INTO comments VALUES(null, 'Watching this trailer in 2118: I could this all day. Even today!!', 37, 1, '2020-05-20 01:57:52');
INSERT INTO comments VALUES(null, 'This movie unknowingly predicted the pandemic.', 37, 3, '2020-05-23 00:32:52');
INSERT INTO comments VALUES(null, 'You cant live with your own failure






Where did it bring you back to the trailers', 37, 1, '2020-05-22 16:03:52');
INSERT INTO comments VALUES(null, 'PLEASE IMAGINE CORONA VIRUS SAYING THANOS LINES 😂', 37, 2, '2020-05-21 20:33:52');
INSERT INTO comments VALUES(null, 'I miss Infinity war!😢', 37, 2, '2020-05-23 18:30:52');
INSERT INTO comments VALUES(null, 'This tralier still hits different', 37, 1, '2020-05-18 09:43:52');
INSERT INTO comments VALUES(null, 'Thanos: Fails


Covid 19: I will show you how its done when I wipe out half of humanity.', 37, 2, '2020-05-19 05:06:52');
INSERT INTO comments VALUES(null, 'Pessimist: half empty 


Optimist: half full


Thanos: perfectly balanced as all things should', 37, 3, '2020-05-21 23:56:52');
INSERT INTO comments VALUES(null, 'When you have an injection 
1:37', 37, 1, '2020-05-22 01:06:52');
INSERT INTO comments VALUES(null, 'You cannot live with the ending of the movie......where did that bring you




Back to the trailers.', 37, 1, '2020-05-22 12:54:52');
INSERT INTO comments VALUES(null, 'This movie promised, this movie delivered', 37, 3, '2020-05-18 02:45:52');
INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(38, 'Ticket 38', 'Ticket 38 will hopefully have a description one day... 

Ticket 38 will hopefully have a description one day... Ticket 38 will hopefully have a description one day... 
Ticket 38 will hopefully have a description one day...  ', 3, 3, 3, '2020-05-12 12:23:52', 2, '2020-05-18 12:53:52', 3, null, null, 3, null);
INSERT INTO comments VALUES(null, 'So its December 2019 and you just rewatched the first IW trailer bc Black widow is giving you a trip down memory lane. And now youre here bc you just couldnt help yourself. 


Well...see you in the endgame trailer comments bc we both know youll skip over CM.', 38, 3, '2020-05-15 10:12:52');
INSERT INTO comments VALUES(null, 'YouTube: 
pops this on my recommended page


Me: Youre about... 2 years late!', 38, 2, '2020-05-16 14:24:52');
INSERT INTO comments VALUES(null, 'When people believed that cap had the soul stone when holding back thanos', 38, 3, '2020-05-18 06:46:52');
INSERT INTO comments VALUES(null, 'Who else got recommended?', 38, 2, '2020-05-15 20:18:52');
INSERT INTO comments VALUES(null, 'PLEASE IMAGINE CORONA VIRUS SAYING THANOS LINES 😂', 38, 3, '2020-05-18 14:21:52');
INSERT INTO comments VALUES(null, 'Iron Man - "Tell me his name again?"








Gamora....."THANOS!"', 38, 1, '2020-05-14 04:43:52');
INSERT INTO comments VALUES(null, 'Remember when the soul stone was with Heimdall , but he ended up dying in less than  10 mins after the start .', 38, 1, '2020-05-16 13:04:52');
INSERT INTO comments VALUES(null, '- Tell me his name again  


- Covid-19', 38, 1, '2020-05-14 15:43:52');
INSERT INTO comments VALUES(null, '"Who is here after watching Endgame?"




Me: me




"How many times you watch this trailer?"




Me: i can do this all day', 38, 3, '2020-05-13 19:13:52');
INSERT INTO comments VALUES(null, 'Marvel : Lets talk about plans here......first kill half heros ......again give life to them in endgame


Disney: WOW!!!!!...', 38, 2, '2020-05-19 20:56:52');
INSERT INTO comments VALUES(null, 'In all Thanos scenes in the trailers, they showed him with only two stones even though he got more than 4 stones before fighting on Titan and Wakanda.', 38, 2, '2020-05-18 07:44:52');
INSERT INTO comments VALUES(null, 'PLEASE IMAGINE CORONA VIRUS SAYING THANOS LINES 😂', 38, 3, '2020-05-19 06:18:52');
INSERT INTO comments VALUES(null, '*You cannot live with the ending of the movie........where did that bring you*








Back to the trailers.


Ctto.', 38, 3, '2020-05-13 19:12:52');
INSERT INTO comments VALUES(null, 'Remember when people thought Cap was the soul stone because of his eyes....', 38, 3, '2020-05-17 20:10:52');
INSERT INTO comments VALUES(null, 'Infinity War is still my top MCU movie even after Endgame', 38, 3, '2020-05-20 09:07:52');
INSERT INTO comments VALUES(null, 'Marvel and DC talking about building a cinematic universe:




Marvel: Let’s talk about this plan of yours. I think it’s really good, but it sucks. So let me do the plan, and that way it’ll be really good.


DC: Wow', 38, 3, '2020-05-14 02:22:52');
INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(39, 'Ticket 39', 'Ticket 39 will hopefully have a description one day... 

Ticket 39 will hopefully have a description one day... Ticket 39 will hopefully have a description one day... 
Ticket 39 will hopefully have a description one day...  ', 3, 2, 2, '2020-05-14 13:31:52', 3, '2020-05-22 01:41:52', 3, '2020-05-19 05:05:52', 1, 4, 1);
INSERT INTO comments VALUES(null, 'Rest &amp; Peace Stan Lee😣', 39, 1, '2020-05-21 02:15:52');
INSERT INTO comments VALUES(null, 'Remember the hype for this movie? It all seems so far away now.', 39, 1, '2020-05-17 13:55:52');
INSERT INTO comments VALUES(null, 'Nothing in the MCU will ever come close to the hype and excitement created in the build up to Infinity War and even Endgame. The best that I can think of that could come close is the Secret Invasion or Avengers vs X-Men..', 39, 2, '2020-05-18 01:12:52');
INSERT INTO comments VALUES(null, 'I remember this trailer dropping while i was in lunch,instead of eating i rewatched this', 39, 1, '2020-05-17 13:04:52');
INSERT INTO comments VALUES(null, '1:17
 was I the only one who thought Thanos is holding a flower bouquet?', 39, 3, '2020-05-20 21:05:52');
INSERT INTO comments VALUES(null, '“I hope they remember you.”






Oh boy, did we ever...', 39, 2, '2020-05-18 03:47:52');
INSERT INTO comments VALUES(null, '"I am inevitable"


"and I am groot"', 39, 2, '2020-05-21 00:45:52');
INSERT INTO comments VALUES(null, 'Back to this trailer after endgame...still gives goosebumps...', 39, 3, '2020-05-17 06:55:52');
INSERT INTO comments VALUES(null, 'That Scene Cap holding Thanoss hand Was the most prestigious moment when the trailer initially came out two years back.', 39, 3, '2020-05-16 10:45:52');
INSERT INTO comments VALUES(null, 'Trailer doesnt have 200M views yet


"Fine...Ill do it myself."', 39, 2, '2020-05-17 03:46:52');
INSERT INTO comments VALUES(null, 'PLEASE IMAGINE CORONA VIRUS SAYING THANOS LINES 😂', 39, 2, '2020-05-19 04:33:52');
INSERT INTO comments VALUES(null, 'You cannot live with the ending of the movie......where did that bring you




Back to the trailers.', 39, 1, '2020-05-20 04:30:52');
INSERT INTO comments VALUES(null, 'LOL!! Dr. Strange is being tortured again?! The dude can’t catch a break.






I guess it’s time to bargain', 39, 3, '2020-05-16 13:39:52');
INSERT INTO comments VALUES(null, 'Thanos: Stark!


Tony Stark: You know me!!


Thanos: Youre not the only one cursed with knowledge.


Tony Stark: My only curse is you.', 39, 1, '2020-05-16 11:54:52');
INSERT INTO comments VALUES(null, '2 year anniversary how fast time goes', 39, 3, '2020-05-16 12:06:52');
INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(40, 'Ticket 40', 'Ticket 40 will hopefully have a description one day... 

Ticket 40 will hopefully have a description one day... Ticket 40 will hopefully have a description one day... 
Ticket 40 will hopefully have a description one day...  ', 1, 3, 2, '2020-05-12 14:23:52', 3, '2020-05-14 10:41:52', 1, null, null, 3, null);
INSERT INTO comments VALUES(null, 'The version of the ‘made-up names’ scene we got in this trailer is way way way better than the one in the film', 40, 1, '2020-05-18 09:01:52');
INSERT INTO comments VALUES(null, 'TChalla: And get this man a shield.


Gets him hockey pads.', 40, 3, '2020-05-17 15:00:52');
INSERT INTO comments VALUES(null, 'Just hearing the Guardians talking to the other Avengers is enough to make me moister than an oyster', 40, 1, '2020-05-15 14:03:52');
INSERT INTO comments VALUES(null, '#1 Trending in Wakanda', 40, 3, '2020-05-15 08:50:52');
INSERT INTO comments VALUES(null, 'I am here on year 2099 and we still watch this trailer', 40, 2, '2020-05-20 08:26:52');
INSERT INTO comments VALUES(null, 'The media to Disney: "how much money did you profit off of Avengers:Infinity War and Endgame?"




Disney:..."Yes"....', 40, 2, '2020-05-19 05:58:52');
INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(41, 'Ticket 41', 'Ticket 41 will hopefully have a description one day... 

Ticket 41 will hopefully have a description one day... Ticket 41 will hopefully have a description one day... 
Ticket 41 will hopefully have a description one day...  ', 3, 3, 3, '2020-05-15 00:05:52', 2, '2020-05-17 06:39:52', 2, '2020-05-22 10:34:52', 3, 4, 1);
INSERT INTO comments VALUES(null, 'In 2018..


Iron Man: "Im sorry Earth is closed today"


Ancient One: "Youre about two years too early"', 41, 1, '2020-05-16 19:06:52');
INSERT INTO comments VALUES(null, '1:28
 onwards


Oh man, its been 2 years and Im still getting getting the goosebumps....', 41, 3, '2020-05-17 11:39:52');
INSERT INTO comments VALUES(null, 'Im here to remind you that Infinity War is almost 2 years old.', 41, 3, '2020-05-19 02:59:52');
INSERT INTO comments VALUES(null, 'bro the fact that this trailer is almost at a 100 million views', 41, 1, '2020-05-19 04:35:52');
INSERT INTO comments VALUES(null, 'I remember I literally screamed when Cap stopped Thanoss hand', 41, 2, '2020-05-17 23:34:52');
INSERT INTO comments VALUES(null, 'Two Years Ago today, it was very intense to watch. It still is amazing just watching it.', 41, 3, '2020-05-18 17:13:52');
INSERT INTO comments VALUES(null, 'Star Lord- Where Is Gamora?


Iron-Man- I’ll Do You One Better, Who Is Gamora?


Drax- I’ll Do You One Better, WHY IS GAMORA? 😂', 41, 3, '2020-05-20 10:18:52');
INSERT INTO comments VALUES(null, 'Who’s here after avengers 4 trailer ‼️‼️‼️🔥🔥🔥🔥🔥🎉', 41, 3, '2020-05-22 00:52:52');
INSERT INTO comments VALUES(null, 'This trailer is still EPIC', 41, 3, '2020-05-21 11:48:52');
INSERT INTO comments VALUES(null, 'Just noticed that they edited the other infinity stones out for that scene at 
1:45
 to not spoil the movie in the trailer. In the actual scene Thanos has all the stones except the mind stone.', 41, 1, '2020-05-16 18:20:52');
INSERT INTO comments VALUES(null, 'who is here watching in September 2019 ?', 41, 3, '2020-05-16 14:59:52');
INSERT INTO comments VALUES(null, 'Trailer doesnt have 200M views yet


"Fine...Ill do it myself."', 41, 2, '2020-05-17 23:29:52');
INSERT INTO comments VALUES(null, '1:48


Yep, thats me during college', 41, 3, '2020-05-18 01:14:52');
INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(42, 'Ticket 42', 'Ticket 42 will hopefully have a description one day... 

Ticket 42 will hopefully have a description one day... Ticket 42 will hopefully have a description one day... 
Ticket 42 will hopefully have a description one day...  ', 2, 2, 2, '2020-05-18 17:07:52', 1, '2020-05-21 19:32:52', 1, null, null, 3, null);
INSERT INTO comments VALUES(null, 'Its already second month of 2020 and idk why Im I still watching it.', 42, 3, '2020-05-20 13:42:52');
INSERT INTO comments VALUES(null, '1:38
 I love how Doctor Stranges scream can be heard echoing through the trailer', 42, 1, '2020-05-20 14:37:52');
INSERT INTO comments VALUES(null, 'This movie looks great. I can’t wait for it to come out.', 42, 3, '2020-05-22 18:46:52');
INSERT INTO comments VALUES(null, 'In 2018..


Iron Man: "Im sorry Earth is closed today"


Ancient One: "Youre about two years too early"', 42, 3, '2020-05-21 23:45:52');
INSERT INTO comments VALUES(null, 'Thanos: fails


Coronavirus: 
Fine, I’ll d9 it myself', 42, 3, '2020-05-21 06:13:52');
INSERT INTO comments VALUES(null, 'Thanos: fails


Coronavirus: 
Fine, I’ll d9 it myself', 42, 2, '2020-05-22 23:42:52');
INSERT INTO comments VALUES(null, 'Remember when people thought Cap was the soul stone because of his eyes....', 42, 2, '2020-05-23 05:02:52');
INSERT INTO comments VALUES(null, 'It’s December 2019 and this trailer still gives me so many chills', 42, 1, '2020-05-23 13:26:52');
INSERT INTO comments VALUES(null, 'Thanos: Fails


Covid 19: I will show you how its done when I wipe out half of humanity.', 42, 3, '2020-05-22 09:35:52');
INSERT INTO comments VALUES(null, 'Remember when everyone were speculating that Steve Rogers had the soul stone after watching this trailer because his eyes were glowing orange? Good guess tho!', 42, 2, '2020-05-24 10:11:52');
INSERT INTO comments VALUES(null, '"I hope theyll remember you"




This is what MCU says to DCEU', 42, 1, '2020-05-20 17:27:52');
INSERT INTO comments VALUES(null, 'Watching this trailer in 2118: I could this all day. Even today!!', 42, 3, '2020-05-24 01:56:52');
INSERT INTO comments VALUES(null, 'It’s called Creativity the conversation between Tony &amp; Gamoora(Tell me his name again Gamoora Replied Thanos) That never happened in whole movie...', 42, 2, '2020-05-23 05:38:52');
INSERT INTO comments VALUES(null, '0:26


Tony:Tell me his name again


YouTube caption:Santos', 42, 1, '2020-05-24 02:44:52');
INSERT INTO comments VALUES(null, 'Its 2020 but still watching this trailer..I wish that we will see them again one more time🙂', 42, 1, '2020-05-26 14:28:52');
INSERT INTO comments VALUES(null, 'this trailer would have a billion views in a few years . We all lost a part of ourselves in it .', 42, 2, '2020-05-25 09:06:52');
INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(43, 'Ticket 43', 'Ticket 43 will hopefully have a description one day... 

Ticket 43 will hopefully have a description one day... Ticket 43 will hopefully have a description one day... 
Ticket 43 will hopefully have a description one day...  ', 1, 2, 3, '2020-05-16 21:45:52', 1, '2020-05-24 15:13:52', 3, null, null, 3, null);
INSERT INTO comments VALUES(null, 'Trailer is amazing watching in 2020 march .. ❤️❤️❤️❤️', 43, 1, '2020-05-24 07:46:52');
INSERT INTO comments VALUES(null, 'Trailer 


    Tony : tell me his name again


    Gamora : Thanos


Movie 






WhO iS GAmoRa?!', 43, 3, '2020-05-22 06:23:52');
INSERT INTO comments VALUES(null, 'INFINITY WAR:- SPIDER MAN DIES IN TONYS ARMS


ENDGAME :- TONY DIED IN FRONT OF SPIDERMAN


I HATE THIS PARALLELS', 43, 3, '2020-05-22 23:24:52');
INSERT INTO comments VALUES(null, 'Just noticed that they edited the other infinity stones out for that scene at 
1:45
 to not spoil the movie in the trailer. In the actual scene Thanos has all the stones except the mind stone.', 43, 2, '2020-05-24 16:28:52');
INSERT INTO comments VALUES(null, 'An south Indian Tamil film created a record by beatings avengers infinity war trailer. 














Bigilleeeeeeyyyyyy', 43, 1, '2020-05-23 23:28:52');
INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(44, 'Ticket 44', 'Ticket 44 will hopefully have a description one day... 

Ticket 44 will hopefully have a description one day... Ticket 44 will hopefully have a description one day... 
Ticket 44 will hopefully have a description one day...  ', 3, 1, 2, '2020-05-12 22:49:52', 1, '2020-05-16 23:10:52', 2, '2020-05-16 15:34:52', 1, 4, 3);
INSERT INTO comments VALUES(null, 'Who’s here after avengers 4 trailer ‼️‼️‼️🔥🔥🔥🔥🔥🎉', 44, 3, '2020-05-18 13:41:52');
INSERT INTO comments VALUES(null, 'Whos here after watching Avengers: Endgame ?', 44, 1, '2020-05-15 20:38:52');
INSERT INTO comments VALUES(null, 'Thanos: Stark!


Tony Stark: You know me!!


Thanos: Youre not the only one cursed with knowledge.


Tony Stark: My only curse is you.', 44, 1, '2020-05-14 13:09:52');
INSERT INTO comments VALUES(null, 'Y’all remember all the theories', 44, 2, '2020-05-15 05:44:52');
INSERT INTO comments VALUES(null, 'The captions say "we have what Dennis once" "and um, half of humanity will still exist"', 44, 1, '2020-05-18 14:10:52');
INSERT INTO comments VALUES(null, 'Gamora: "The entire time I knew him he only ever had one goal. To be number one on trending. If he is released at the end of November, he will do it in a matter of seconds". 




Iron Man: "Tell me his name again"




Gamora: 
Avengers 4 trailer', 44, 2, '2020-05-19 13:31:52');
INSERT INTO comments VALUES(null, 'This movie looks great. I can’t wait for it to come out.', 44, 2, '2020-05-14 15:28:52');
INSERT INTO comments VALUES(null, 'I swear Thor’s cape is like the best thing in trailers (for me anyway) the way he walked and what his cape did is so cool and in the AOU trailer when it took up the whole screen 😍', 44, 3, '2020-05-14 03:22:52');
INSERT INTO comments VALUES(null, 'I love how the editors of this trailer were able to weave the Avengers theme into Audiomachines "Redshift".', 44, 3, '2020-05-20 03:43:52');
INSERT INTO comments VALUES(null, 'You cannot live with the ending of the movie......where did that bring you




Back to the trailers.', 44, 2, '2020-05-16 10:29:52');
INSERT INTO comments VALUES(null, 'It’s 2020 and this trailer is still giving me goosebumps', 44, 1, '2020-05-14 00:34:52');
INSERT INTO comments VALUES(null, 'So its December 2019 and you just rewatched the first IW trailer bc Black widow is giving you a trip down memory lane. And now youre here bc you just couldnt help yourself. 


Well...see you in the endgame trailer comments bc we both know youll skip over CM.', 44, 2, '2020-05-20 06:08:52');
INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(45, 'Ticket 45', 'Ticket 45 will hopefully have a description one day... 

Ticket 45 will hopefully have a description one day... Ticket 45 will hopefully have a description one day... 
Ticket 45 will hopefully have a description one day...  ', 3, 2, 2, '2020-05-16 12:04:52', 3, '2020-05-21 08:35:52', 3, null, null, 1, null);
INSERT INTO comments VALUES(null, 'Iron man: We got one advantage: hes coming to us.


Shows Iron man flying after a spaceship thats 
LEAVING
 earth', 45, 3, '2020-05-19 21:13:52');
INSERT INTO comments VALUES(null, 'Iron Man Is still not dead tO Know why like  my comment', 45, 2, '2020-05-19 05:48:52');
INSERT INTO comments VALUES(null, '2:10
 


Peter:"Karen,hide my spider legs for the trailer but show them in the movie."








Karen:"Do you want me to activate Instant Kill?"', 45, 1, '2020-05-22 23:17:52');
INSERT INTO comments VALUES(null, 'Iron Man : Tell me his name again             


Gamora : Covid-19! 




(BGM rolls)', 45, 1, '2020-05-18 15:48:52');
INSERT INTO comments VALUES(null, '“I AM GROOT”


“I am Steve Rogers”', 45, 2, '2020-05-19 11:17:52');
INSERT INTO comments VALUES(null, '"I am inevitable"


"and I am groot"', 45, 3, '2020-05-18 11:41:52');
INSERT INTO comments VALUES(null, 'We have one advantage, thanos is coming to us. *flies towards Thanos’ ship', 45, 1, '2020-05-23 11:06:52');
INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(46, 'Ticket 46', 'Ticket 46 will hopefully have a description one day... 

Ticket 46 will hopefully have a description one day... Ticket 46 will hopefully have a description one day... 
Ticket 46 will hopefully have a description one day...  ', 3, 2, 2, '2020-05-17 06:36:52', 2, '2020-05-22 11:21:52', 3, null, null, 3, null);
INSERT INTO comments VALUES(null, 'Whos here after the tragic spiderman news', 46, 3, '2020-05-24 17:19:52');
INSERT INTO comments VALUES(null, 'Coronavirus: when Im done half of humanity will still exist.', 46, 2, '2020-05-19 02:42:52');
INSERT INTO comments VALUES(null, 'Thanos: “Fine I’ll do it myself” Mysterio: “Fine I’ll kill the kids myself”', 46, 2, '2020-05-19 23:16:52');
INSERT INTO comments VALUES(null, 'You cannot live with the ending of the movie......where did that bring you




Back to the trailers.', 46, 3, '2020-05-21 12:08:52');
INSERT INTO comments VALUES(null, 'Thanos: Fails


Covid 19: I will show you how its done when I wipe out half of humanity.', 46, 3, '2020-05-22 14:56:52');
INSERT INTO comments VALUES(null, 'This movie promised, this movie delivered', 46, 2, '2020-05-24 02:18:52');
INSERT INTO comments VALUES(null, 'The captions say "we have what Dennis once" "and um, half of humanity will still exist"', 46, 2, '2020-05-20 10:31:52');
INSERT INTO comments VALUES(null, 'Nothing in the MCU will ever come close to the hype and excitement created in the build up to Infinity War and even Endgame. The best that I can think of that could come close is the Secret Invasion or Avengers vs X-Men..', 46, 2, '2020-05-21 21:46:52');
INSERT INTO comments VALUES(null, 'I Wish I could time travel back to the hype of this!', 46, 1, '2020-05-20 16:22:52');
INSERT INTO comments VALUES(null, 'Thanos: When I m done half of humanity will still exist


Coronavirus: My turn', 46, 2, '2020-05-21 06:27:52');
INSERT INTO comments VALUES(null, '2 years ago, this day Thanos snapped', 46, 3, '2020-05-23 07:42:52');
INSERT INTO comments VALUES(null, 'Its amazing how this trailer created a conversation between tony and gamora that never happened', 46, 3, '2020-05-24 02:21:52');
INSERT INTO comments VALUES(null, '" 
when
 
im
 
done
  
half
 
of
 
humanity
 
will
 
still
 *exist*". Thanos had to spoil the movie.', 46, 1, '2020-05-20 22:22:52');
INSERT INTO comments VALUES(null, 'Thanos: When I m done half of humanity will still exist


Coronavirus: My turn', 46, 1, '2020-05-21 23:10:52');
INSERT INTO comments VALUES(null, 'It’s called Creativity the conversation between Tony &amp; Gamoora(Tell me his name again Gamoora Replied Thanos) That never happened in whole movie...', 46, 1, '2020-05-19 23:57:52');
INSERT INTO comments VALUES(null, '(Avengers) Loki: I have an army.


Tony: We have a hulk.




(Infinity War) Loki: We have a hulk. 😆😭', 46, 2, '2020-05-24 11:49:52');
INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(47, 'Ticket 47', 'Ticket 47 will hopefully have a description one day... 

Ticket 47 will hopefully have a description one day... Ticket 47 will hopefully have a description one day... 
Ticket 47 will hopefully have a description one day...  ', 1, 2, 3, '2020-05-14 08:02:52', 2, '2020-05-20 18:35:52', 2, null, null, 1, null);
INSERT INTO comments VALUES(null, '1:48


Yep, thats me during college', 47, 3, '2020-05-21 22:19:52');
INSERT INTO comments VALUES(null, 'The best trailer in the world!!', 47, 1, '2020-05-18 05:35:52');
INSERT INTO comments VALUES(null, 'Remember when we thought that the hulk buster was Tony', 47, 3, '2020-05-17 05:39:52');
INSERT INTO comments VALUES(null, 'Remember when we waited so long time to see infinity war and now endgame is exit 5 months ago', 47, 3, '2020-05-16 11:32:52');
INSERT INTO comments VALUES(null, 'A wise king never seek out war




Bring me thanos 




Lets kill him properly this time', 47, 3, '2020-05-17 05:54:52');
INSERT INTO comments VALUES(null, 'In 2018..


Iron Man: "Im sorry Earth is closed today"


Ancient One: "Youre about two years too early"', 47, 1, '2020-05-17 12:45:52');
INSERT INTO comments VALUES(null, 'They do remember him, they will always remember him 😭😭', 47, 2, '2020-05-15 19:10:52');
INSERT INTO comments VALUES(null, 'Who’s here after endgame?', 47, 3, '2020-05-18 21:49:52');
INSERT INTO comments VALUES(null, '1:10
 Did anyone see thor without his head?', 47, 1, '2020-05-21 07:02:52');
INSERT INTO comments VALUES(null, '2:08
 no, not anymore you`re not :(', 47, 2, '2020-05-19 07:00:52');
INSERT INTO comments VALUES(null, '2:07
 Doctor strange is his real name, not a made name, Cmon peter.', 47, 2, '2020-05-15 21:46:52');
INSERT INTO comments VALUES(null, 'You could not live with your own failure, where did that bring you? Back to me.', 47, 2, '2020-05-21 16:54:52');
INSERT INTO comments VALUES(null, 'Nothing in the MCU will ever come close to the hype and excitement created in the build up to Infinity War and even Endgame. The best that I can think of that could come close is the Secret Invasion or Avengers vs X-Men..', 47, 2, '2020-05-19 20:08:52');
INSERT INTO comments VALUES(null, '1:17
 was I the only one who thought Thanos is holding a flower bouquet?', 47, 1, '2020-05-21 03:00:52');
INSERT INTO comments VALUES(null, '(Avengers) Loki: I have an army.


Tony: We have a hulk.




(Infinity War) Loki: We have a hulk. 😆😭', 47, 2, '2020-05-15 23:12:52');
INSERT INTO comments VALUES(null, 'Pessimist: half empty 


Optimist: half full


Thanos: perfectly balanced as all things should', 47, 3, '2020-05-21 02:12:52');
INSERT INTO comments VALUES(null, 'Nothing will ever come close to the hype I got from watching the trailers for Infinity War and Endgame. Ahh those were the days', 47, 3, '2020-05-16 11:22:52');
INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(48, 'Ticket 48', 'Ticket 48 will hopefully have a description one day... 

Ticket 48 will hopefully have a description one day... Ticket 48 will hopefully have a description one day... 
Ticket 48 will hopefully have a description one day...  ', 1, 1, 3, '2020-05-18 15:16:52', 2, '2020-05-25 21:23:52', 2, null, null, 2, null);
INSERT INTO comments VALUES(null, 'Gamora: "The entire time I knew him he only ever had one goal. To be number one on trending. If he is released at the end of November, he will do it in a matter of seconds". 




Iron Man: "Tell me his name again"




Gamora: 
Avengers 4 trailer', 48, 3, '2020-05-26 14:10:52');
INSERT INTO comments VALUES(null, 'Who here in last 2019 movement', 48, 1, '2020-05-25 21:43:52');
INSERT INTO comments VALUES(null, 'The entire time I knew him, he only ever had one goal. To wipe out half of the country’s finances.


If he gets all the electoral college votes, he could do it with the sign of an executive orders. “sound effect of paper being signed”


Just like that. 




Tell me his name again. 




Donald Trump.', 48, 3, '2020-05-26 14:36:52');
INSERT INTO comments VALUES(null, '2020 : 


Tell me his name again : 


CORONA', 48, 3, '2020-05-25 06:30:52');
INSERT INTO comments VALUES(null, 'who is here watching in September 2019 ?', 48, 1, '2020-05-21 14:07:52');
INSERT INTO comments VALUES(null, 'This trailer is still EPIC', 48, 2, '2020-05-23 17:29:52');
INSERT INTO comments VALUES(null, '"I am inevitable"


"and I am groot"', 48, 3, '2020-05-23 12:14:52');
INSERT INTO comments VALUES(null, 'When you dont know what to do so you start watching old trailers*', 48, 3, '2020-05-20 06:06:52');
INSERT INTO comments VALUES(null, 'One of the most hyped movies in history with an absolutely shocking ending', 48, 2, '2020-05-21 10:53:52');
INSERT INTO comments VALUES(null, 'All the interactions between characters whove never met before will make me so happy', 48, 3, '2020-05-20 09:17:52');
INSERT INTO comments VALUES(null, 'Best trailer, Ive ever seen. it still feels is great.', 48, 1, '2020-05-20 23:39:52');
INSERT INTO comments VALUES(null, 'I swear Thor’s cape is like the best thing in trailers (for me anyway) the way he walked and what his cape did is so cool and in the AOU trailer when it took up the whole screen 😍', 48, 3, '2020-05-21 22:45:52');
INSERT INTO comments VALUES(null, 'That moment when Marvel fooled us into believing Gamora was talking to Tony.', 48, 1, '2020-05-21 00:00:52');
INSERT INTO comments VALUES(null, 'Fun fact: Final scene of trailer cap holding off thanos gauntlet with 2 infinity stones. In the movie his gauntlet was 4 stones. Marvel did well with this teaser.', 48, 2, '2020-05-21 06:32:52');
INSERT INTO comments VALUES(null, 'Y’all remember all the theories', 48, 3, '2020-05-20 13:02:52');
INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(49, 'Ticket 49', 'Ticket 49 will hopefully have a description one day... 

Ticket 49 will hopefully have a description one day... Ticket 49 will hopefully have a description one day... 
Ticket 49 will hopefully have a description one day...  ', 2, 2, 1, '2020-05-15 22:43:52', 1, '2020-05-20 01:23:52', 2, '2020-05-18 11:06:52', 2, 4, 1);
INSERT INTO comments VALUES(null, 'We have one advantage, thanos is coming to us. *flies towards Thanos’ ship', 49, 1, '2020-05-23 08:07:52');
INSERT INTO comments VALUES(null, '1:17
 was I the only one who thought Thanos is holding a flower bouquet?', 49, 2, '2020-05-17 10:06:52');
INSERT INTO comments VALUES(null, 'Whos here after Endgame?', 49, 1, '2020-05-19 06:44:52');
INSERT INTO comments VALUES(null, 'well this trailer give us the clue the title about the part 2 of the avengers infinity war.. but we dont realize it!!... well done marvel...




at minute 
1:10
 "The end is near"', 49, 1, '2020-05-23 00:27:52');
INSERT INTO comments VALUES(null, 'He legit says “he’s comin to us” while iron man flies to Thanos.', 49, 2, '2020-05-23 07:37:52');
INSERT INTO comments VALUES(null, 'You didnt find this Trailer, the Trailer found you', 49, 3, '2020-05-19 19:29:52');
INSERT INTO comments VALUES(null, 'The captions say "we have what Dennis once" "and um, half of humanity will still exist"', 49, 1, '2020-05-17 05:45:52');
INSERT INTO comments VALUES(null, 'The captions say "we have what Dennis once" "and um, half of humanity will still exist"', 49, 3, '2020-05-22 13:22:52');
INSERT INTO comments VALUES(null, 'Iron man: We got one advantage: hes coming to us.


Shows Iron man flying after a spaceship thats 
LEAVING
 earth', 49, 1, '2020-05-21 08:19:52');
INSERT INTO comments VALUES(null, 'Avengers:Saving New York




Avengers Age Of Ultron:saving the world




Avengers Infinity War:Saving The Galaxy 




Avengers Endgame:Avenging the Galaxy', 49, 2, '2020-05-23 10:22:52');
INSERT INTO comments VALUES(null, 'YouTube: 
pops this on my recommended page


Me: Youre about... 2 years late!', 49, 1, '2020-05-23 17:18:52');
INSERT INTO comments VALUES(null, 'who is watching after AVENGERS ENDGAME', 49, 3, '2020-05-17 05:29:52');
INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(50, 'Ticket 50', 'Ticket 50 will hopefully have a description one day... 

Ticket 50 will hopefully have a description one day... Ticket 50 will hopefully have a description one day... 
Ticket 50 will hopefully have a description one day...  ', 1, 3, 3, '2020-05-14 06:39:52', 2, '2020-05-16 20:09:52', 1, '2020-05-19 03:31:52', 3, 4, 3);
INSERT INTO comments VALUES(null, 'Avengers Infinity War Trailer 2: 93 Million Views. 


Avengers Endgame Trailer 2: 93 Million Views.


Perfectly Balanced As All Things Should Be!!', 50, 2, '2020-05-17 04:47:52');
INSERT INTO comments VALUES(null, 'Makes Justice League look like a youtube sketch', 50, 2, '2020-05-20 09:09:52');
INSERT INTO comments VALUES(null, 'That "I hope they remember you..." line means so much more now. :(', 50, 1, '2020-05-21 23:08:52');
INSERT INTO comments VALUES(null, 'Avengers 1: Tries To Kill Tony 


Avengers 2: Still Trying To Kill Tony


Avengers 3: Almost Tries To Kill


Avengers 4: Mission Successful', 50, 3, '2020-05-16 11:09:52');
INSERT INTO comments VALUES(null, 'Who else got recommended?', 50, 3, '2020-05-15 11:07:52');
INSERT INTO comments VALUES(null, '"You speak groot?"


"Yes, it was an elective on Asgard"', 50, 2, '2020-05-20 15:34:52');
INSERT INTO comments VALUES(null, 'Trailer 


    Tony : tell me his name again


    Gamora : Thanos


Movie 






WhO iS GAmoRa?!', 50, 2, '2020-05-19 21:53:52');
INSERT INTO comments VALUES(null, 'Who’s here after avengers 4 trailer ‼️‼️‼️🔥🔥🔥🔥🔥🎉', 50, 1, '2020-05-16 12:52:52');
INSERT INTO comments VALUES(null, 'Nothing will ever come close to the hype I got from watching the trailers for Infinity War and Endgame. Ahh those were the days', 50, 3, '2020-05-22 01:14:52');
INSERT INTO comments VALUES(null, '“I hope they remember you.”






Oh boy, did we ever...', 50, 1, '2020-05-18 09:11:52');
INSERT INTO comments VALUES(null, 'Who else got recommended?', 50, 3, '2020-05-16 20:49:52');
INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(51, 'Ticket 51', 'Ticket 51 will hopefully have a description one day... 

Ticket 51 will hopefully have a description one day... Ticket 51 will hopefully have a description one day... 
Ticket 51 will hopefully have a description one day...  ', 1, 2, 1, '2020-05-12 20:27:52', 2, '2020-05-15 18:09:52', 2, null, null, 2, null);
INSERT INTO comments VALUES(null, 'i remember being so hyped to see a gamora x tony convo for it to just be edited for the trailer', 51, 1, '2020-05-18 17:00:52');
INSERT INTO comments VALUES(null, '1:42
 Gives me chills now!!!', 51, 3, '2020-05-17 02:56:52');
INSERT INTO comments VALUES(null, 'Best way to pass the Quarantine: 
WATCH MCU TRAILERS', 51, 2, '2020-05-17 14:55:52');
INSERT INTO comments VALUES(null, 'Who else think infinity war is insanely a masterpiece❤️', 51, 3, '2020-05-17 19:30:52');
INSERT INTO comments VALUES(null, 'A wise king never seek out war




Bring me thanos 




Lets kill him properly this time', 51, 2, '2020-05-16 10:13:52');
INSERT INTO comments VALUES(null, 'Its 2020 but still watching this trailer..I wish that we will see them again one more time🙂', 51, 3, '2020-05-19 09:44:52');
INSERT INTO comments VALUES(null, 'Thanos: “Fine I’ll do it myself” Mysterio: “Fine I’ll kill the kids myself”', 51, 1, '2020-05-17 00:39:52');
INSERT INTO comments VALUES(null, 'Here after endgame. Still believing that this is the greatest trailer ever made in cinematic history', 51, 1, '2020-05-19 07:12:52');
INSERT INTO comments VALUES(null, '“How many times are you going to watch that trailer?”




Me : “I could do this all day”', 51, 3, '2020-05-20 17:54:52');
INSERT INTO comments VALUES(null, 'This movie unknowingly predicted the pandemic.', 51, 3, '2020-05-16 01:51:52');
INSERT INTO comments VALUES(null, 'This trailer is so good that when I stop watching it for a while and come back to watch it again all the hype comes back from when it first got released', 51, 2, '2020-05-17 12:19:52');
INSERT INTO comments VALUES(null, 'Today its been two years since this came out...doesnt feel that long at all.', 51, 3, '2020-05-14 20:42:52');
INSERT INTO comments VALUES(null, '"Your choices were him or a tree"', 51, 1, '2020-05-14 15:08:52');
INSERT INTO comments VALUES(null, '- Tell me his name again  


- Covid-19', 51, 1, '2020-05-20 14:54:52');
INSERT INTO comments VALUES(null, '*You cannot live with the ending of the movie........where did that bring you*








Back to the trailers.


Ctto.', 51, 2, '2020-05-16 23:20:52');
INSERT INTO comments VALUES(null, 'Who’s here after endgame?', 51, 1, '2020-05-15 08:59:52');
INSERT INTO comments VALUES(null, 'Iron Man : Tell me his name again             


Gamora : Covid-19! 




(BGM rolls)', 51, 3, '2020-05-18 01:31:52');
INSERT INTO comments VALUES(null, 'who’s here still depressed about endgame', 51, 3, '2020-05-17 02:25:52');
INSERT INTO comments VALUES(null, '“I AM GROOT”


“I am Steve Rogers”', 51, 3, '2020-05-16 20:04:52');
INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(52, 'Ticket 52', 'Ticket 52 will hopefully have a description one day... 

Ticket 52 will hopefully have a description one day... Ticket 52 will hopefully have a description one day... 
Ticket 52 will hopefully have a description one day...  ', 2, 2, 1, '2020-05-17 04:03:52', 1, '2020-05-22 11:05:52', 3, null, null, 2, null);
INSERT INTO comments VALUES(null, '“we got one advantage he’s coming to us, we have what thanos wants so that’s what we’ll use” see how they showed the time stone when tony says that?', 52, 1, '2020-05-21 13:30:52');
INSERT INTO comments VALUES(null, 'Thanos to DC : I hope they remember you', 52, 2, '2020-05-21 13:19:52');
INSERT INTO comments VALUES(null, 'Iron Man Is still not dead tO Know why like  my comment', 52, 2, '2020-05-23 07:57:52');
INSERT INTO comments VALUES(null, 'Spoiler alert!!!








Drax stood so still that he became invisible', 52, 2, '2020-05-20 00:34:52');
INSERT INTO comments VALUES(null, 'This movie unknowingly predicted the pandemic.', 52, 1, '2020-05-21 22:26:52');
INSERT INTO comments VALUES(null, 'even though all is finished, cap is old, iron man is dead... I will never forget them, Avengers forever.', 52, 2, '2020-05-19 18:09:52');
INSERT INTO comments VALUES(null, '0:45
 "so thats what we use" why did tony sound a bit Scottish when he said use? or is it just me?', 52, 3, '2020-05-18 10:02:52');
INSERT INTO comments VALUES(null, 'Marvel : Lets talk about plans here......first kill half heros ......again give life to them in endgame


Disney: WOW!!!!!...', 52, 2, '2020-05-24 20:46:52');
INSERT INTO comments VALUES(null, 'Can we have a moment of silence for the people who will not be able to watch Avengers 5 because they got affected and ...', 52, 1, '2020-05-20 11:10:52');
INSERT INTO comments VALUES(null, 'Spoiler alert!!!








Drax stood so still that he became invisible', 52, 1, '2020-05-21 15:29:52');
INSERT INTO comments VALUES(null, '“I AM GROOT”


“I am Steve Rogers”', 52, 3, '2020-05-20 06:10:52');
INSERT INTO comments VALUES(null, 'So its December 2019 and you just rewatched the first IW trailer bc Black widow is giving you a trip down memory lane. And now youre here bc you just couldnt help yourself. 


Well...see you in the endgame trailer comments bc we both know youll skip over CM.', 52, 1, '2020-05-23 10:23:52');
INSERT INTO comments VALUES(null, 'I hope they remember you....




Me : I  still watch this trailer for him...', 52, 2, '2020-05-19 22:50:52');
INSERT INTO comments VALUES(null, 'Infinity war trailer :  gives me goosebumps




Me : i m still worthy', 52, 2, '2020-05-23 19:03:52');
INSERT INTO comments VALUES(null, 'So its December 2019 and you just rewatched the first IW trailer bc Black widow is giving you a trip down memory lane. And now youre here bc you just couldnt help yourself. 


Well...see you in the endgame trailer comments bc we both know youll skip over CM.', 52, 1, '2020-05-20 07:01:52');
INSERT INTO comments VALUES(null, 'Happy 2nd Anniversary to this, and to those who are affected by the CoronaVirus, and who are not, be sure to wash your hands and stay home and be safe', 52, 2, '2020-05-24 01:44:52');
INSERT INTO comments VALUES(null, 'Who’s rewatching old trailers during quarantine?', 52, 3, '2020-05-22 07:51:52');
INSERT INTO comments VALUES(null, 'Atfter Tony Stark....Loki Will Be Most Powerful, Popular Hero either Villain ..', 52, 3, '2020-05-18 13:07:52');
INSERT INTO comments VALUES(null, '2 years ago I can’t believe it , feels like the other day 😭', 52, 1, '2020-05-23 18:47:52');
INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(53, 'Ticket 53', 'Ticket 53 will hopefully have a description one day... 

Ticket 53 will hopefully have a description one day... Ticket 53 will hopefully have a description one day... 
Ticket 53 will hopefully have a description one day...  ', 3, 2, 1, '2020-05-15 15:15:52', 2, '2020-05-19 08:28:52', 3, '2020-05-19 17:08:52', 1, 4, 3);
INSERT INTO comments VALUES(null, 'Bro


Thanos made this virus


Im here after6500 deaths


This is 16th March 2020', 53, 3, '2020-05-19 05:39:52');
INSERT INTO comments VALUES(null, 'You cannot live with the ending of the movie......where did that bring you




Back to the trailers.', 53, 2, '2020-05-21 17:48:52');
INSERT INTO comments VALUES(null, 'Thanos: 
*fails*




Coronavirus: 
fine I’ll do it myself', 53, 1, '2020-05-21 12:23:52');
INSERT INTO comments VALUES(null, 'Today its been two years since this came out...doesnt feel that long at all.', 53, 1, '2020-05-16 23:19:52');
INSERT INTO comments VALUES(null, 'One of the greatest trailers ever made!', 53, 3, '2020-05-21 01:27:52');
INSERT INTO comments VALUES(null, 'I wish we can somehow go back to when Infinity War was barely released 😭', 53, 3, '2020-05-19 15:31:52');
INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(54, 'Ticket 54', 'Ticket 54 will hopefully have a description one day... 

Ticket 54 will hopefully have a description one day... Ticket 54 will hopefully have a description one day... 
Ticket 54 will hopefully have a description one day...  ', 3, 2, 3, '2020-05-16 17:45:52', 3, '2020-05-22 16:45:52', 2, null, null, 2, null);
INSERT INTO comments VALUES(null, 'The captions say "we have what Dennis once" "and um, half of humanity will still exist"', 54, 1, '2020-05-22 09:16:52');
INSERT INTO comments VALUES(null, 'Coronavirus: when Im done half of humanity will still exist.', 54, 2, '2020-05-23 00:04:52');
INSERT INTO comments VALUES(null, '#1 Trending in Wakanda', 54, 1, '2020-05-23 02:59:52');
INSERT INTO comments VALUES(null, 'Who is here in Dec 2019..', 54, 2, '2020-05-22 23:47:52');
INSERT INTO comments VALUES(null, 'love how they put a ton of peter at the end 😂', 54, 3, '2020-05-20 03:43:52');
INSERT INTO comments VALUES(null, 'who is watching after AVENGERS ENDGAME', 54, 1, '2020-05-20 09:29:52');
INSERT INTO comments VALUES(null, 'This tralier still hits different', 54, 1, '2020-05-18 21:49:52');
INSERT INTO comments VALUES(null, 'I wish we can somehow go back to when Infinity War was barely released 😭', 54, 2, '2020-05-22 18:17:52');
INSERT INTO comments VALUES(null, 'Loved this movie although i was looking forward to watching the scene with Gamora warning Tony about Thanos. Kinda dissapointed they never even met', 54, 1, '2020-05-22 05:15:52');
INSERT INTO comments VALUES(null, '*You cannot live with the ending of the movie........where did that bring you*








Back to the trailers.


Ctto.', 54, 3, '2020-05-24 00:00:52');
INSERT INTO comments VALUES(null, 'This trailer came out 2 Years Ago... dear god so much time has passed.', 54, 2, '2020-05-22 11:03:52');
INSERT INTO comments VALUES(null, 'The entire time I knew him, he only ever had one goal. To wipe out half of the country’s finances.


If he gets all the electoral college votes, he could do it with the sign of an executive orders. “sound effect of paper being signed”


Just like that. 




Tell me his name again. 




Donald Trump.', 54, 3, '2020-05-23 00:50:52');
INSERT INTO comments VALUES(null, 'Yep, thats the movie event of the year.', 54, 2, '2020-05-19 19:24:52');
INSERT INTO comments VALUES(null, 'The captions say "we have what Dennis once" "and um, half of humanity will still exist"', 54, 3, '2020-05-17 19:58:52');
INSERT INTO comments VALUES(null, 'That Scene Cap holding Thanoss hand Was the most prestigious moment when the trailer initially came out two years back.', 54, 2, '2020-05-21 10:15:52');
INSERT INTO comments VALUES(null, 'Best trailer, Ive ever seen. it still feels is great.', 54, 1, '2020-05-19 13:58:52');
INSERT INTO comments VALUES(null, '2 years ago, this day Thanos snapped', 54, 3, '2020-05-20 16:12:52');
INSERT INTO comments VALUES(null, 'Kevin Fiege: There was an Idea..






James Gunn: To bring together a group of remarkable poeple..






Ryan Coogler: To see if we could become something more..






Jon Faverou: So when they needed us we could make the movies..






The Russos: That 
DC
 never could.. 😂😂!!', 54, 2, '2020-05-24 07:41:52');
INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(55, 'Ticket 55', 'Ticket 55 will hopefully have a description one day... 

Ticket 55 will hopefully have a description one day... Ticket 55 will hopefully have a description one day... 
Ticket 55 will hopefully have a description one day...  ', 1, 3, 1, '2020-05-14 15:59:52', 1, '2020-05-19 16:14:52', 3, null, null, 1, null);
INSERT INTO comments VALUES(null, 'YouTube: 
pops this on my recommended page


Me: Youre about... 2 years late!', 55, 1, '2020-05-15 17:17:52');
INSERT INTO comments VALUES(null, 'Marvel: “I hope they remember you”


DC: ...', 55, 1, '2020-05-20 19:34:52');
INSERT INTO comments VALUES(null, 'I remember I literally screamed when Cap stopped Thanoss hand', 55, 2, '2020-05-16 04:44:52');
INSERT INTO comments VALUES(null, 'Its already second month of 2020 and idk why Im I still watching it.', 55, 2, '2020-05-18 11:54:52');
INSERT INTO comments VALUES(null, 'Bro


Thanos made this virus


Im here after6500 deaths


This is 16th March 2020', 55, 2, '2020-05-21 10:55:52');
INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(56, 'Ticket 56', 'Ticket 56 will hopefully have a description one day... 

Ticket 56 will hopefully have a description one day... Ticket 56 will hopefully have a description one day... 
Ticket 56 will hopefully have a description one day...  ', 3, 1, 1, '2020-05-17 15:16:52', 2, '2020-05-22 23:40:52', 1, null, null, 3, null);
INSERT INTO comments VALUES(null, 'Avengers 1: Tries To Kill Tony 


Avengers 2: Still Trying To Kill Tony


Avengers 3: Almost Tries To Kill


Avengers 4: Mission Successful', 56, 3, '2020-05-21 11:44:52');
INSERT INTO comments VALUES(null, 'Who’s rewatching old trailers during quarantine?', 56, 1, '2020-05-21 14:22:52');
INSERT INTO comments VALUES(null, 'Who is watching and liking with me now', 56, 1, '2020-05-25 02:23:52');
INSERT INTO comments VALUES(null, '2:10
 


Peter:"Karen,hide my spider legs for the trailer but show them in the movie."








Karen:"Do you want me to activate Instant Kill?"', 56, 3, '2020-05-24 08:25:52');
INSERT INTO comments VALUES(null, 'When u realised that all that happened under a random green room...', 56, 1, '2020-05-20 00:21:52');
INSERT INTO comments VALUES(null, 'Avengers:Saving New York




Avengers Age Of Ultron:saving the world




Avengers Infinity War:Saving The Galaxy 




Avengers Endgame:Avenging the Galaxy', 56, 2, '2020-05-23 22:08:52');
INSERT INTO comments VALUES(null, 'Nothing will ever come close to the hype I got from watching the trailers for Infinity War and Endgame. Ahh those were the days', 56, 2, '2020-05-19 03:00:52');
INSERT INTO comments VALUES(null, 'I wish we can somehow go back to when Infinity War was barely released 😭', 56, 3, '2020-05-23 21:05:52');
INSERT INTO comments VALUES(null, 'INFINITY WAR:- SPIDER MAN DIES IN TONYS ARMS


ENDGAME :- TONY DIED IN FRONT OF SPIDERMAN


I HATE THIS PARALLELS', 56, 2, '2020-05-21 08:43:52');
INSERT INTO comments VALUES(null, '“How long were you standing here?”




“For an hour”', 56, 3, '2020-05-24 23:13:52');
INSERT INTO comments VALUES(null, 'That Scene Cap holding Thanoss hand Was the most prestigious moment when the trailer initially came out two years back.', 56, 1, '2020-05-24 19:52:52');
INSERT INTO comments VALUES(null, 'Marvel to DC: 
"I hope they remember you. . . ."', 56, 3, '2020-05-25 05:04:52');
INSERT INTO comments VALUES(null, 'When you dont know what to do so you start watching old trailers*', 56, 3, '2020-05-23 20:45:52');
INSERT INTO comments VALUES(null, 'The media to Disney: "how much money did you profit off of Avengers:Infinity War and Endgame?"




Disney:..."Yes"....', 56, 3, '2020-05-21 17:57:52');
INSERT INTO comments VALUES(null, 'It’s December 2019 and this trailer still gives me so many chills', 56, 3, '2020-05-25 02:23:52');
INSERT INTO comments VALUES(null, 'Imagine if they had killed iron man in this one.....', 56, 2, '2020-05-20 08:42:52');
INSERT INTO comments VALUES(null, 'I’m still getting chills watching this. It’s 2020. Every Thanos line is chilling.', 56, 2, '2020-05-23 03:43:52');
INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(57, 'Ticket 57', 'Ticket 57 will hopefully have a description one day... 

Ticket 57 will hopefully have a description one day... Ticket 57 will hopefully have a description one day... 
Ticket 57 will hopefully have a description one day...  ', 1, 1, 2, '2020-05-13 01:07:52', 1, '2020-05-18 15:26:52', 1, null, null, 2, null);
INSERT INTO comments VALUES(null, 'THANOS: you have really strong arms. 


CAP: I have been single for 98 years what do you expect?', 57, 3, '2020-05-16 04:01:52');
INSERT INTO comments VALUES(null, '“I don’t feel so good”


“I don’t wanna go Mr. Stark”


This was the saddest shit of all time', 57, 1, '2020-05-14 21:03:52');
INSERT INTO comments VALUES(null, 'I wish Tony and Gamora would have actually talked in the MCU, even for a single scene.', 57, 1, '2020-05-15 06:29:52');
INSERT INTO comments VALUES(null, 'Who’s here after avengers 4 trailer ‼️‼️‼️🔥🔥🔥🔥🔥🎉', 57, 3, '2020-05-14 18:14:52');
INSERT INTO comments VALUES(null, 'ME: STILL AINT RELIVED FROM ENDGAMES EFFECT




YOUTUBE : WANNA CHECK OUT INFINITY WAR TRAILER???', 57, 3, '2020-05-16 23:01:52');
INSERT INTO comments VALUES(null, 'Iron Man Is still not dead tO Know why like  my comment', 57, 2, '2020-05-17 18:08:52');
INSERT INTO comments VALUES(null, '1:11
 Coronavirus Thanos:The end is near...', 57, 3, '2020-05-16 14:34:52');
INSERT INTO comments VALUES(null, 'Whos here after watching Avengers: Endgame ?', 57, 1, '2020-05-14 09:34:52');
INSERT INTO comments VALUES(null, '1:42
 Gives me chills now!!!', 57, 3, '2020-05-18 13:30:52');
INSERT INTO comments VALUES(null, 'MCU-


Thanos: When Im done, half of humanity will still exist.






Real Life-


COVID-19: When Im done, half of humanity will seize to exist.', 57, 1, '2020-05-19 11:15:52');
INSERT INTO comments VALUES(null, 'even though all is finished, cap is old, iron man is dead... I will never forget them, Avengers forever.', 57, 2, '2020-05-18 01:31:52');
INSERT INTO comments VALUES(null, '1:17
 was I the only one who thought Thanos is holding a flower bouquet?', 57, 3, '2020-05-15 01:01:52');
INSERT INTO comments VALUES(null, 'Who else think infinity war is insanely a masterpiece❤️', 57, 2, '2020-05-19 18:47:52');
INSERT INTO comments VALUES(null, 'I wish we can somehow go back to when Infinity War was barely released 😭', 57, 2, '2020-05-18 12:03:52');
INSERT INTO comments VALUES(null, 'The best movie in MCU.', 57, 2, '2020-05-17 13:47:52');
INSERT INTO comments VALUES(null, '-How many times would you like to watch Infinity War for the first time?


-14,000,605.


-How many can you watch?


-One.', 57, 1, '2020-05-16 13:00:52');
INSERT INTO comments VALUES(null, 'Infinity War is still my top MCU movie even after Endgame', 57, 3, '2020-05-16 01:17:52');
INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(58, 'Ticket 58', 'Ticket 58 will hopefully have a description one day... 

Ticket 58 will hopefully have a description one day... Ticket 58 will hopefully have a description one day... 
Ticket 58 will hopefully have a description one day...  ', 3, 2, 3, '2020-05-14 06:23:52', 2, '2020-05-17 15:24:52', 3, null, null, 1, null);
INSERT INTO comments VALUES(null, 'INFINITY WAR:- SPIDER MAN DIES IN TONYS ARMS


ENDGAME :- TONY DIED IN FRONT OF SPIDERMAN


I HATE THIS PARALLELS', 58, 2, '2020-05-19 07:04:52');
INSERT INTO comments VALUES(null, '- Tell me his name again  


- Covid-19', 58, 1, '2020-05-19 20:57:52');
INSERT INTO comments VALUES(null, 'This movie still makes me sad


Even though I know what happens after it', 58, 1, '2020-05-20 16:14:52');
INSERT INTO comments VALUES(null, 'ME: STILL AINT RELIVED FROM ENDGAMES EFFECT




YOUTUBE : WANNA CHECK OUT INFINITY WAR TRAILER???', 58, 1, '2020-05-21 22:58:52');
INSERT INTO comments VALUES(null, '“How many times are you going to watch that trailer?”




Me : “I could do this all day”', 58, 3, '2020-05-16 04:45:52');
INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(59, 'Ticket 59', 'Ticket 59 will hopefully have a description one day... 

Ticket 59 will hopefully have a description one day... Ticket 59 will hopefully have a description one day... 
Ticket 59 will hopefully have a description one day...  ', 1, 2, 1, '2020-05-16 15:04:52', 3, '2020-05-23 10:28:52', 3, '2020-05-23 01:17:52', 3, 4, 1);
INSERT INTO comments VALUES(null, 'It’s March 20 2020 and this is still awesome', 59, 1, '2020-05-24 00:59:52');
INSERT INTO comments VALUES(null, 'That "I hope they remember you..." line means so much more now. :(', 59, 2, '2020-05-20 21:28:52');
INSERT INTO comments VALUES(null, 'This trailer still gives me the chills down my spine 2020', 59, 3, '2020-05-18 18:25:52');
INSERT INTO comments VALUES(null, 'The entire time I knew him, he only ever had one goal. To wipe out half of the country’s finances.


If he gets all the electoral college votes, he could do it with the sign of an executive orders. “sound effect of paper being signed”


Just like that. 




Tell me his name again. 




Donald Trump.', 59, 3, '2020-05-24 00:29:52');
INSERT INTO comments VALUES(null, 'Watching this trailer in 2118: I could this all day. Even today!!', 59, 1, '2020-05-24 05:37:52');
INSERT INTO comments VALUES(null, 'LOL!! Dr. Strange is being tortured again?! The dude can’t catch a break.






I guess it’s time to bargain', 59, 3, '2020-05-19 03:03:52');
INSERT INTO comments VALUES(null, 'Thanos: 
Fails






Coronavirus: Fine, Ill do it myself.', 59, 2, '2020-05-19 04:52:52');
INSERT INTO comments VALUES(null, 'Cant count the number of times Ive seen this trailer, movies been out more than 2 years. Endgame a year ago already. 






I can do this all day.', 59, 2, '2020-05-20 11:16:52');
INSERT INTO comments VALUES(null, 'This trailer is full of mistakes scenes that never happened in the real movie', 59, 3, '2020-05-19 21:34:52');
INSERT INTO comments VALUES(null, '1:45
 to 
2:04
 i didnt feel my body when i see this first time....(next level goosebumps)', 59, 2, '2020-05-19 09:45:52');
INSERT INTO comments VALUES(null, 'That Scene Cap holding Thanoss hand Was the most prestigious moment when the trailer initially came out two years back.', 59, 3, '2020-05-20 10:19:52');
INSERT INTO comments VALUES(null, 'Who’s here after avengers 4 trailer ‼️‼️‼️🔥🔥🔥🔥🔥🎉', 59, 3, '2020-05-23 18:22:52');
INSERT INTO comments VALUES(null, '0:45
 "so thats what we use" why did tony sound a bit Scottish when he said use? or is it just me?', 59, 1, '2020-05-17 17:12:52');
INSERT INTO comments VALUES(null, 'Its already second month of 2020 and idk why Im I still watching it.', 59, 3, '2020-05-20 04:37:52');
INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(60, 'Ticket 60', 'Ticket 60 will hopefully have a description one day... 

Ticket 60 will hopefully have a description one day... Ticket 60 will hopefully have a description one day... 
Ticket 60 will hopefully have a description one day...  ', 1, 1, 3, '2020-05-14 22:56:52', 3, '2020-05-18 00:44:52', 2, null, null, 2, null);
INSERT INTO comments VALUES(null, 'Whos here after Endgame?', 60, 3, '2020-05-20 12:46:52');
INSERT INTO comments VALUES(null, '"Who is here after watching Endgame?"




Me: me




"How many times you watch this trailer?"




Me: i can do this all day', 60, 3, '2020-05-16 22:45:52');
INSERT INTO comments VALUES(null, 'Loki: 
brings Thanos’ corpse to the avengers




Everyone: “Holy shit, how’d you do it?!”




Loki: “Simple. I turned myself into an infinity stone. Because I know how much Thanos loves infinity stones. So he went to pick up the infinity stone to admire it, and then I turned back into myself and was like, “BLAAHH it’s me!”, and I stabbed him.”




Thor: “That’s even better than my ‘get help’ plan, brother.”', 60, 3, '2020-05-17 01:06:52');
INSERT INTO comments VALUES(null, 'Cant count the number of times Ive seen this trailer, movies been out more than 2 years. Endgame a year ago already. 






I can do this all day.', 60, 3, '2020-05-21 22:29:52');
INSERT INTO comments VALUES(null, 'LOL!! Dr. Strange is being tortured again?! The dude can’t catch a break.






I guess it’s time to bargain', 60, 2, '2020-05-18 08:38:52');
INSERT INTO comments VALUES(null, '*You cannot live with the ending of the movie........where did that bring you*








Back to the trailers.


Ctto.', 60, 1, '2020-05-19 15:15:52');
INSERT INTO comments VALUES(null, 'Marvel and DC talking about building a cinematic universe:




Marvel: Let’s talk about this plan of yours. I think it’s really good, but it sucks. So let me do the plan, and that way it’ll be really good.


DC: Wow', 60, 2, '2020-05-16 11:03:52');
INSERT INTO comments VALUES(null, 'Thanos: fails


Coronavirus: 
Fine, I’ll d9 it myself', 60, 1, '2020-05-18 04:23:52');
INSERT INTO comments VALUES(null, 'Marvel: I hope they remember you..


DC: The hell they won’t', 60, 2, '2020-05-21 05:16:52');
INSERT INTO comments VALUES(null, 'Who else think infinity war is insanely a masterpiece❤️', 60, 2, '2020-05-18 15:59:52');
INSERT INTO comments VALUES(null, '2 years ago I can’t believe it , feels like the other day 😭', 60, 3, '2020-05-20 10:30:52');
INSERT INTO comments VALUES(null, 'Iron Man : Tell me his name again             


Gamora : Covid-19! 




(BGM rolls)', 60, 1, '2020-05-20 12:04:52');
INSERT INTO comments VALUES(null, 'Thanos: “Fine I’ll do it myself” Mysterio: “Fine I’ll kill the kids myself”', 60, 2, '2020-05-16 19:18:52');
INSERT INTO comments VALUES(null, 'I’m still getting chills watching this. It’s 2020. Every Thanos line is chilling.', 60, 3, '2020-05-16 22:20:52');
INSERT INTO comments VALUES(null, 'That trailer music that lead to so many "infinity war style" trailers.', 60, 2, '2020-05-19 07:45:52');
INSERT INTO comments VALUES(null, 'YouTube: 
pops this on my recommended page


Me: Youre about... 2 years late!', 60, 2, '2020-05-18 17:34:52');
INSERT INTO comments VALUES(null, 'No matter how many times I watch this 
1:27
 will always give me goosebumps and make me tear up a bit', 60, 2, '2020-05-22 18:32:52');
INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(61, 'Ticket 61', 'Ticket 61 will hopefully have a description one day... 

Ticket 61 will hopefully have a description one day... Ticket 61 will hopefully have a description one day... 
Ticket 61 will hopefully have a description one day...  ', 2, 3, 2, '2020-05-14 21:42:52', 3, '2020-05-18 10:37:52', 2, null, null, 2, null);
INSERT INTO comments VALUES(null, 'Thanos: When I m done half of humanity will still exist


Coronavirus: My turn', 61, 2, '2020-05-16 08:27:52');
INSERT INTO comments VALUES(null, 'It’s March 20 2020 and this is still awesome', 61, 2, '2020-05-22 08:37:52');
INSERT INTO comments VALUES(null, 'The entire time I knew him, he only ever had one goal. To wipe out half of the country’s finances.


If he gets all the electoral college votes, he could do it with the sign of an executive orders. “sound effect of paper being signed”


Just like that. 




Tell me his name again. 




Donald Trump.', 61, 3, '2020-05-16 12:15:52');
INSERT INTO comments VALUES(null, '"Your choices were him or a tree"', 61, 1, '2020-05-20 09:19:52');
INSERT INTO comments VALUES(null, '1:28
 onwards


Oh man, its been 2 years and Im still getting getting the goosebumps....', 61, 3, '2020-05-18 00:36:52');
INSERT INTO comments VALUES(null, 'In 2018..


Iron Man: "Im sorry Earth is closed today"


Ancient One: "Youre about two years too early"', 61, 2, '2020-05-22 03:34:52');
INSERT INTO comments VALUES(null, '" The  end is near " that Scene was awesome', 61, 2, '2020-05-20 23:54:52');
INSERT INTO comments VALUES(null, 'This tralier still hits different', 61, 2, '2020-05-22 17:39:52');
INSERT INTO comments VALUES(null, 'The entire time I knew him, he only ever had one goal. To wipe out half of the country’s finances.


If he gets all the electoral college votes, he could do it with the sign of an executive orders. “sound effect of paper being signed”


Just like that. 




Tell me his name again. 




Donald Trump.', 61, 3, '2020-05-18 10:34:52');
INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(62, 'Ticket 62', 'Ticket 62 will hopefully have a description one day... 

Ticket 62 will hopefully have a description one day... Ticket 62 will hopefully have a description one day... 
Ticket 62 will hopefully have a description one day...  ', 1, 2, 3, '2020-05-14 19:19:52', 3, '2020-05-16 03:36:52', 1, '2020-05-16 05:31:52', 3, 4, 2);
INSERT INTO comments VALUES(null, 'INFINITY WAR:- SPIDER MAN DIES IN TONYS ARMS


ENDGAME :- TONY DIED IN FRONT OF SPIDERMAN


I HATE THIS PARALLELS', 62, 3, '2020-05-18 16:39:52');
INSERT INTO comments VALUES(null, '1:10
 Did anyone see thor without his head?', 62, 3, '2020-05-16 12:13:52');
INSERT INTO comments VALUES(null, 'Marvel to DC: 
"I hope they remember you. . . ."', 62, 1, '2020-05-17 06:51:52');
INSERT INTO comments VALUES(null, 'That trailer music that lead to so many "infinity war style" trailers.', 62, 3, '2020-05-17 23:47:52');
INSERT INTO comments VALUES(null, 'I wish Tony and Gamora would have actually talked in the MCU, even for a single scene.', 62, 2, '2020-05-18 02:35:52');
INSERT INTO comments VALUES(null, '"I hope theyll remember you"




This is what MCU says to DCEU', 62, 1, '2020-05-18 20:04:52');
INSERT INTO comments VALUES(null, 'I know many of you are here after watching the movie 😂😂', 62, 2, '2020-05-19 14:21:52');
INSERT INTO comments VALUES(null, '2020 : 


Tell me his name again : 


CORONA', 62, 3, '2020-05-19 22:49:52');
INSERT INTO comments VALUES(null, 'I wanna go back in time and show this to a Marvel fan in the 90s. I feel like their first question would be "wheres Wolverine?"', 62, 1, '2020-05-18 11:34:52');
INSERT INTO comments VALUES(null, '"If I tell you what happens, it wont happen"', 62, 1, '2020-05-17 21:28:52');
INSERT INTO comments VALUES(null, 'Anyone still watching the trailer in October????!?!?!', 62, 2, '2020-05-20 02:46:52');
INSERT INTO comments VALUES(null, 'They do remember him, they will always remember him 😭😭', 62, 2, '2020-05-22 19:50:52');
INSERT INTO comments VALUES(null, 'Marvel : Lets talk about plans here......first kill half heros ......again give life to them in endgame


Disney: WOW!!!!!...', 62, 2, '2020-05-19 10:13:52');
INSERT INTO comments VALUES(null, 'I love how the editors of this trailer were able to weave the Avengers theme into Audiomachines "Redshift".', 62, 3, '2020-05-19 19:22:52');
INSERT INTO comments VALUES(null, 'INFINITY WAR:- SPIDER MAN DIES IN TONYS ARMS


ENDGAME :- TONY DIED IN FRONT OF SPIDERMAN


I HATE THIS PARALLELS', 62, 2, '2020-05-20 21:37:52');
INSERT INTO comments VALUES(null, 'even though all is finished, cap is old, iron man is dead... I will never forget them, Avengers forever.', 62, 3, '2020-05-20 16:00:52');
INSERT INTO comments VALUES(null, 'I wish we can somehow go back to when Infinity War was barely released 😭', 62, 2, '2020-05-19 22:59:52');
INSERT INTO comments VALUES(null, 'One of the greatest trailers ever made!', 62, 1, '2020-05-16 11:02:52');
INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(63, 'Ticket 63', 'Ticket 63 will hopefully have a description one day... 

Ticket 63 will hopefully have a description one day... Ticket 63 will hopefully have a description one day... 
Ticket 63 will hopefully have a description one day...  ', 2, 2, 3, '2020-05-12 23:15:52', 3, '2020-05-20 22:27:52', 2, null, null, 2, null);
INSERT INTO comments VALUES(null, '1:42
 Gives me chills now!!!', 63, 3, '2020-05-16 12:20:52');
INSERT INTO comments VALUES(null, 'Anyone  still watching in october 2019', 63, 3, '2020-05-15 05:24:52');
INSERT INTO comments VALUES(null, 'Today its been two years since this came out...doesnt feel that long at all.', 63, 2, '2020-05-17 22:13:52');
INSERT INTO comments VALUES(null, 'You could not live with your own failure, where did that bring you? Back to me.', 63, 3, '2020-05-18 11:29:52');
INSERT INTO comments VALUES(null, 'I love how the editors of this trailer were able to weave the Avengers theme into Audiomachines "Redshift".', 63, 2, '2020-05-14 03:24:52');
INSERT INTO comments VALUES(null, 'Yep, thats the movie event of the year.', 63, 1, '2020-05-17 16:42:52');
INSERT INTO comments VALUES(null, '"Tell me his name again"










"Noobmaster69"', 63, 2, '2020-05-17 15:34:52');
INSERT INTO comments VALUES(null, '"I am inevitable"


"and I am groot"', 63, 3, '2020-05-14 04:41:52');
INSERT INTO comments VALUES(null, 'who is here watching in September 2019 ?', 63, 1, '2020-05-17 22:23:52');
INSERT INTO comments VALUES(null, 'Thanos: Fails


Covid 19: I will show you how its done when I wipe out half of humanity.', 63, 1, '2020-05-14 20:04:52');
INSERT INTO comments VALUES(null, 'Who’s rewatching old trailers during quarantine?', 63, 1, '2020-05-17 12:44:52');
INSERT INTO comments VALUES(null, 'The media to Disney: "how much money did you profit off of Avengers:Infinity War and Endgame?"




Disney:..."Yes"....', 63, 1, '2020-05-18 23:49:52');
INSERT INTO comments VALUES(null, 'Best trailer, Ive ever seen. it still feels is great.', 63, 3, '2020-05-14 17:37:52');
INSERT INTO comments VALUES(null, 'I hope they remember you....




Me : I  still watch this trailer for him...', 63, 3, '2020-05-20 16:31:52');
INSERT INTO comments VALUES(null, 'You didnt find this Trailer, the Trailer found you', 63, 1, '2020-05-14 19:20:52');
INSERT INTO comments VALUES(null, 'Everyone mad about star lord


Atleast he aimed for the head', 63, 2, '2020-05-17 23:40:52');
INSERT INTO comments VALUES(null, '0:45
 "so thats what we use" why did tony sound a bit Scottish when he said use? or is it just me?', 63, 2, '2020-05-19 12:34:52');
INSERT INTO comments VALUES(null, 'Marvel: I hope they remember you..


DC: The hell they won’t', 63, 3, '2020-05-18 20:32:52');
INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(64, 'Ticket 64', 'Ticket 64 will hopefully have a description one day... 

Ticket 64 will hopefully have a description one day... Ticket 64 will hopefully have a description one day... 
Ticket 64 will hopefully have a description one day...  ', 2, 3, 1, '2020-05-18 04:15:52', 1, '2020-05-23 20:37:52', 3, null, null, 1, null);
INSERT INTO comments VALUES(null, 'Infinity War is still my top MCU movie even after Endgame', 64, 2, '2020-05-25 12:56:52');
INSERT INTO comments VALUES(null, 'A wise king never seek out war




Bring me thanos 




Lets kill him properly this time', 64, 2, '2020-05-22 00:18:52');
INSERT INTO comments VALUES(null, 'Remember the hype for this movie? It all seems so far away now.', 64, 2, '2020-05-20 23:51:52');
INSERT INTO comments VALUES(null, 'Wow this was really two years ago who else is here wit me', 64, 2, '2020-05-20 08:22:52');
INSERT INTO comments VALUES(null, 'This trailer is so good that when I stop watching it for a while and come back to watch it again all the hype comes back from when it first got released', 64, 1, '2020-05-26 01:31:52');
INSERT INTO comments VALUES(null, 'Every Marvel fan back to watch this trailer after Endgame, one year later.', 64, 3, '2020-05-25 16:36:52');
INSERT INTO comments VALUES(null, 'When you have an injection 
1:37', 64, 1, '2020-05-23 10:19:52');
INSERT INTO comments VALUES(null, 'A wise king never seek out war




Bring me thanos 




Lets kill him properly this time', 64, 1, '2020-05-21 12:52:52');
INSERT INTO comments VALUES(null, 'Who’s here after endgame?', 64, 3, '2020-05-22 23:08:52');
INSERT INTO comments VALUES(null, 'Watching this trailer in 2118: I could this all day. Even today!!', 64, 3, '2020-05-23 23:59:52');
INSERT INTO comments VALUES(null, 'Thanos other code name = Coronavirus 2020', 64, 1, '2020-05-25 02:30:52');
INSERT INTO comments VALUES(null, 'Pessimist: half empty 


Optimist: half full


Thanos: perfectly balanced as all things should', 64, 3, '2020-05-20 08:50:52');
INSERT INTO comments VALUES(null, 'I wanna go back in time and show this to a Marvel fan in the 90s. I feel like their first question would be "wheres Wolverine?"', 64, 3, '2020-05-25 09:35:52');
INSERT INTO comments VALUES(null, 'Kevin Fiege: There was an Idea..






James Gunn: To bring together a group of remarkable poeple..






Ryan Coogler: To see if we could become something more..






Jon Faverou: So when they needed us we could make the movies..






The Russos: That 
DC
 never could.. 😂😂!!', 64, 3, '2020-05-23 23:49:52');
INSERT INTO comments VALUES(null, 'Thanos: Stark!


Tony Stark: You know me!!


Thanos: Youre not the only one cursed with knowledge.


Tony Stark: My only curse is you.', 64, 2, '2020-05-23 05:36:52');
INSERT INTO comments VALUES(null, 'Im here to remind you that Infinity War is almost 2 years old.', 64, 2, '2020-05-19 13:12:52');
INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(65, 'Ticket 65', 'Ticket 65 will hopefully have a description one day... 

Ticket 65 will hopefully have a description one day... Ticket 65 will hopefully have a description one day... 
Ticket 65 will hopefully have a description one day...  ', 2, 1, 1, '2020-05-18 21:00:52', 1, '2020-05-21 03:29:52', 3, null, null, 3, null);
INSERT INTO comments VALUES(null, 'Remember how hyped were we for this movie.', 65, 3, '2020-05-20 14:49:52');
INSERT INTO comments VALUES(null, 'That moment when Marvel fooled us into believing Gamora was talking to Tony.', 65, 1, '2020-05-24 18:13:52');
INSERT INTO comments VALUES(null, 'Easily one of the best trailers of all time', 65, 1, '2020-05-24 21:19:52');
INSERT INTO comments VALUES(null, 'This  is the perfect 2nd trailer', 65, 2, '2020-05-23 23:27:52');
INSERT INTO comments VALUES(null, 'Who is watching and liking with me now', 65, 1, '2020-05-20 19:38:52');
INSERT INTO comments VALUES(null, 'I swear Thor’s cape is like the best thing in trailers (for me anyway) the way he walked and what his cape did is so cool and in the AOU trailer when it took up the whole screen 😍', 65, 1, '2020-05-23 20:18:52');
INSERT INTO comments VALUES(null, 'You didnt find this Trailer, the Trailer found you', 65, 1, '2020-05-20 12:22:52');
INSERT INTO comments VALUES(null, '*You cannot live with the ending of the movie........where did that bring you*








Back to the trailers.


Ctto.', 65, 3, '2020-05-26 06:30:52');
INSERT INTO comments VALUES(null, 'For me, Infinity War is better than Endgame.', 65, 1, '2020-05-23 12:51:52');
INSERT INTO comments VALUES(null, '"I am inevitable"


"and I am groot"', 65, 1, '2020-05-21 16:40:52');
INSERT INTO comments VALUES(null, '2020 : 


Tell me his name again : 


CORONA', 65, 2, '2020-05-24 14:48:52');
INSERT INTO comments VALUES(null, '0:26


Tony:Tell me his name again


YouTube caption:Santos', 65, 3, '2020-05-25 16:56:52');
INSERT INTO comments VALUES(null, 'The version of the ‘made-up names’ scene we got in this trailer is way way way better than the one in the film', 65, 3, '2020-05-22 13:23:52');
INSERT INTO comments VALUES(null, 'When u realised that all that happened under a random green room...', 65, 3, '2020-05-24 17:18:52');
INSERT INTO comments VALUES(null, 'love how they put a ton of peter at the end 😂', 65, 2, '2020-05-20 07:12:52');
INSERT INTO comments VALUES(null, 'When you see 43k dislikes


Its time to wipe out the disgrace half of mankind', 65, 1, '2020-05-24 09:45:52');
INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(66, 'Ticket 66', 'Ticket 66 will hopefully have a description one day... 

Ticket 66 will hopefully have a description one day... Ticket 66 will hopefully have a description one day... 
Ticket 66 will hopefully have a description one day...  ', 2, 1, 1, '2020-05-15 05:55:52', 1, '2020-05-19 14:55:52', 2, null, null, 1, null);
INSERT INTO comments VALUES(null, 'The captions say "we have what Dennis once" "and um, half of humanity will still exist"', 66, 1, '2020-05-21 03:12:52');
INSERT INTO comments VALUES(null, 'Whos here after the tragic spiderman news', 66, 2, '2020-05-18 18:31:52');
INSERT INTO comments VALUES(null, '"You speak groot?"


"Yes, it was an elective on Asgard"', 66, 3, '2020-05-19 07:07:52');
INSERT INTO comments VALUES(null, 'PLEASE IMAGINE CORONA VIRUS SAYING THANOS LINES 😂', 66, 3, '2020-05-18 18:02:52');
INSERT INTO comments VALUES(null, 'Bru I would be so mad if I was a wakanda warrior that died in the snap and then came back to life to die in endgame 😭😂', 66, 1, '2020-05-18 05:00:52');
INSERT INTO comments VALUES(null, 'Marvel to DC: 
"I hope they remember you. . . ."', 66, 1, '2020-05-16 10:21:52');
INSERT INTO comments VALUES(null, 'THANOS: I hope they remember you....








Marvel Fans: ALWAYS❤❤❤', 66, 3, '2020-05-17 12:51:52');
INSERT INTO comments VALUES(null, 'The entire time I knew him, he only ever had one goal. To wipe out half of the country’s finances.


If he gets all the electoral college votes, he could do it with the sign of an executive orders. “sound effect of paper being signed”


Just like that. 




Tell me his name again. 




Donald Trump.', 66, 2, '2020-05-16 19:06:52');
INSERT INTO comments VALUES(null, 'Hawkeye : I Retired For Like 5 Mins And This Purple Head Guy Shows Up.........', 66, 3, '2020-05-21 10:03:52');
INSERT INTO comments VALUES(null, 'You didnt find this Trailer, the Trailer found you', 66, 1, '2020-05-20 18:20:52');
INSERT INTO comments VALUES(null, 'Can we have a moment of silence for the people who will not be able to watch Avengers 5 because they got affected and ...', 66, 3, '2020-05-21 17:07:52');
INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(67, 'Ticket 67', 'Ticket 67 will hopefully have a description one day... 

Ticket 67 will hopefully have a description one day... Ticket 67 will hopefully have a description one day... 
Ticket 67 will hopefully have a description one day...  ', 2, 1, 2, '2020-05-12 21:28:52', 2, '2020-05-17 10:09:52', 3, null, null, 3, null);
INSERT INTO comments VALUES(null, 'When you have an injection 
1:37', 67, 2, '2020-05-20 14:00:52');
INSERT INTO comments VALUES(null, 'This trailer is so good that when I stop watching it for a while and come back to watch it again all the hype comes back from when it first got released', 67, 3, '2020-05-18 09:06:52');
INSERT INTO comments VALUES(null, '"Tell me his name again"










"Noobmaster69"', 67, 2, '2020-05-18 08:13:52');
INSERT INTO comments VALUES(null, 'I remember I literally screamed when Cap stopped Thanoss hand', 67, 2, '2020-05-16 12:09:52');
INSERT INTO comments VALUES(null, 'Marvel: I hope they remember you..


DC: The hell they won’t', 67, 1, '2020-05-13 23:30:52');
INSERT INTO comments VALUES(null, 'Im here to remind you that Infinity War is almost 2 years old.', 67, 1, '2020-05-19 19:20:52');
INSERT INTO comments VALUES(null, 'Someone: when goosebumps will occur??


Me:  when u are listening to avengers theme music!!!', 67, 1, '2020-05-15 23:13:52');
INSERT INTO comments VALUES(null, 'Who’s here after endgame?', 67, 1, '2020-05-18 11:33:52');
INSERT INTO comments VALUES(null, 'Mannn I remember this time back then the hype was reallll', 67, 1, '2020-05-15 18:24:52');
INSERT INTO comments VALUES(null, '“I don’t feel so good”


“I don’t wanna go Mr. Stark”


This was the saddest shit of all time', 67, 3, '2020-05-18 19:47:52');
INSERT INTO comments VALUES(null, 'I hope they remember you....




Me : I  still watch this trailer for him...', 67, 3, '2020-05-16 08:28:52');
INSERT INTO comments VALUES(null, 'Coronavirus: when Im done half of humanity will still exist.', 67, 1, '2020-05-20 12:05:52');
INSERT INTO comments VALUES(null, '2 year anniversary how fast time goes', 67, 1, '2020-05-19 07:07:52');
INSERT INTO comments VALUES(null, 'This trailer still gives me the chills down my spine 2020', 67, 1, '2020-05-14 02:11:52');
INSERT INTO comments VALUES(null, '-How many times would you like to watch Infinity War for the first time?


-14,000,605.


-How many can you watch?


-One.', 67, 2, '2020-05-14 04:01:52');
INSERT INTO comments VALUES(null, 'This trailer is full of mistakes scenes that never happened in the real movie', 67, 3, '2020-05-16 12:48:52');
INSERT INTO comments VALUES(null, 'Thanos: 
*fails*




Coronavirus: 
fine I’ll do it myself', 67, 3, '2020-05-18 14:35:52');
INSERT INTO comments VALUES(null, '1:48


Yep, thats me during college', 67, 3, '2020-05-20 11:27:52');
INSERT INTO comments VALUES(null, 'It’s called Creativity the conversation between Tony &amp; Gamoora(Tell me his name again Gamoora Replied Thanos) That never happened in whole movie...', 67, 3, '2020-05-17 19:54:52');
INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(68, 'Ticket 68', 'Ticket 68 will hopefully have a description one day... 

Ticket 68 will hopefully have a description one day... Ticket 68 will hopefully have a description one day... 
Ticket 68 will hopefully have a description one day...  ', 1, 3, 1, '2020-05-18 17:31:52', 1, '2020-05-20 19:56:52', 3, null, null, 3, null);
INSERT INTO comments VALUES(null, 'Im here to remind you that Infinity War is almost 2 years old.', 68, 3, '2020-05-20 09:40:52');
INSERT INTO comments VALUES(null, 'Mannn I remember this time back then the hype was reallll', 68, 2, '2020-05-26 08:37:52');
INSERT INTO comments VALUES(null, 'Imagine if they had killed iron man in this one.....', 68, 3, '2020-05-25 03:15:52');
INSERT INTO comments VALUES(null, '“I AM GROOT”


“I am Steve Rogers”', 68, 1, '2020-05-25 04:59:52');
INSERT INTO comments VALUES(null, '1:50
 just a loop button for me', 68, 2, '2020-05-25 03:05:52');
INSERT INTO comments VALUES(null, '(Avengers) Loki: I have an army.


Tony: We have a hulk.




(Infinity War) Loki: We have a hulk. 😆😭', 68, 1, '2020-05-23 13:25:52');
INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(69, 'Ticket 69', 'Ticket 69 will hopefully have a description one day... 

Ticket 69 will hopefully have a description one day... Ticket 69 will hopefully have a description one day... 
Ticket 69 will hopefully have a description one day...  ', 3, 2, 1, '2020-05-13 19:15:52', 1, '2020-05-19 03:52:52', 1, null, null, 3, null);
INSERT INTO comments VALUES(null, 'Kevin Fiege: There was an Idea..






James Gunn: To bring together a group of remarkable poeple..






Ryan Coogler: To see if we could become something more..






Jon Faverou: So when they needed us we could make the movies..






The Russos: That 
DC
 never could.. 😂😂!!', 69, 1, '2020-05-21 14:37:52');
INSERT INTO comments VALUES(null, 'Marvel: “I hope they remember you”


DC: ...', 69, 3, '2020-05-17 04:22:52');
INSERT INTO comments VALUES(null, 'This tralier still hits different', 69, 1, '2020-05-17 20:02:52');
INSERT INTO comments VALUES(null, 'Thanos: fails


Coronavirus: 
Fine, I’ll d9 it myself', 69, 3, '2020-05-18 08:14:52');
INSERT INTO comments VALUES(null, 'Iron Man Is still not dead tO Know why like  my comment', 69, 3, '2020-05-17 22:54:52');
INSERT INTO comments VALUES(null, '"You speak groot?"


"Yes, it was an elective on Asgard"', 69, 3, '2020-05-19 10:09:52');
INSERT INTO comments VALUES(null, 'I still love thors entrance in this movie and it still gives me goosebumbs', 69, 2, '2020-05-17 07:08:52');
INSERT INTO comments VALUES(null, 'Thanos: 
Fails






Coronavirus: Fine, Ill do it myself.', 69, 1, '2020-05-18 09:23:52');
INSERT INTO comments VALUES(null, '1:50
 just a loop button for me', 69, 2, '2020-05-15 05:14:52');
INSERT INTO comments VALUES(null, 'Two Years Ago today, it was very intense to watch. It still is amazing just watching it.', 69, 2, '2020-05-21 01:31:52');
INSERT INTO comments VALUES(null, 'Watching this trailer in 2118: I could this all day. Even today!!', 69, 2, '2020-05-15 05:04:52');
INSERT INTO comments VALUES(null, 'Remember when the soul stone was with Heimdall , but he ended up dying in less than  10 mins after the start .', 69, 3, '2020-05-15 07:11:52');
INSERT INTO comments VALUES(null, 'Thanos: fails


Coronavirus: 
Fine, I’ll d9 it myself', 69, 2, '2020-05-21 17:50:52');
INSERT INTO comments VALUES(null, '*You cannot live with the ending of the movie........where did that bring you*








Back to the trailers.


Ctto.', 69, 1, '2020-05-17 12:17:52');
INSERT INTO comments VALUES(null, 'Easily one of the best trailers of all time', 69, 1, '2020-05-15 05:54:52');
INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(70, 'Ticket 70', 'Ticket 70 will hopefully have a description one day... 

Ticket 70 will hopefully have a description one day... Ticket 70 will hopefully have a description one day... 
Ticket 70 will hopefully have a description one day...  ', 2, 1, 2, '2020-05-15 07:21:52', 3, '2020-05-23 01:19:52', 2, null, null, 1, null);
INSERT INTO comments VALUES(null, 'Thanos: Stark!


Tony Stark: You know me!!


Thanos: Youre not the only one cursed with knowledge.


Tony Stark: My only curse is you.', 70, 3, '2020-05-18 01:23:52');
INSERT INTO comments VALUES(null, 'PLEASE IMAGINE CORONA VIRUS SAYING THANOS LINES 😂', 70, 3, '2020-05-17 19:01:52');
INSERT INTO comments VALUES(null, 'Pessimist: half empty 


Optimist: half full


Thanos: perfectly balanced as all things should', 70, 1, '2020-05-19 08:50:52');
INSERT INTO comments VALUES(null, '1:45
 still gives me goosebumps', 70, 1, '2020-05-21 05:37:52');
INSERT INTO comments VALUES(null, 'I feel like this happened yesterday.', 70, 3, '2020-05-20 02:41:52');
INSERT INTO comments VALUES(null, 'Remember when we thought that the hulk buster was Tony', 70, 1, '2020-05-19 11:53:52');
INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(71, 'Ticket 71', 'Ticket 71 will hopefully have a description one day... 

Ticket 71 will hopefully have a description one day... Ticket 71 will hopefully have a description one day... 
Ticket 71 will hopefully have a description one day...  ', 1, 3, 3, '2020-05-18 18:17:52', 1, '2020-05-23 03:58:52', 2, null, null, 1, null);
INSERT INTO comments VALUES(null, 'You cannot live with the ending of the movie......where did that bring you




Back to the trailers.', 71, 3, '2020-05-20 12:57:52');
INSERT INTO comments VALUES(null, 'Thanos: Fails


Covid 19: I will show you how its done when I wipe out half of humanity.', 71, 2, '2020-05-22 04:34:52');
INSERT INTO comments VALUES(null, 'Ha! i remember seeing cap holding The infinity gauglet and almost passing out, now you imagine how i felt in andgame with cap lifting mjonir😂 If i could choose a super power, it would be the power to watch endgame and infity war again for the first time!', 71, 3, '2020-05-20 00:09:52');
INSERT INTO comments VALUES(null, 'Thanos: 
*fails*




Coronavirus: 
fine I’ll do it myself', 71, 2, '2020-05-24 00:00:52');
INSERT INTO comments VALUES(null, '1:46
 Remember when everyone thought that Caps gonna die', 71, 3, '2020-05-20 11:31:52');
INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(72, 'Ticket 72', 'Ticket 72 will hopefully have a description one day... 

Ticket 72 will hopefully have a description one day... Ticket 72 will hopefully have a description one day... 
Ticket 72 will hopefully have a description one day...  ', 3, 1, 3, '2020-05-13 03:21:52', 1, '2020-05-17 16:40:52', 2, null, null, 3, null);
INSERT INTO comments VALUES(null, 'Y’all remember all the theories', 72, 3, '2020-05-17 01:07:52');
INSERT INTO comments VALUES(null, 'Mannn I remember this time back then the hype was reallll', 72, 2, '2020-05-19 21:16:52');
INSERT INTO comments VALUES(null, '“We got one advantage... he’s coming to us.”








Still didn’t matter.', 72, 1, '2020-05-20 10:10:52');
INSERT INTO comments VALUES(null, '1:28
 onwards


Oh man, its been 2 years and Im still getting getting the goosebumps....', 72, 3, '2020-05-14 14:14:52');
INSERT INTO comments VALUES(null, 'Marvel: “I hope they remember you”


DC: ...', 72, 2, '2020-05-15 15:03:52');
INSERT INTO comments VALUES(null, 'Pessimist: half empty 


Optimist: half full


Thanos: perfectly balanced as all things should', 72, 1, '2020-05-18 18:18:52');
INSERT INTO comments VALUES(null, 'well this trailer give us the clue the title about the part 2 of the avengers infinity war.. but we dont realize it!!... well done marvel...




at minute 
1:10
 "The end is near"', 72, 3, '2020-05-14 06:51:52');
INSERT INTO comments VALUES(null, '1:45
 still gives me goosebumps', 72, 1, '2020-05-20 07:06:52');
INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(73, 'Ticket 73', 'Ticket 73 will hopefully have a description one day... 

Ticket 73 will hopefully have a description one day... Ticket 73 will hopefully have a description one day... 
Ticket 73 will hopefully have a description one day...  ', 1, 1, 1, '2020-05-13 10:29:52', 2, '2020-05-15 00:13:52', 2, null, null, 2, null);
INSERT INTO comments VALUES(null, 'Avengers:Saving New York




Avengers Age Of Ultron:saving the world




Avengers Infinity War:Saving The Galaxy 




Avengers Endgame:Avenging the Galaxy', 73, 2, '2020-05-19 19:17:52');
INSERT INTO comments VALUES(null, '2 years ago I can’t believe it , feels like the other day 😭', 73, 2, '2020-05-20 15:08:52');
INSERT INTO comments VALUES(null, 'who is here watching in September 2019 ?', 73, 3, '2020-05-15 03:13:52');
INSERT INTO comments VALUES(null, 'The best movie in MCU.', 73, 2, '2020-05-19 12:09:52');
INSERT INTO comments VALUES(null, '1:48


Yep, thats me during college', 73, 1, '2020-05-17 22:56:52');
INSERT INTO comments VALUES(null, 'Thanos: fails


Coronavirus: 
Fine, I’ll d9 it myself', 73, 3, '2020-05-18 09:51:52');
INSERT INTO comments VALUES(null, 'Bro


Thanos made this virus


Im here after6500 deaths


This is 16th March 2020', 73, 2, '2020-05-14 13:28:52');
INSERT INTO comments VALUES(null, 'The best movie in MCU.', 73, 2, '2020-05-17 02:39:52');
INSERT INTO comments VALUES(null, 'Everyone mad about star lord


Atleast he aimed for the head', 73, 1, '2020-05-15 08:48:52');
INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(74, 'Ticket 74', 'Ticket 74 will hopefully have a description one day... 

Ticket 74 will hopefully have a description one day... Ticket 74 will hopefully have a description one day... 
Ticket 74 will hopefully have a description one day...  ', 2, 2, 3, '2020-05-16 12:51:52', 1, '2020-05-20 23:48:52', 3, '2020-05-19 15:45:52', 1, 4, 2);
INSERT INTO comments VALUES(null, '"I am inevitable"


"and I am groot"', 74, 1, '2020-05-19 11:11:52');
INSERT INTO comments VALUES(null, 'This trailer is still EPIC', 74, 2, '2020-05-19 09:09:52');
INSERT INTO comments VALUES(null, 'One thing worse than a breakup














Waiting for Avengers 4', 74, 3, '2020-05-17 23:10:52');
INSERT INTO comments VALUES(null, 'Bru I would be so mad if I was a wakanda warrior that died in the snap and then came back to life to die in endgame 😭😂', 74, 2, '2020-05-18 12:20:52');
INSERT INTO comments VALUES(null, 'Who is here in Dec 2019..', 74, 1, '2020-05-20 20:07:52');
INSERT INTO comments VALUES(null, 'Star Lord- Where Is Gamora?


Iron-Man- I’ll Do You One Better, Who Is Gamora?


Drax- I’ll Do You One Better, WHY IS GAMORA? 😂', 74, 2, '2020-05-23 10:50:52');
INSERT INTO comments VALUES(null, 'Best most popular trailer forever 🖤


Who still watching in December 2019?', 74, 3, '2020-05-24 03:24:52');
INSERT INTO comments VALUES(null, 'LOL!! Dr. Strange is being tortured again?! The dude can’t catch a break.






I guess it’s time to bargain', 74, 2, '2020-05-23 21:03:52');
INSERT INTO comments VALUES(null, 'Can we have a moment of silence for the people who will not be able to watch Avengers 5 because they got affected and ...', 74, 3, '2020-05-23 21:08:52');
INSERT INTO comments VALUES(null, 'So its December 2019 and you just rewatched the first IW trailer bc Black widow is giving you a trip down memory lane. And now youre here bc you just couldnt help yourself. 


Well...see you in the endgame trailer comments bc we both know youll skip over CM.', 74, 2, '2020-05-19 19:44:52');
INSERT INTO comments VALUES(null, 'Gamora: "The entire time I knew him he only ever had one goal. To be number one on trending. If he is released at the end of November, he will do it in a matter of seconds". 




Iron Man: "Tell me his name again"




Gamora: 
Avengers 4 trailer', 74, 2, '2020-05-22 04:17:52');
INSERT INTO comments VALUES(null, 'Imagine if they had killed iron man in this one.....', 74, 2, '2020-05-22 19:11:52');
INSERT INTO comments VALUES(null, 'I am here on year 2099 and we still watch this trailer', 74, 2, '2020-05-23 06:11:52');
INSERT INTO comments VALUES(null, 'Who is here in Dec 2019..', 74, 3, '2020-05-21 06:55:52');
INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(75, 'Ticket 75', 'Ticket 75 will hopefully have a description one day... 

Ticket 75 will hopefully have a description one day... Ticket 75 will hopefully have a description one day... 
Ticket 75 will hopefully have a description one day...  ', 1, 1, 2, '2020-05-12 01:06:52', 2, '2020-05-16 00:02:52', 1, null, null, 3, null);
INSERT INTO comments VALUES(null, 'Fun fact: Final scene of trailer cap holding off thanos gauntlet with 2 infinity stones. In the movie his gauntlet was 4 stones. Marvel did well with this teaser.', 75, 2, '2020-05-18 03:37:52');
INSERT INTO comments VALUES(null, 'Can we have a moment of silence for the people who will not be able to watch Avengers 5 because they got affected and ...', 75, 2, '2020-05-13 07:44:52');
INSERT INTO comments VALUES(null, 'Easily Marvels best and most hype trailer ever', 75, 2, '2020-05-19 04:04:52');
INSERT INTO comments VALUES(null, 'i remember being so hyped to see a gamora x tony convo for it to just be edited for the trailer', 75, 1, '2020-05-18 07:31:52');
INSERT INTO comments VALUES(null, 'I wanna see Stan Lee come in with an eraser and kill Thanos', 75, 2, '2020-05-14 06:49:52');
INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(76, 'Ticket 76', 'Ticket 76 will hopefully have a description one day... 

Ticket 76 will hopefully have a description one day... Ticket 76 will hopefully have a description one day... 
Ticket 76 will hopefully have a description one day...  ', 2, 2, 3, '2020-05-12 06:43:52', 2, '2020-05-15 12:46:52', 3, null, null, 1, null);
INSERT INTO comments VALUES(null, 'love how they put a ton of peter at the end 😂', 76, 1, '2020-05-17 03:38:52');
INSERT INTO comments VALUES(null, '1:45
 y’all remember when we thought that this was Cap’s last stand? Lol', 76, 1, '2020-05-13 12:31:52');
INSERT INTO comments VALUES(null, 'Marvel : Lets talk about plans here......first kill half heros ......again give life to them in endgame


Disney: WOW!!!!!...', 76, 3, '2020-05-19 14:02:52');
INSERT INTO comments VALUES(null, 'who is watching after AVENGERS ENDGAME', 76, 3, '2020-05-17 10:57:52');
INSERT INTO comments VALUES(null, '"You speak groot?"


"Yes, it was an elective on Asgard"', 76, 3, '2020-05-18 16:43:52');
INSERT INTO comments VALUES(null, 'You cannot live with the ending of the movie......where did that bring you




Back to the trailers.', 76, 3, '2020-05-13 18:38:52');
INSERT INTO comments VALUES(null, 'When you dont know what to do so you start watching old trailers*', 76, 2, '2020-05-18 04:55:52');
INSERT INTO comments VALUES(null, 'Bru I would be so mad if I was a wakanda warrior that died in the snap and then came back to life to die in endgame 😭😂', 76, 2, '2020-05-19 21:38:52');
INSERT INTO comments VALUES(null, 'I feel like this happened yesterday.', 76, 2, '2020-05-18 06:14:52');
INSERT INTO comments VALUES(null, '1:44
 my dad when he sees me touching the thermostat', 76, 2, '2020-05-16 00:48:52');
INSERT INTO comments VALUES(null, 'I wanna go back in time and show this to a Marvel fan in the 90s. I feel like their first question would be "wheres Wolverine?"', 76, 1, '2020-05-16 04:55:52');
INSERT INTO comments VALUES(null, '0:26


Tony:Tell me his name again


YouTube caption:Santos', 76, 1, '2020-05-15 20:50:52');
INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(77, 'Ticket 77', 'Ticket 77 will hopefully have a description one day... 

Ticket 77 will hopefully have a description one day... Ticket 77 will hopefully have a description one day... 
Ticket 77 will hopefully have a description one day...  ', 3, 2, 2, '2020-05-14 03:21:52', 2, '2020-05-17 12:31:52', 1, null, null, 1, null);
INSERT INTO comments VALUES(null, 'I Wish I could time travel back to the hype of this!', 77, 1, '2020-05-19 20:49:52');
INSERT INTO comments VALUES(null, 'Bru I would be so mad if I was a wakanda warrior that died in the snap and then came back to life to die in endgame 😭😂', 77, 3, '2020-05-19 23:47:52');
INSERT INTO comments VALUES(null, '00:28
 goosebumps', 77, 3, '2020-05-17 12:06:52');
INSERT INTO comments VALUES(null, 'Remember when the soul stone was with Heimdall , but he ended up dying in less than  10 mins after the start .', 77, 3, '2020-05-15 19:10:52');
INSERT INTO comments VALUES(null, 'I know many of you are here after watching the movie 😂😂', 77, 3, '2020-05-16 05:20:52');
INSERT INTO comments VALUES(null, '2020 : 


Tell me his name again : 


CORONA', 77, 3, '2020-05-18 09:28:52');
INSERT INTO comments VALUES(null, 'Its already second month of 2020 and idk why Im I still watching it.', 77, 1, '2020-05-20 16:26:52');
INSERT INTO comments VALUES(null, 'who’s here still depressed about endgame', 77, 2, '2020-05-18 21:13:52');
INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(78, 'Ticket 78', 'Ticket 78 will hopefully have a description one day... 

Ticket 78 will hopefully have a description one day... Ticket 78 will hopefully have a description one day... 
Ticket 78 will hopefully have a description one day...  ', 2, 2, 1, '2020-05-16 06:01:52', 1, '2020-05-20 01:33:52', 2, null, null, 1, null);
INSERT INTO comments VALUES(null, '“How long were you standing here?”




“For an hour”', 78, 2, '2020-05-17 23:25:52');
INSERT INTO comments VALUES(null, 'Whos here after the tragic spiderman news', 78, 2, '2020-05-20 23:39:52');
INSERT INTO comments VALUES(null, '1:38
 I love how Doctor Stranges scream can be heard echoing through the trailer', 78, 1, '2020-05-19 23:15:52');
INSERT INTO comments VALUES(null, '“I hope they remember you” Don’t worry mr.Stark I will never forget U', 78, 2, '2020-05-17 08:38:52');
INSERT INTO comments VALUES(null, 'Anyone  still watching in october 2019', 78, 3, '2020-05-21 15:20:52');
INSERT INTO comments VALUES(null, 'This movie looks great. I can’t wait for it to come out.', 78, 3, '2020-05-22 03:29:52');
INSERT INTO comments VALUES(null, 'INFINITY WAR:- SPIDER MAN DIES IN TONYS ARMS


ENDGAME :- TONY DIED IN FRONT OF SPIDERMAN


I HATE THIS PARALLELS', 78, 3, '2020-05-18 10:42:52');
INSERT INTO comments VALUES(null, 'Bru I would be so mad if I was a wakanda warrior that died in the snap and then came back to life to die in endgame 😭😂', 78, 3, '2020-05-22 04:18:52');
INSERT INTO comments VALUES(null, 'Cant count the number of times Ive seen this trailer, movies been out more than 2 years. Endgame a year ago already. 






I can do this all day.', 78, 3, '2020-05-20 01:17:52');
INSERT INTO comments VALUES(null, '1:48


Yep, thats me during college', 78, 3, '2020-05-21 12:41:52');
INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(79, 'Ticket 79', 'Ticket 79 will hopefully have a description one day... 

Ticket 79 will hopefully have a description one day... Ticket 79 will hopefully have a description one day... 
Ticket 79 will hopefully have a description one day...  ', 3, 2, 3, '2020-05-14 17:45:52', 3, '2020-05-18 10:31:52', 3, null, null, 1, null);
INSERT INTO comments VALUES(null, 'Cant count the number of times Ive seen this trailer, movies been out more than 2 years. Endgame a year ago already. 






I can do this all day.', 79, 2, '2020-05-21 05:43:52');
INSERT INTO comments VALUES(null, 'I know many of you are here after watching the movie 😂😂', 79, 1, '2020-05-20 13:19:52');
INSERT INTO comments VALUES(null, '00:28
 goosebumps', 79, 3, '2020-05-21 09:33:52');
INSERT INTO comments VALUES(null, 'love how they put a ton of peter at the end 😂', 79, 2, '2020-05-21 03:17:52');
INSERT INTO comments VALUES(null, 'Remember the hype for this movie? It all seems so far away now.', 79, 2, '2020-05-17 01:14:52');
INSERT INTO comments VALUES(null, 'You cannot live with the ending of the movie......where did that bring you




Back to the trailers.', 79, 1, '2020-05-19 13:43:52');
INSERT INTO comments VALUES(null, 'I’m still getting chills watching this. It’s 2020. Every Thanos line is chilling.', 79, 3, '2020-05-21 17:28:52');
INSERT INTO comments VALUES(null, '1:10
 Did anyone see thor without his head?', 79, 2, '2020-05-22 17:34:52');
INSERT INTO comments VALUES(null, 'The entire time I knew him, he only ever had one goal. To wipe out half of the country’s finances.


If he gets all the electoral college votes, he could do it with the sign of an executive orders. “sound effect of paper being signed”


Just like that. 




Tell me his name again. 




Donald Trump.', 79, 3, '2020-05-17 00:22:52');
INSERT INTO comments VALUES(null, 'Coronavirus after wiping out half the population of China: “Perfectly balanced as all things should be”', 79, 3, '2020-05-18 01:31:52');
INSERT INTO comments VALUES(null, '“We got one advantage... he’s coming to us.”








Still didn’t matter.', 79, 3, '2020-05-21 22:18:52');
INSERT INTO comments VALUES(null, 'When u realised that all that happened under a random green room...', 79, 2, '2020-05-17 22:11:52');
INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(80, 'Ticket 80', 'Ticket 80 will hopefully have a description one day... 

Ticket 80 will hopefully have a description one day... Ticket 80 will hopefully have a description one day... 
Ticket 80 will hopefully have a description one day...  ', 2, 2, 1, '2020-05-18 10:27:52', 2, '2020-05-19 19:04:52', 3, '2020-05-22 18:24:52', 2, 4, 1);
INSERT INTO comments VALUES(null, 'DC: See here, marvel we made a movie with all super heros!


Marvel: Hold my beer.', 80, 1, '2020-05-20 07:18:52');
INSERT INTO comments VALUES(null, 'Chris evans , chris pratt, chris hemsworth in one movie.










This is CHRISis', 80, 3, '2020-05-19 13:00:52');
INSERT INTO comments VALUES(null, '“I hope they remember you” Don’t worry mr.Stark I will never forget U', 80, 1, '2020-05-23 08:55:52');
INSERT INTO comments VALUES(null, 'The media to Disney: "how much money did you profit off of Avengers:Infinity War and Endgame?"




Disney:..."Yes"....', 80, 1, '2020-05-24 16:17:52');
INSERT INTO comments VALUES(null, 'Marvel: “I hope they remember you”


DC: ...', 80, 3, '2020-05-23 20:51:52');
INSERT INTO comments VALUES(null, 'Wow this was really two years ago who else is here wit me', 80, 3, '2020-05-24 13:53:52');
INSERT INTO comments VALUES(null, '“I don’t feel so good”


“I don’t wanna go Mr. Stark”


This was the saddest shit of all time', 80, 1, '2020-05-22 10:38:52');
INSERT INTO comments VALUES(null, '#1 Trending in Wakanda', 80, 3, '2020-05-23 11:57:52');
INSERT INTO comments VALUES(null, 'Avengers:Saving New York




Avengers Age Of Ultron:saving the world




Avengers Infinity War:Saving The Galaxy 




Avengers Endgame:Avenging the Galaxy', 80, 1, '2020-05-22 22:10:52');
INSERT INTO comments VALUES(null, 'Just noticed that they edited the other infinity stones out for that scene at 
1:45
 to not spoil the movie in the trailer. In the actual scene Thanos has all the stones except the mind stone.', 80, 3, '2020-05-25 02:27:52');
INSERT INTO comments VALUES(null, 'The entire time I knew him, he only ever had one goal. To wipe out half of the country’s finances.


If he gets all the electoral college votes, he could do it with the sign of an executive orders. “sound effect of paper being signed”


Just like that. 




Tell me his name again. 




Donald Trump.', 80, 2, '2020-05-23 19:03:52');
INSERT INTO comments VALUES(null, 'Easily one of the best trailers of all time', 80, 3, '2020-05-23 13:33:52');
INSERT INTO comments VALUES(null, 'who is here watching in September 2019 ?', 80, 3, '2020-05-25 23:41:52');
INSERT INTO comments VALUES(null, 'Here after endgame. Still believing that this is the greatest trailer ever made in cinematic history', 80, 1, '2020-05-19 16:37:52');
INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(81, 'Ticket 81', 'Ticket 81 will hopefully have a description one day... 

Ticket 81 will hopefully have a description one day... Ticket 81 will hopefully have a description one day... 
Ticket 81 will hopefully have a description one day...  ', 1, 1, 1, '2020-05-17 16:48:52', 3, '2020-05-19 17:20:52', 1, null, null, 1, null);
INSERT INTO comments VALUES(null, 'An south Indian Tamil film created a record by beatings avengers infinity war trailer. 














Bigilleeeeeeyyyyyy', 81, 2, '2020-05-21 17:48:52');
INSERT INTO comments VALUES(null, 'Here after endgame. Still believing that this is the greatest trailer ever made in cinematic history', 81, 2, '2020-05-18 20:01:52');
INSERT INTO comments VALUES(null, 'Who’s here after endgame?', 81, 1, '2020-05-19 19:08:52');
INSERT INTO comments VALUES(null, 'The entire time I knew him, he only ever had one goal. To wipe out half of the country’s finances.


If he gets all the electoral college votes, he could do it with the sign of an executive orders. “sound effect of paper being signed”


Just like that. 




Tell me his name again. 




Donald Trump.', 81, 2, '2020-05-19 20:53:52');
INSERT INTO comments VALUES(null, 'Still watching after endgame', 81, 1, '2020-05-21 06:24:52');
INSERT INTO comments VALUES(null, '0:26


Tony:Tell me his name again


YouTube caption:Santos', 81, 2, '2020-05-20 01:32:52');
INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(82, 'Ticket 82', 'Ticket 82 will hopefully have a description one day... 

Ticket 82 will hopefully have a description one day... Ticket 82 will hopefully have a description one day... 
Ticket 82 will hopefully have a description one day...  ', 3, 2, 1, '2020-05-17 12:30:52', 2, '2020-05-20 19:15:52', 3, null, null, 1, null);
INSERT INTO comments VALUES(null, 'Iron man: We got one advantage: hes coming to us.


Shows Iron man flying after a spaceship thats 
LEAVING
 earth', 82, 2, '2020-05-22 10:46:52');
INSERT INTO comments VALUES(null, 'Whos here after watching Avengers: Endgame ?', 82, 2, '2020-05-24 11:50:52');
INSERT INTO comments VALUES(null, 'I feel like this happened yesterday.', 82, 2, '2020-05-21 12:00:52');
INSERT INTO comments VALUES(null, 'When you see 43k dislikes


Its time to wipe out the disgrace half of mankind', 82, 1, '2020-05-21 07:33:52');
INSERT INTO comments VALUES(null, 'Back to this trailer after endgame...still gives goosebumps...', 82, 1, '2020-05-25 11:56:52');
INSERT INTO comments VALUES(null, 'Everyone mad about star lord


Atleast he aimed for the head', 82, 2, '2020-05-20 09:02:52');
INSERT INTO comments VALUES(null, 'This tralier still hits different', 82, 1, '2020-05-20 12:30:52');
INSERT INTO comments VALUES(null, 'Thanos: When I’m done..




Captions: and um..', 82, 3, '2020-05-18 23:23:52');
INSERT INTO comments VALUES(null, '2 year anniversary how fast time goes', 82, 1, '2020-05-20 08:20:52');
INSERT INTO comments VALUES(null, 'Who is watching and liking with me now', 82, 1, '2020-05-19 02:18:52');
INSERT INTO comments VALUES(null, 'Best trailer, Ive ever seen. it still feels is great.', 82, 2, '2020-05-20 02:47:52');
INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(83, 'Ticket 83', 'Ticket 83 will hopefully have a description one day... 

Ticket 83 will hopefully have a description one day... Ticket 83 will hopefully have a description one day... 
Ticket 83 will hopefully have a description one day...  ', 1, 3, 3, '2020-05-18 13:05:52', 3, '2020-05-21 16:54:52', 1, null, null, 3, null);
INSERT INTO comments VALUES(null, '“How many times are you going to watch that trailer?”




Me : “I could do this all day”', 83, 2, '2020-05-23 18:12:52');
INSERT INTO comments VALUES(null, 'Who is here after Spiderman is no longer in MCU?', 83, 1, '2020-05-22 19:31:52');
INSERT INTO comments VALUES(null, 'Back to this trailer after endgame...still gives goosebumps...', 83, 2, '2020-05-20 06:18:52');
INSERT INTO comments VALUES(null, '0:45
 "so thats what we use" why did tony sound a bit Scottish when he said use? or is it just me?', 83, 2, '2020-05-24 07:07:52');
INSERT INTO comments VALUES(null, '“How long were you standing here?”




“For an hour”', 83, 2, '2020-05-26 04:00:52');
INSERT INTO comments VALUES(null, '"Your choices were him or a tree"', 83, 1, '2020-05-20 20:23:52');
INSERT INTO comments VALUES(null, '1:11
 Coronavirus Thanos:The end is near...', 83, 1, '2020-05-26 03:51:52');
INSERT INTO comments VALUES(null, 'Loki: 
brings Thanos’ corpse to the avengers




Everyone: “Holy shit, how’d you do it?!”




Loki: “Simple. I turned myself into an infinity stone. Because I know how much Thanos loves infinity stones. So he went to pick up the infinity stone to admire it, and then I turned back into myself and was like, “BLAAHH it’s me!”, and I stabbed him.”




Thor: “That’s even better than my ‘get help’ plan, brother.”', 83, 3, '2020-05-24 12:06:52');
INSERT INTO comments VALUES(null, 'It’s called Creativity the conversation between Tony &amp; Gamoora(Tell me his name again Gamoora Replied Thanos) That never happened in whole movie...', 83, 3, '2020-05-24 07:27:52');
INSERT INTO comments VALUES(null, '"I am inevitable"


"and I am groot"', 83, 1, '2020-05-22 00:48:52');
INSERT INTO comments VALUES(null, 'This is the best ever movie trailer in the world.', 83, 2, '2020-05-23 15:40:52');
INSERT INTO comments VALUES(null, '2:08
 no, not anymore you`re not :(', 83, 1, '2020-05-26 07:27:52');
INSERT INTO comments VALUES(null, 'Iron man: We got one advantage: hes coming to us.


Shows Iron man flying after a spaceship thats 
LEAVING
 earth', 83, 2, '2020-05-20 13:29:52');
INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(84, 'Ticket 84', 'Ticket 84 will hopefully have a description one day... 

Ticket 84 will hopefully have a description one day... Ticket 84 will hopefully have a description one day... 
Ticket 84 will hopefully have a description one day...  ', 1, 1, 3, '2020-05-13 11:47:52', 1, '2020-05-18 10:12:52', 1, null, null, 2, null);
INSERT INTO comments VALUES(null, 'Iron Man : Tell me his name again             


Gamora : Covid-19! 




(BGM rolls)', 84, 2, '2020-05-18 02:50:52');
INSERT INTO comments VALUES(null, 'who’s here still depressed about endgame', 84, 1, '2020-05-20 22:23:52');
INSERT INTO comments VALUES(null, 'So 


You have watched endgame and now you are rewatching all the trailers of various MCU films', 84, 2, '2020-05-15 23:05:52');
INSERT INTO comments VALUES(null, '"I hope they remember you" RIP Tony ❤3000', 84, 3, '2020-05-19 16:03:52');
INSERT INTO comments VALUES(null, 'The best movie in MCU.', 84, 3, '2020-05-20 04:15:52');
INSERT INTO comments VALUES(null, 'No matter how many times I watch this 
1:27
 will always give me goosebumps and make me tear up a bit', 84, 3, '2020-05-17 00:36:52');
INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(85, 'Ticket 85', 'Ticket 85 will hopefully have a description one day... 

Ticket 85 will hopefully have a description one day... Ticket 85 will hopefully have a description one day... 
Ticket 85 will hopefully have a description one day...  ', 2, 3, 2, '2020-05-14 03:17:52', 1, '2020-05-20 06:05:52', 1, null, null, 2, null);
INSERT INTO comments VALUES(null, '1:38
 I love how Doctor Stranges scream can be heard echoing through the trailer', 85, 3, '2020-05-21 01:38:52');
INSERT INTO comments VALUES(null, 'Whos here after Endgame?', 85, 2, '2020-05-17 22:53:52');
INSERT INTO comments VALUES(null, 'It’s 2020 and this trailer is still giving me goosebumps', 85, 1, '2020-05-16 11:41:52');
INSERT INTO comments VALUES(null, 'Who’s here after avengers 4 trailer ‼️‼️‼️🔥🔥🔥🔥🔥🎉', 85, 3, '2020-05-19 10:24:52');
INSERT INTO comments VALUES(null, 'Remember when people thought Cap was the soul stone because of his eyes....', 85, 1, '2020-05-18 09:45:52');
INSERT INTO comments VALUES(null, '2 years ago I can’t believe it , feels like the other day 😭', 85, 3, '2020-05-19 10:45:52');
INSERT INTO comments VALUES(null, '1:48


Yep, thats me during college', 85, 1, '2020-05-18 14:41:52');
INSERT INTO comments VALUES(null, 'Remember when we waited so long time to see infinity war and now endgame is exit 5 months ago', 85, 1, '2020-05-18 22:13:52');
INSERT INTO comments VALUES(null, 'who is here watching in September 2019 ?', 85, 3, '2020-05-22 04:01:52');
INSERT INTO comments VALUES(null, '1:46
 Remember when everyone thought that Caps gonna die', 85, 1, '2020-05-20 19:12:52');
INSERT INTO comments VALUES(null, 'love how they put a ton of peter at the end 😂', 85, 2, '2020-05-17 05:03:52');
INSERT INTO comments VALUES(null, 'We have one advantage, thanos is coming to us. *flies towards Thanos’ ship', 85, 3, '2020-05-21 03:54:52');
INSERT INTO comments VALUES(null, 'The captions say "we have what Dennis once" "and um, half of humanity will still exist"', 85, 1, '2020-05-15 17:16:52');
INSERT INTO comments VALUES(null, 'It’s 2020 and this trailer is still giving me goosebumps', 85, 2, '2020-05-15 17:07:52');
INSERT INTO comments VALUES(null, '1:50
 just a loop button for me', 85, 2, '2020-05-20 22:27:52');
INSERT INTO comments VALUES(null, '2020 : 


Tell me his name again : 


CORONA', 85, 1, '2020-05-18 12:14:52');
INSERT INTO comments VALUES(null, '“we got one advantage he’s coming to us, we have what thanos wants so that’s what we’ll use” see how they showed the time stone when tony says that?', 85, 1, '2020-05-19 03:18:52');
INSERT INTO comments VALUES(null, 'You didnt find this Trailer, the Trailer found you', 85, 1, '2020-05-16 21:41:52');
INSERT INTO comments VALUES(null, 'The entire time I knew him, he only ever had one goal. To wipe out half of the country’s finances.


If he gets all the electoral college votes, he could do it with the sign of an executive orders. “sound effect of paper being signed”


Just like that. 




Tell me his name again. 




Donald Trump.', 85, 1, '2020-05-16 09:25:52');
INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(86, 'Ticket 86', 'Ticket 86 will hopefully have a description one day... 

Ticket 86 will hopefully have a description one day... Ticket 86 will hopefully have a description one day... 
Ticket 86 will hopefully have a description one day...  ', 1, 1, 3, '2020-05-18 10:44:52', 3, '2020-05-21 04:06:52', 3, null, null, 2, null);
INSERT INTO comments VALUES(null, 'This does put a smile on my face', 86, 3, '2020-05-21 07:41:52');
INSERT INTO comments VALUES(null, 'Avengers:Saving New York




Avengers Age Of Ultron:saving the world




Avengers Infinity War:Saving The Galaxy 




Avengers Endgame:Avenging the Galaxy', 86, 3, '2020-05-24 04:24:52');
INSERT INTO comments VALUES(null, 'lets be honest, you came here because you miss the hype too', 86, 2, '2020-05-20 12:36:52');
INSERT INTO comments VALUES(null, 'Infinity War is still my top MCU movie even after Endgame', 86, 3, '2020-05-22 21:23:52');
INSERT INTO comments VALUES(null, 'This trailer is so good that when I stop watching it for a while and come back to watch it again all the hype comes back from when it first got released', 86, 2, '2020-05-24 11:49:52');
INSERT INTO comments VALUES(null, 'This trailer is so good that when I stop watching it for a while and come back to watch it again all the hype comes back from when it first got released', 86, 1, '2020-05-24 16:27:52');
INSERT INTO comments VALUES(null, 'This trailer is so good that when I stop watching it for a while and come back to watch it again all the hype comes back from when it first got released', 86, 3, '2020-05-19 18:44:52');
INSERT INTO comments VALUES(null, 'Marvel : Lets talk about plans here......first kill half heros ......again give life to them in endgame


Disney: WOW!!!!!...', 86, 1, '2020-05-22 09:57:52');
INSERT INTO comments VALUES(null, 'Just hearing the Guardians talking to the other Avengers is enough to make me moister than an oyster', 86, 2, '2020-05-24 18:27:52');
INSERT INTO comments VALUES(null, 'The trailers and TV spots of Infinity War &amp; Endgame never get old.', 86, 1, '2020-05-25 00:24:52');
INSERT INTO comments VALUES(null, 'I wish Tony and Gamora would have actually talked in the MCU, even for a single scene.', 86, 3, '2020-05-19 16:38:52');
INSERT INTO comments VALUES(null, 'bro the fact that this trailer is almost at a 100 million views', 86, 1, '2020-05-21 19:36:52');
INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(87, 'Ticket 87', 'Ticket 87 will hopefully have a description one day... 

Ticket 87 will hopefully have a description one day... Ticket 87 will hopefully have a description one day... 
Ticket 87 will hopefully have a description one day...  ', 1, 1, 3, '2020-05-15 21:52:52', 1, '2020-05-23 19:02:52', 3, null, null, 3, null);
INSERT INTO comments VALUES(null, 'Ha! i remember seeing cap holding The infinity gauglet and almost passing out, now you imagine how i felt in andgame with cap lifting mjonir😂 If i could choose a super power, it would be the power to watch endgame and infity war again for the first time!', 87, 3, '2020-05-19 16:55:52');
INSERT INTO comments VALUES(null, 'Imagine if they had killed iron man in this one.....', 87, 2, '2020-05-22 23:24:52');
INSERT INTO comments VALUES(null, 'Happy 2nd Anniversary to this, and to those who are affected by the CoronaVirus, and who are not, be sure to wash your hands and stay home and be safe', 87, 1, '2020-05-23 20:02:52');
INSERT INTO comments VALUES(null, '"If I tell you what happens, it wont happen"', 87, 3, '2020-05-23 20:54:52');
INSERT INTO comments VALUES(null, 'You cannot live with the ending of the movie......where did that bring you




Back to the trailers.', 87, 3, '2020-05-17 07:38:52');
INSERT INTO comments VALUES(null, '2019 December (black widow trailer)', 87, 1, '2020-05-22 23:09:52');
INSERT INTO comments VALUES(null, 'this trailer would have a billion views in a few years . We all lost a part of ourselves in it .', 87, 2, '2020-05-23 21:25:52');
INSERT INTO comments VALUES(null, 'Best trailer, Ive ever seen. it still feels is great.', 87, 1, '2020-05-18 11:46:52');
INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(88, 'Ticket 88', 'Ticket 88 will hopefully have a description one day... 

Ticket 88 will hopefully have a description one day... Ticket 88 will hopefully have a description one day... 
Ticket 88 will hopefully have a description one day...  ', 3, 1, 2, '2020-05-15 16:27:52', 1, '2020-05-18 02:46:52', 1, null, null, 3, null);
INSERT INTO comments VALUES(null, '“I hope they remember you” Don’t worry mr.Stark I will never forget U', 88, 2, '2020-05-17 07:30:52');
INSERT INTO comments VALUES(null, 'Coronavirus: when Im done half of humanity will still exist.', 88, 1, '2020-05-23 03:38:52');
INSERT INTO comments VALUES(null, '1:13
 Hold on, this wasnt in the movie.', 88, 3, '2020-05-22 00:31:52');
INSERT INTO comments VALUES(null, 'Remember when everyone were speculating that Steve Rogers had the soul stone after watching this trailer because his eyes were glowing orange? Good guess tho!', 88, 1, '2020-05-18 18:45:52');
INSERT INTO comments VALUES(null, 'In 2018..


Iron Man: "Im sorry Earth is closed today"


Ancient One: "Youre about two years too early"', 88, 3, '2020-05-17 16:30:52');
INSERT INTO comments VALUES(null, 'Its already second month of 2020 and idk why Im I still watching it.', 88, 2, '2020-05-22 23:32:52');
INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(89, 'Ticket 89', 'Ticket 89 will hopefully have a description one day... 

Ticket 89 will hopefully have a description one day... Ticket 89 will hopefully have a description one day... 
Ticket 89 will hopefully have a description one day...  ', 3, 3, 3, '2020-05-13 11:49:52', 1, '2020-05-15 01:30:52', 3, '2020-05-21 06:29:52', 1, 4, 2);
INSERT INTO comments VALUES(null, 'Thanos: “Fine I’ll do it myself” Mysterio: “Fine I’ll kill the kids myself”', 89, 2, '2020-05-18 03:53:52');
INSERT INTO comments VALUES(null, 'That moment when Marvel fooled us into believing Gamora was talking to Tony.', 89, 2, '2020-05-18 12:47:52');
INSERT INTO comments VALUES(null, 'The trailers and TV spots of Infinity War &amp; Endgame never get old.', 89, 2, '2020-05-20 23:23:52');
INSERT INTO comments VALUES(null, 'who’s here still depressed about endgame', 89, 3, '2020-05-18 03:23:52');
INSERT INTO comments VALUES(null, 'who is watching after AVENGERS ENDGAME', 89, 3, '2020-05-15 07:33:52');
INSERT INTO comments VALUES(null, 'Rest &amp; Peace Stan Lee😣', 89, 2, '2020-05-19 21:30:52');
INSERT INTO comments VALUES(null, 'Just noticed that they edited the other infinity stones out for that scene at 
1:45
 to not spoil the movie in the trailer. In the actual scene Thanos has all the stones except the mind stone.', 89, 3, '2020-05-17 21:07:52');
INSERT INTO comments VALUES(null, 'This movie promised, this movie delivered', 89, 2, '2020-05-15 12:16:52');
INSERT INTO comments VALUES(null, 'Who’s here after avengers 4 trailer ‼️‼️‼️🔥🔥🔥🔥🔥🎉', 89, 3, '2020-05-21 04:22:52');
INSERT INTO comments VALUES(null, '"I am inevitable"


"and I am groot"', 89, 3, '2020-05-17 19:34:52');
INSERT INTO comments VALUES(null, '2020 : 


Tell me his name again : 


CORONA', 89, 2, '2020-05-14 18:08:52');
INSERT INTO comments VALUES(null, '1:17
 was I the only one who thought Thanos is holding a flower bouquet?', 89, 1, '2020-05-19 13:08:52');
INSERT INTO comments VALUES(null, '" The  end is near " that Scene was awesome', 89, 1, '2020-05-16 01:13:52');
INSERT INTO comments VALUES(null, 'Easily Marvels best and most hype trailer ever', 89, 3, '2020-05-20 21:37:52');
INSERT INTO comments VALUES(null, 'No matter how many times I watch this 
1:27
 will always give me goosebumps and make me tear up a bit', 89, 3, '2020-05-15 11:02:52');
INSERT INTO comments VALUES(null, 'I wish Tony and Gamora would have actually talked in the MCU, even for a single scene.', 89, 1, '2020-05-19 14:57:52');
INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(90, 'Ticket 90', 'Ticket 90 will hopefully have a description one day... 

Ticket 90 will hopefully have a description one day... Ticket 90 will hopefully have a description one day... 
Ticket 90 will hopefully have a description one day...  ', 2, 1, 1, '2020-05-16 19:59:52', 2, '2020-05-23 05:31:52', 3, null, null, 2, null);
INSERT INTO comments VALUES(null, 'You cannot live with the ending of the movie......where did that bring you




Back to the trailers.', 90, 1, '2020-05-18 09:29:52');
INSERT INTO comments VALUES(null, 'Kevin Fiege: There was an Idea..






James Gunn: To bring together a group of remarkable poeple..






Ryan Coogler: To see if we could become something more..






Jon Faverou: So when they needed us we could make the movies..






The Russos: That 
DC
 never could.. 😂😂!!', 90, 1, '2020-05-24 06:53:52');
INSERT INTO comments VALUES(null, 'This is the best ever movie trailer in the world.', 90, 1, '2020-05-18 10:51:52');
INSERT INTO comments VALUES(null, 'The best movie in MCU.', 90, 3, '2020-05-21 08:11:52');
INSERT INTO comments VALUES(null, 'Marvel: “I hope they remember you”


DC: ...', 90, 2, '2020-05-22 22:45:52');
INSERT INTO comments VALUES(null, '-How many times would you like to watch Infinity War for the first time?


-14,000,605.


-How many can you watch?


-One.', 90, 1, '2020-05-23 13:16:52');
INSERT INTO comments VALUES(null, 'Trailer is amazing watching in 2020 march .. ❤️❤️❤️❤️', 90, 3, '2020-05-23 00:46:52');
INSERT INTO comments VALUES(null, 'Two Years Ago Today


The greatest trailer of all time was released. This one! 


Miss the hype 😔', 90, 1, '2020-05-17 21:49:52');
INSERT INTO comments VALUES(null, '“How long were you standing here?”




“For an hour”', 90, 2, '2020-05-20 03:01:52');
INSERT INTO comments VALUES(null, 'Pessimist: half empty 


Optimist: half full


Thanos: perfectly balanced as all things should', 90, 1, '2020-05-19 19:19:52');
INSERT INTO comments VALUES(null, 'Every Marvel fan back to watch this trailer after Endgame, one year later.', 90, 3, '2020-05-20 21:56:52');
INSERT INTO comments VALUES(null, 'Mannn I remember this time back then the hype was reallll', 90, 1, '2020-05-19 11:37:52');
INSERT INTO comments VALUES(null, 'Fun fact: Final scene of trailer cap holding off thanos gauntlet with 2 infinity stones. In the movie his gauntlet was 4 stones. Marvel did well with this teaser.', 90, 3, '2020-05-24 14:06:52');
INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(91, 'Ticket 91', 'Ticket 91 will hopefully have a description one day... 

Ticket 91 will hopefully have a description one day... Ticket 91 will hopefully have a description one day... 
Ticket 91 will hopefully have a description one day...  ', 2, 3, 3, '2020-05-17 06:33:52', 1, '2020-05-24 12:16:52', 1, null, null, 2, null);
INSERT INTO comments VALUES(null, 'Star Lord- Where Is Gamora?


Iron-Man- I’ll Do You One Better, Who Is Gamora?


Drax- I’ll Do You One Better, WHY IS GAMORA? 😂', 91, 2, '2020-05-22 06:31:52');
INSERT INTO comments VALUES(null, 'Spoiler alert!!!








Drax stood so still that he became invisible', 91, 1, '2020-05-18 21:14:52');
INSERT INTO comments VALUES(null, 'Iron Man - "Tell me his name again?"








Gamora....."THANOS!"', 91, 3, '2020-05-21 02:46:52');
INSERT INTO comments VALUES(null, '“I AM GROOT”


“I am Steve Rogers”', 91, 2, '2020-05-24 04:15:52');
INSERT INTO comments VALUES(null, 'love how they put a ton of peter at the end 😂', 91, 3, '2020-05-23 19:56:52');
INSERT INTO comments VALUES(null, 'Iron Man : Tell me his name again             


Gamora : Covid-19! 




(BGM rolls)', 91, 3, '2020-05-20 00:03:52');
INSERT INTO comments VALUES(null, 'Whos here after watching Avengers: Endgame ?', 91, 3, '2020-05-25 00:20:52');
INSERT INTO comments VALUES(null, 'Best trailer, Ive ever seen. it still feels is great.', 91, 3, '2020-05-21 07:46:52');
INSERT INTO comments VALUES(null, 'Fun fact: Final scene of trailer cap holding off thanos gauntlet with 2 infinity stones. In the movie his gauntlet was 4 stones. Marvel did well with this teaser.', 91, 1, '2020-05-19 08:16:52');
INSERT INTO comments VALUES(null, 'Gamora: "The entire time I knew him he only ever had one goal. To be number one on trending. If he is released at the end of November, he will do it in a matter of seconds". 




Iron Man: "Tell me his name again"




Gamora: 
Avengers 4 trailer', 91, 1, '2020-05-19 04:39:52');
INSERT INTO comments VALUES(null, 'Remember when we thought that the hulk buster was Tony', 91, 3, '2020-05-21 13:28:52');
INSERT INTO comments VALUES(null, '- Tell me his name again  


- Covid-19', 91, 2, '2020-05-24 09:28:52');
INSERT INTO comments VALUES(null, 'Coronavirus after wiping out half the population of China: “Perfectly balanced as all things should be”', 91, 1, '2020-05-22 19:59:52');
INSERT INTO comments VALUES(null, '1:13
 Hold on, this wasnt in the movie.', 91, 3, '2020-05-21 17:14:52');
INSERT INTO comments VALUES(null, 'Nothing will ever come close to the hype I got from watching the trailers for Infinity War and Endgame. Ahh those were the days', 91, 3, '2020-05-18 16:49:52');
INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(92, 'Ticket 92', 'Ticket 92 will hopefully have a description one day... 

Ticket 92 will hopefully have a description one day... Ticket 92 will hopefully have a description one day... 
Ticket 92 will hopefully have a description one day...  ', 2, 3, 2, '2020-05-18 06:01:52', 1, '2020-05-23 09:20:52', 1, null, null, 3, null);
INSERT INTO comments VALUES(null, 'even though all is finished, cap is old, iron man is dead... I will never forget them, Avengers forever.', 92, 2, '2020-05-20 15:51:52');
INSERT INTO comments VALUES(null, 'Just noticed that they edited the other infinity stones out for that scene at 
1:45
 to not spoil the movie in the trailer. In the actual scene Thanos has all the stones except the mind stone.', 92, 2, '2020-05-23 19:03:52');
INSERT INTO comments VALUES(null, 'Infinity War is still my top MCU movie even after Endgame', 92, 2, '2020-05-22 18:56:52');
INSERT INTO comments VALUES(null, '0:45
 "so thats what we use" why did tony sound a bit Scottish when he said use? or is it just me?', 92, 3, '2020-05-19 09:03:52');
INSERT INTO comments VALUES(null, 'Whos here after watching Avengers: Endgame ?', 92, 1, '2020-05-22 17:23:52');
INSERT INTO comments VALUES(null, 'Iron Man Is still not dead tO Know why like  my comment', 92, 2, '2020-05-19 12:49:52');
INSERT INTO comments VALUES(null, 'Just hearing the Guardians talking to the other Avengers is enough to make me moister than an oyster', 92, 3, '2020-05-20 11:45:52');
INSERT INTO comments VALUES(null, 'Just noticed that they edited the other infinity stones out for that scene at 
1:45
 to not spoil the movie in the trailer. In the actual scene Thanos has all the stones except the mind stone.', 92, 2, '2020-05-23 18:25:52');
INSERT INTO comments VALUES(null, '"You speak groot?"


"Yes, it was an elective on Asgard"', 92, 1, '2020-05-26 00:53:52');
INSERT INTO comments VALUES(null, 'The version of the ‘made-up names’ scene we got in this trailer is way way way better than the one in the film', 92, 2, '2020-05-25 12:29:52');
INSERT INTO comments VALUES(null, 'This movie looks great. I can’t wait for it to come out.', 92, 2, '2020-05-21 00:41:52');
INSERT INTO comments VALUES(null, 'Bru I would be so mad if I was a wakanda warrior that died in the snap and then came back to life to die in endgame 😭😂', 92, 3, '2020-05-24 03:50:52');
INSERT INTO comments VALUES(null, 'Thanos: fails


Coronavirus: 
Fine, I’ll d9 it myself', 92, 1, '2020-05-19 22:44:52');
INSERT INTO comments VALUES(null, 'Iron Man Is still not dead tO Know why like  my comment', 92, 1, '2020-05-20 07:11:52');
INSERT INTO comments VALUES(null, '1:38
 I love how Doctor Stranges scream can be heard echoing through the trailer', 92, 2, '2020-05-23 02:51:52');
INSERT INTO comments VALUES(null, 'This trailer still gives me the chills down my spine 2020', 92, 1, '2020-05-22 21:49:52');
INSERT INTO comments VALUES(null, 'Its amazing how this trailer created a conversation between tony and gamora that never happened', 92, 1, '2020-05-25 14:10:52');
INSERT INTO comments VALUES(null, 'The end is truly near', 92, 1, '2020-05-19 12:30:52');
INSERT INTO comments VALUES(null, 'Thanos: fails


Coronavirus: 
Fine, I’ll d9 it myself', 92, 1, '2020-05-25 11:31:52');
INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(93, 'Ticket 93', 'Ticket 93 will hopefully have a description one day... 

Ticket 93 will hopefully have a description one day... Ticket 93 will hopefully have a description one day... 
Ticket 93 will hopefully have a description one day...  ', 2, 2, 1, '2020-05-18 01:37:52', 1, '2020-05-21 02:02:52', 2, '2020-05-22 20:22:52', 3, 4, 2);
INSERT INTO comments VALUES(null, 'The version of the ‘made-up names’ scene we got in this trailer is way way way better than the one in the film', 93, 2, '2020-05-22 21:43:52');
INSERT INTO comments VALUES(null, '#1 Trending in Wakanda', 93, 2, '2020-05-20 01:25:52');
INSERT INTO comments VALUES(null, 'THANOS: you have really strong arms. 


CAP: I have been single for 98 years what do you expect?', 93, 2, '2020-05-21 00:44:52');
INSERT INTO comments VALUES(null, 'I swear Thor’s cape is like the best thing in trailers (for me anyway) the way he walked and what his cape did is so cool and in the AOU trailer when it took up the whole screen 😍', 93, 1, '2020-05-23 08:04:52');
INSERT INTO comments VALUES(null, 'Anyone still watching the trailer in October????!?!?!', 93, 1, '2020-05-20 04:56:52');
INSERT INTO comments VALUES(null, 'Ha! i remember seeing cap holding The infinity gauglet and almost passing out, now you imagine how i felt in andgame with cap lifting mjonir😂 If i could choose a super power, it would be the power to watch endgame and infity war again for the first time!', 93, 1, '2020-05-23 07:01:52');
INSERT INTO comments VALUES(null, 'Coronavirus: "When im done...Half of humanity will still exist. Perfectly balanced.....As all things should be."', 93, 3, '2020-05-23 18:43:52');
INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(94, 'Ticket 94', 'Ticket 94 will hopefully have a description one day... 

Ticket 94 will hopefully have a description one day... Ticket 94 will hopefully have a description one day... 
Ticket 94 will hopefully have a description one day...  ', 3, 1, 2, '2020-05-15 16:11:52', 3, '2020-05-19 08:43:52', 3, null, null, 1, null);
INSERT INTO comments VALUES(null, 'The entire time I knew him, he only ever had one goal. To wipe out half of the country’s finances.


If he gets all the electoral college votes, he could do it with the sign of an executive orders. “sound effect of paper being signed”


Just like that. 




Tell me his name again. 




Donald Trump.', 94, 2, '2020-05-17 16:59:52');
INSERT INTO comments VALUES(null, 'One of the most hyped movies in history with an absolutely shocking ending', 94, 2, '2020-05-20 07:43:52');
INSERT INTO comments VALUES(null, 'This trailer is so good that when I stop watching it for a while and come back to watch it again all the hype comes back from when it first got released', 94, 1, '2020-05-21 00:45:52');
INSERT INTO comments VALUES(null, 'Remember when we thought that the hulk buster was Tony', 94, 1, '2020-05-18 23:17:52');
INSERT INTO comments VALUES(null, '"If I tell you what happens, it wont happen"', 94, 1, '2020-05-16 22:28:52');
INSERT INTO comments VALUES(null, 'I’m still getting chills watching this. It’s 2020. Every Thanos line is chilling.', 94, 3, '2020-05-20 07:59:52');
INSERT INTO comments VALUES(null, 'So its December 2019 and you just rewatched the first IW trailer bc Black widow is giving you a trip down memory lane. And now youre here bc you just couldnt help yourself. 


Well...see you in the endgame trailer comments bc we both know youll skip over CM.', 94, 1, '2020-05-19 17:38:52');
INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(95, 'Ticket 95', 'Ticket 95 will hopefully have a description one day... 

Ticket 95 will hopefully have a description one day... Ticket 95 will hopefully have a description one day... 
Ticket 95 will hopefully have a description one day...  ', 3, 3, 2, '2020-05-17 17:41:52', 1, '2020-05-22 14:31:52', 1, null, null, 1, null);
INSERT INTO comments VALUES(null, '2020 Best Trailer ever made Thanos is also the best villain ever made!', 95, 1, '2020-05-24 19:47:52');
INSERT INTO comments VALUES(null, 'Avengers Infinity War Trailer 2: 93 Million Views. 


Avengers Endgame Trailer 2: 93 Million Views.


Perfectly Balanced As All Things Should Be!!', 95, 1, '2020-05-20 22:58:52');
INSERT INTO comments VALUES(null, 'Plot twist: Ant-man is hiding in Thanos gauntlet, waiting for thanos to scratch his back so he can steal the stones and run away.', 95, 1, '2020-05-21 03:05:52');
INSERT INTO comments VALUES(null, 'Easily one of the best trailers of all time', 95, 3, '2020-05-21 23:03:52');
INSERT INTO comments VALUES(null, 'Best most popular trailer forever 🖤


Who still watching in December 2019?', 95, 2, '2020-05-19 21:08:52');
INSERT INTO comments VALUES(null, '1:50
 just a loop button for me', 95, 2, '2020-05-22 23:29:52');
INSERT INTO comments VALUES(null, 'Nothing will ever come close to the hype I got from watching the trailers for Infinity War and Endgame. Ahh those were the days', 95, 2, '2020-05-22 15:33:52');
INSERT INTO comments VALUES(null, 'We have one advantage, thanos is coming to us. *flies towards Thanos’ ship', 95, 3, '2020-05-24 17:04:52');
INSERT INTO comments VALUES(null, 'Infinity War is still my top MCU movie even after Endgame', 95, 1, '2020-05-24 21:42:52');
INSERT INTO comments VALUES(null, 'Thanos: “Fine I’ll do it myself” Mysterio: “Fine I’ll kill the kids myself”', 95, 2, '2020-05-24 02:20:52');
INSERT INTO comments VALUES(null, '" 
when
 
im
 
done
  
half
 
of
 
humanity
 
will
 
still
 *exist*". Thanos had to spoil the movie.', 95, 2, '2020-05-21 13:51:52');
INSERT INTO comments VALUES(null, '0:24
 ...Coronavirus!', 95, 3, '2020-05-25 05:55:52');
INSERT INTO comments VALUES(null, 'That "I hope they remember you..." line means so much more now. :(', 95, 2, '2020-05-22 13:51:52');
INSERT INTO comments VALUES(null, '#1 Trending in Wakanda', 95, 2, '2020-05-24 09:14:52');
INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(96, 'Ticket 96', 'Ticket 96 will hopefully have a description one day... 

Ticket 96 will hopefully have a description one day... Ticket 96 will hopefully have a description one day... 
Ticket 96 will hopefully have a description one day...  ', 2, 1, 3, '2020-05-15 18:31:52', 3, '2020-05-20 06:45:52', 3, null, null, 2, null);
INSERT INTO comments VALUES(null, 'I still love thors entrance in this movie and it still gives me goosebumbs', 96, 2, '2020-05-18 02:16:52');
INSERT INTO comments VALUES(null, '- Tell me his name again  


- Covid-19', 96, 1, '2020-05-22 23:27:52');
INSERT INTO comments VALUES(null, '1:11
 Coronavirus Thanos:The end is near...', 96, 3, '2020-05-22 06:17:52');
INSERT INTO comments VALUES(null, 'I wish Tony and Gamora would have actually talked in the MCU, even for a single scene.', 96, 1, '2020-05-23 11:38:52');
INSERT INTO comments VALUES(null, 'Imagine if they had killed iron man in this one.....', 96, 1, '2020-05-20 12:40:52');
INSERT INTO comments VALUES(null, '0:45
 "so thats what we use" why did tony sound a bit Scottish when he said use? or is it just me?', 96, 1, '2020-05-18 17:57:52');
INSERT INTO comments VALUES(null, '-How many times would you like to watch Infinity War for the first time?


-14,000,605.


-How many can you watch?


-One.', 96, 1, '2020-05-22 03:09:52');
INSERT INTO comments VALUES(null, '"Tell me his name again"










"Noobmaster69"', 96, 2, '2020-05-21 08:27:52');
INSERT INTO comments VALUES(null, 'This trailer is full of mistakes scenes that never happened in the real movie', 96, 2, '2020-05-20 11:58:52');
INSERT INTO comments VALUES(null, 'Wow this was really two years ago who else is here wit me', 96, 3, '2020-05-20 14:54:52');
INSERT INTO comments VALUES(null, 'Someone: when goosebumps will occur??


Me:  when u are listening to avengers theme music!!!', 96, 2, '2020-05-21 12:32:52');
INSERT INTO comments VALUES(null, 'Its already second month of 2020 and idk why Im I still watching it.', 96, 1, '2020-05-22 02:16:52');
INSERT INTO comments VALUES(null, 'The entire time I knew him, he only ever had one goal. To wipe out half of the country’s finances.


If he gets all the electoral college votes, he could do it with the sign of an executive orders. “sound effect of paper being signed”


Just like that. 




Tell me his name again. 




Donald Trump.', 96, 2, '2020-05-21 19:02:52');
INSERT INTO comments VALUES(null, 'MCU-


Thanos: When Im done, half of humanity will still exist.






Real Life-


COVID-19: When Im done, half of humanity will seize to exist.', 96, 1, '2020-05-18 16:04:52');
INSERT INTO comments VALUES(null, '1:45
 man I remember the first time watching this trailer, seeing this moment where Cap literally made Thanos struggle as he was holding the gauntlet back with all his strength and willpower 😦🔥 gave me chills', 96, 2, '2020-05-20 19:30:52');
INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(97, 'Ticket 97', 'Ticket 97 will hopefully have a description one day... 

Ticket 97 will hopefully have a description one day... Ticket 97 will hopefully have a description one day... 
Ticket 97 will hopefully have a description one day...  ', 1, 2, 1, '2020-05-14 12:19:52', 2, '2020-05-16 10:30:52', 3, '2020-05-19 07:48:52', 3, 4, 2);
INSERT INTO comments VALUES(null, '1:42
 Gives me chills now!!!', 97, 2, '2020-05-20 10:49:52');
INSERT INTO comments VALUES(null, 'I remember this trailer dropping while i was in lunch,instead of eating i rewatched this', 97, 2, '2020-05-17 00:07:52');
INSERT INTO comments VALUES(null, '2:10
 


Peter:"Karen,hide my spider legs for the trailer but show them in the movie."








Karen:"Do you want me to activate Instant Kill?"', 97, 2, '2020-05-19 04:34:52');
INSERT INTO comments VALUES(null, 'Trailer 


    Tony : tell me his name again


    Gamora : Thanos


Movie 






WhO iS GAmoRa?!', 97, 2, '2020-05-21 06:15:52');
INSERT INTO comments VALUES(null, 'My subtitles said: "Tell me his name again." "Santos." 😂😂', 97, 1, '2020-05-15 15:46:52');
INSERT INTO comments VALUES(null, 'Iron Man : Tell me his name again             


Gamora : Covid-19! 




(BGM rolls)', 97, 2, '2020-05-17 14:34:52');
INSERT INTO comments VALUES(null, 'Ha! i remember seeing cap holding The infinity gauglet and almost passing out, now you imagine how i felt in andgame with cap lifting mjonir😂 If i could choose a super power, it would be the power to watch endgame and infity war again for the first time!', 97, 3, '2020-05-20 19:01:52');
INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(98, 'Ticket 98', 'Ticket 98 will hopefully have a description one day... 

Ticket 98 will hopefully have a description one day... Ticket 98 will hopefully have a description one day... 
Ticket 98 will hopefully have a description one day...  ', 3, 3, 1, '2020-05-16 18:48:52', 3, '2020-05-21 00:30:52', 3, null, null, 1, null);
INSERT INTO comments VALUES(null, 'well this trailer give us the clue the title about the part 2 of the avengers infinity war.. but we dont realize it!!... well done marvel...




at minute 
1:10
 "The end is near"', 98, 1, '2020-05-22 13:04:52');
INSERT INTO comments VALUES(null, 'This movie looks great. I can’t wait for it to come out.', 98, 2, '2020-05-21 16:59:52');
INSERT INTO comments VALUES(null, 'Remember the hype for this movie? It all seems so far away now.', 98, 1, '2020-05-21 17:15:52');
INSERT INTO comments VALUES(null, '2:08
 no, not anymore you`re not :(', 98, 1, '2020-05-18 08:50:52');
INSERT INTO comments VALUES(null, 'Thanos: Stark!


Tony Stark: You know me!!


Thanos: Youre not the only one cursed with knowledge.


Tony Stark: My only curse is you.', 98, 1, '2020-05-19 15:29:52');
INSERT INTO comments VALUES(null, 'PLEASE IMAGINE CORONA VIRUS SAYING THANOS LINES 😂', 98, 3, '2020-05-22 22:07:52');
INSERT INTO comments VALUES(null, 'Easily one of the best trailers of all time', 98, 2, '2020-05-24 05:28:52');
INSERT INTO comments VALUES(null, '2 years ago, this day Thanos snapped', 98, 3, '2020-05-21 08:42:52');
INSERT INTO comments VALUES(null, 'Rest &amp; Peace Stan Lee😣', 98, 2, '2020-05-18 21:38:52');
INSERT INTO comments VALUES(null, 'This trailer is so good that when I stop watching it for a while and come back to watch it again all the hype comes back from when it first got released', 98, 2, '2020-05-18 05:00:52');
INSERT INTO comments VALUES(null, 'A wise king never seek out war




Bring me thanos 




Lets kill him properly this time', 98, 1, '2020-05-24 03:43:52');
INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(99, 'Ticket 99', 'Ticket 99 will hopefully have a description one day... 

Ticket 99 will hopefully have a description one day... Ticket 99 will hopefully have a description one day... 
Ticket 99 will hopefully have a description one day...  ', 3, 1, 3, '2020-05-12 00:51:52', 2, '2020-05-14 02:33:52', 2, null, null, 1, null);
INSERT INTO comments VALUES(null, '2 years ago, this day Thanos snapped', 99, 1, '2020-05-20 01:07:52');
INSERT INTO comments VALUES(null, '0:24
 ...Coronavirus!', 99, 2, '2020-05-19 03:25:52');
INSERT INTO comments VALUES(null, 'Iron man: We got one advantage: hes coming to us.


Shows Iron man flying after a spaceship thats 
LEAVING
 earth', 99, 3, '2020-05-17 05:28:52');
INSERT INTO comments VALUES(null, 'Anyone still watching the trailer in October????!?!?!', 99, 3, '2020-05-18 07:04:52');
INSERT INTO comments VALUES(null, 'The end is truly near', 99, 3, '2020-05-19 13:33:52');
INSERT INTO comments VALUES(null, '1:10
 Did anyone see thor without his head?', 99, 3, '2020-05-18 20:36:52');
INSERT INTO comments VALUES(null, 'This trailer is full of mistakes scenes that never happened in the real movie', 99, 1, '2020-05-19 04:36:52');
INSERT INTO comments VALUES(null, 'Avengers:Saving New York




Avengers Age Of Ultron:saving the world




Avengers Infinity War:Saving The Galaxy 




Avengers Endgame:Avenging the Galaxy', 99, 2, '2020-05-18 08:01:52');
INSERT INTO comments VALUES(null, 'love how they put a ton of peter at the end 😂', 99, 3, '2020-05-16 07:01:52');
INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(100, 'Ticket 100', 'Ticket 100 will hopefully have a description one day... 

Ticket 100 will hopefully have a description one day... Ticket 100 will hopefully have a description one day... 
Ticket 100 will hopefully have a description one day...  ', 1, 1, 3, '2020-05-16 22:37:52', 1, '2020-05-20 20:43:52', 1, null, null, 2, null);
INSERT INTO comments VALUES(null, 'Thanos other code name = Coronavirus 2020', 100, 2, '2020-05-19 11:35:52');
INSERT INTO comments VALUES(null, 'I still love this movie more  than end game ❤️', 100, 1, '2020-05-22 17:35:52');
INSERT INTO comments VALUES(null, 'That trailer music that lead to so many "infinity war style" trailers.', 100, 3, '2020-05-21 15:13:52');
INSERT INTO comments VALUES(null, 'I’m still getting chills watching this. It’s 2020. Every Thanos line is chilling.', 100, 1, '2020-05-18 12:22:52');
INSERT INTO comments VALUES(null, 'Marvel: “I hope they remember you”


DC: ...', 100, 3, '2020-05-19 09:21:52');
INSERT INTO comments VALUES(null, 'Trailer doesnt have 200M views yet


"Fine...Ill do it myself."', 100, 3, '2020-05-20 11:07:52');
INSERT INTO comments VALUES(null, 'Why YouTube recommended me this now ? 😥', 100, 2, '2020-05-21 08:18:52');
INSERT INTO comments VALUES(null, 'Its 2020 but still watching this trailer..I wish that we will see them again one more time🙂', 100, 2, '2020-05-20 22:51:52');
INSERT INTO comments VALUES(null, 'Here after endgame. Still believing that this is the greatest trailer ever made in cinematic history', 100, 1, '2020-05-23 09:46:52');
INSERT INTO comments VALUES(null, 'Easily Marvels best and most hype trailer ever', 100, 3, '2020-05-20 07:32:52');
INSERT INTO comments VALUES(null, 'When u realised that all that happened under a random green room...', 100, 2, '2020-05-18 11:51:52');
INSERT INTO comments VALUES(null, 'The best movie in MCU.', 100, 2, '2020-05-20 12:39:52');
INSERT INTO comments VALUES(null, '2 year anniversary how fast time goes', 100, 1, '2020-05-23 09:16:52');
