drop database if exists LanguageForKid;

create database LanguageForKid;

use LanguageForKid;

DROP TABLE IF EXISTS BIGLIST;

DROP TABLE IF EXISTS DETAIL;

DROP TABLE IF EXISTS ACCOUNTS;


CREATE TABLE BIGLIST(
	id INTEGER IDENTITY PRIMARY KEY, 
	name nvarchar(max), 
	image TEXT, 
	sound TEXT
);

CREATE TABLE DETAIL(
	id INTEGER IDENTITY PRIMARY KEY, 
	id_big INTEGER, 
	dt_image TEXT, 
	dt_sound TEXT,
	image_link TEXT,
	sound_link TEXT
)

CREATE TABLE ACCOUNTS(
  id INTEGER IDENTITY PRIMARY KEY,
  username varchar(50),
  password varchar(255),
  name varchar(50), 
  email varchar(100),
  learnProgress int,
  testProgress int,
  refreshToken text
)

INSERT INTO BIGLIST(Name, Image, Sound)VALUES(N'BẢNG CHỮ CÁI', 'img_alphabet_a', 'sounds_start_bangchucai'),
(N'CHỮ SỐ', 'img_number_0', 'sounds_start_chuso'),
(N'ĐỘNG VẬT', 'img_animal_ant', 'sounds_start_cacloaidongvat'),
(N'CÁC LOẠI HOA QUẢ', 'img_fruit_apple', 'sounds_start_cacloaihoaqua'),
(N'HÌNH HỌC', 'img_geometry_square', 'sounds_start_cacdanghinhhoc'),
(N'ĐỒ DÙNG HỌC TẬP', 'img_school_bag', 'sounds_start_dodunghoctap'),
(N'MÀU SẮC', 'img_color_blue', 'sounds_start_cacloaimausac'),
(N'CÁC LOẠI HOA', 'img_flower_apricotblossom', 'sounds_start_cacloaihoa'),
(N'GIAO THÔNG', 'img_vehicle_ambulance', 'sounds_start_phuongtiengiaothong'),
(N'QUỐC GIA', 'img_country_vietnam', 'sounds_start_quocgia');

INSERT INTO DETAIL(id_big, dt_image, dt_sound, image_link, sound_link)
VALUES(1, 'img_alphabet_a', 'sounds_alphabet_a', 'https://firebasestorage.googleapis.com/v0/b/languageforkid.appspot.com/o/image%2Fimg_alphabet_a.png?alt=media&token=63be7b0a-ea09-4058-a40f-94d23223cf46' ,'https://firebasestorage.googleapis.com/v0/b/languageforkid.appspot.com/o/sounds_alphabet_a.mp3?alt=media&token=f9ed9c96-6348-4618-b277-5ba81660b064');
INSERT INTO DETAIL(id_big, dt_image, dt_sound, sound_link)
VALUES(1, 'img_alphabet_b', 'sounds_alphabet_b', 'https://firebasestorage.googleapis.com/v0/b/languageforkid.appspot.com/o/sounds_alphabet_a1.mp3?alt=media&token=9364db9c-5d1a-4fa6-b639-a9d8308ba493');
INSERT INTO DETAIL(id_big, dt_image, dt_sound, sound_link)
VALUES(1, 'img_alphabet_c', 'sounds_alphabet_c', 'https://firebasestorage.googleapis.com/v0/b/languageforkid.appspot.com/o/sounds_alphabet_c.mp3?alt=media&token=fccc8ab9-558d-4120-a2b3-1e32b3f31591');
INSERT INTO DETAIL(id_big, dt_image, dt_sound, sound_link)
VALUES(1, 'img_alphabet_d', 'sounds_alphabet_d', 'https://firebasestorage.googleapis.com/v0/b/languageforkid.appspot.com/o/sounds_alphabet_d.mp3?alt=media&token=fcbdec5a-da0d-46c8-a9e8-39752212259e');
INSERT INTO DETAIL(id_big, dt_image, dt_sound, sound_link)
VALUES(1, 'img_alphabet_e', 'sounds_alphabet_e', 'https://firebasestorage.googleapis.com/v0/b/languageforkid.appspot.com/o/sounds_alphabet_e.mp3?alt=media&token=97c5fd94-d2cf-497c-8214-ecec81203281');
INSERT INTO DETAIL(id_big, dt_image, dt_sound, sound_link)
VALUES(1, 'img_alphabet_g', 'sounds_alphabet_g', 'https://firebasestorage.googleapis.com/v0/b/languageforkid.appspot.com/o/sounds_alphabet_g.mp3?alt=media&token=cfdbda4f-1e4e-44f0-adcf-b0bc579d0ece');
INSERT INTO DETAIL(id_big, dt_image, dt_sound, sound_link)
VALUES(1, 'img_alphabet_h', 'sounds_alphabet_h', 'https://firebasestorage.googleapis.com/v0/b/languageforkid.appspot.com/o/sounds_alphabet_h.mp3?alt=media&token=afd3e199-e800-4f1f-aade-f95c96e85eb5');
INSERT INTO DETAIL(id_big, dt_image, dt_sound, sound_link)
VALUES(1, 'img_alphabet_i', 'sounds_alphabet_i', 'https://firebasestorage.googleapis.com/v0/b/languageforkid.appspot.com/o/sounds_alphabet_i.mp3?alt=media&token=c3a766f0-02d5-4f7d-b94f-7cde13750d46');
INSERT INTO DETAIL(id_big, dt_image, dt_sound, sound_link)
VALUES(1, 'img_alphabet_k', 'sounds_alphabet_k', 'https://firebasestorage.googleapis.com/v0/b/languageforkid.appspot.com/o/sounds_alphabet_k.mp3?alt=media&token=757ab893-6b17-465d-ab77-2cb506298971');
INSERT INTO DETAIL(id_big, dt_image, dt_sound, sound_link)
VALUES(1, 'img_alphabet_l', 'sounds_alphabet_l', 'https://firebasestorage.googleapis.com/v0/b/languageforkid.appspot.com/o/sounds_alphabet_l.mp3?alt=media&token=392007de-0460-4ae8-95fe-da3547692291');
INSERT INTO DETAIL(id_big, dt_image, dt_sound, sound_link)
VALUES(1, 'img_alphabet_m', 'sounds_alphabet_m', 'https://firebasestorage.googleapis.com/v0/b/languageforkid.appspot.com/o/sounds_alphabet_m.mp3?alt=media&token=697b04b5-e48f-491a-bf12-f291474a9da3');
INSERT INTO DETAIL(id_big, dt_image, dt_sound, sound_link)
VALUES(1, 'img_alphabet_n', 'sounds_alphabet_n', 'https://firebasestorage.googleapis.com/v0/b/languageforkid.appspot.com/o/sounds_alphabet_n.mp3?alt=media&token=db50f5c9-b68e-47fd-86ec-78c91a24a275');
INSERT INTO DETAIL(id_big, dt_image, dt_sound, sound_link)
VALUES(1, 'img_alphabet_o', 'sounds_alphabet_o', 'https://firebasestorage.googleapis.com/v0/b/languageforkid.appspot.com/o/sounds_alphabet_o.mp3?alt=media&token=16aa38b4-e341-4815-b974-0a3be78a032d');
INSERT INTO DETAIL(id_big, dt_image, dt_sound, sound_link)
VALUES(1, 'img_alphabet_p', 'sounds_alphabet_p', 'https://firebasestorage.googleapis.com/v0/b/languageforkid.appspot.com/o/sounds_alphabet_p.mp3?alt=media&token=be73f17f-f0da-4a90-be1c-65157dfbd6d4');
INSERT INTO DETAIL(id_big, dt_image, dt_sound, sound_link)
VALUES(1, 'img_alphabet_q', 'sounds_alphabet_q', 'https://firebasestorage.googleapis.com/v0/b/languageforkid.appspot.com/o/sounds_alphabet_q.mp3?alt=media&token=ab5aff89-741f-442e-a11c-0b8b775adca6');
INSERT INTO DETAIL(id_big, dt_image, dt_sound, sound_link)
VALUES(1, 'img_alphabet_r', 'sounds_alphabet_r', 'https://firebasestorage.googleapis.com/v0/b/languageforkid.appspot.com/o/sounds_alphabet_r.mp3?alt=media&token=46c8515d-7f8f-4f94-a0fe-14d268b2e79d');
INSERT INTO DETAIL(id_big, dt_image, dt_sound, sound_link)
VALUES(1, 'img_alphabet_s', 'sounds_alphabet_s', 'https://firebasestorage.googleapis.com/v0/b/languageforkid.appspot.com/o/sounds_alphabet_s.mp3?alt=media&token=f4e06b1a-0277-4fb1-8dd6-2140a7d3cb5b');
INSERT INTO DETAIL(id_big, dt_image, dt_sound, sound_link)
VALUES(1, 'img_alphabet_t', 'sounds_alphabet_t', 'https://firebasestorage.googleapis.com/v0/b/languageforkid.appspot.com/o/sounds_alphabet_t.mp3?alt=media&token=ae782fbe-2da4-40eb-ac23-51551cba3049');
INSERT INTO DETAIL(id_big, dt_image, dt_sound, sound_link)
VALUES(1, 'img_alphabet_u', 'sounds_alphabet_u', 'https://firebasestorage.googleapis.com/v0/b/languageforkid.appspot.com/o/sounds_alphabet_u.mp3?alt=media&token=295b34f8-ce01-4949-872d-20b657f3b17f');
INSERT INTO DETAIL(id_big, dt_image, dt_sound, sound_link)
VALUES(1, 'img_alphabet_v', 'sounds_alphabet_v', 'https://firebasestorage.googleapis.com/v0/b/languageforkid.appspot.com/o/sounds_alphabet_v.mp3?alt=media&token=95a70a5f-d526-46f1-828b-386f8517a9bd');
INSERT INTO DETAIL(id_big, dt_image, dt_sound, sound_link)
VALUES(1, 'img_alphabet_x', 'sounds_alphabet_x', 'https://firebasestorage.googleapis.com/v0/b/languageforkid.appspot.com/o/sounds_alphabet_x.mp3?alt=media&token=a14865ce-08f2-4424-a75c-1e1c993da5b9');
INSERT INTO DETAIL(id_big, dt_image, dt_sound, sound_link)
VALUES(1, 'img_alphabet_y', 'sounds_alphabet_y', 'https://firebasestorage.googleapis.com/v0/b/languageforkid.appspot.com/o/sounds_alphabet_y.mp3?alt=media&token=2b41752b-ab6e-443d-86b5-33532e1562ec');

INSERT INTO DETAIL(id_big, dt_image, dt_sound, sound_link)VALUES(2, 'img_number_0', 'sounds_number_0' , 'https://firebasestorage.googleapis.com/v0/b/languageforkid.appspot.com/o/sounds_number_0.mp3?alt=media&token=7d15d8ad-ce49-47cd-b15f-9d68b2e7102f');
INSERT INTO DETAIL(id_big, dt_image, dt_sound, sound_link)VALUES(2, 'img_number_1', 'sounds_number_1' , 'https://firebasestorage.googleapis.com/v0/b/languageforkid.appspot.com/o/sounds_number_1.mp3?alt=media&token=79c25212-8789-4c34-8182-4117dc1ae782');
INSERT INTO DETAIL(id_big, dt_image, dt_sound, sound_link)VALUES(2, 'img_number_2', 'sounds_number_2' , 'https://firebasestorage.googleapis.com/v0/b/languageforkid.appspot.com/o/sounds_number_2.mp3?alt=media&token=59149e62-7387-47b4-b72b-e2d0ae4eccc0');
INSERT INTO DETAIL(id_big, dt_image, dt_sound, sound_link)VALUES(2, 'img_number_3', 'sounds_number_3' , 'https://firebasestorage.googleapis.com/v0/b/languageforkid.appspot.com/o/sounds_number_3.mp3?alt=media&token=b5c97a69-ae69-4cbf-b26d-de48f5b4886f');
INSERT INTO DETAIL(id_big, dt_image, dt_sound, sound_link)VALUES(2, 'img_number_4', 'sounds_number_4' , 'https://firebasestorage.googleapis.com/v0/b/languageforkid.appspot.com/o/sounds_number_4.mp3?alt=media&token=f0ba0723-6e14-414d-bd59-36e64038cb29');
INSERT INTO DETAIL(id_big, dt_image, dt_sound, sound_link)VALUES(2, 'img_number_5', 'sounds_number_5' , 'https://firebasestorage.googleapis.com/v0/b/languageforkid.appspot.com/o/sounds_number_5.mp3?alt=media&token=2deb3515-2e5d-4096-bc97-c9e18adeac1f');
INSERT INTO DETAIL(id_big, dt_image, dt_sound, sound_link)VALUES(2, 'img_number_6', 'sounds_number_6' , 'https://firebasestorage.googleapis.com/v0/b/languageforkid.appspot.com/o/sounds_number_6.mp3?alt=media&token=33d85ea9-1b73-4eaa-8c20-4515ff902303');
INSERT INTO DETAIL(id_big, dt_image, dt_sound, sound_link)VALUES(2, 'img_number_7', 'sounds_number_7' , 'https://firebasestorage.googleapis.com/v0/b/languageforkid.appspot.com/o/sounds_number_7.mp3?alt=media&token=6b6e3b14-0c92-46c1-bafb-4bcd5564f580');
INSERT INTO DETAIL(id_big, dt_image, dt_sound, sound_link)VALUES(2, 'img_number_8', 'sounds_number_8' , 'https://firebasestorage.googleapis.com/v0/b/languageforkid.appspot.com/o/sounds_number_8.mp3?alt=media&token=c651a147-eafd-439e-bd2c-18b66f04167f');
INSERT INTO DETAIL(id_big, dt_image, dt_sound, sound_link)VALUES(2, 'img_number_9', 'sounds_number_9' , 'https://firebasestorage.googleapis.com/v0/b/languageforkid.appspot.com/o/sounds_number_9.mp3?alt=media&token=216e437c-8159-4635-8fe7-bc90cb83f8dc');
INSERT INTO DETAIL(id_big, dt_image, dt_sound, sound_link)VALUES(2, 'img_number_10', 'sounds_number_10' , 'https://firebasestorage.googleapis.com/v0/b/languageforkid.appspot.com/o/sounds_number_10.mp3?alt=media&token=d3c3b2e5-ba91-4fb5-af11-87a747ffff1e');
INSERT INTO DETAIL(id_big, dt_image, dt_sound, sound_link)VALUES(2, 'img_number_11', 'sounds_number_11' , 'https://firebasestorage.googleapis.com/v0/b/languageforkid.appspot.com/o/sounds_number_11.mp3?alt=media&token=a63b939e-5ece-4350-970b-ee59ab112ebb');
INSERT INTO DETAIL(id_big, dt_image, dt_sound, sound_link)VALUES(2, 'img_number_12', 'sounds_number_12' , 'https://firebasestorage.googleapis.com/v0/b/languageforkid.appspot.com/o/sounds_number_12.mp3?alt=media&token=8e8d3f17-7bf1-40da-a5d4-c39e66cfbe75');
INSERT INTO DETAIL(id_big, dt_image, dt_sound, sound_link)VALUES(2, 'img_number_13', 'sounds_number_13' , 'https://firebasestorage.googleapis.com/v0/b/languageforkid.appspot.com/o/sounds_number_13.mp3?alt=media&token=ba75c37c-9553-4291-a284-ddc459cedbd8');
INSERT INTO DETAIL(id_big, dt_image, dt_sound, sound_link)VALUES(2, 'img_number_14', 'sounds_number_14' , 'https://firebasestorage.googleapis.com/v0/b/languageforkid.appspot.com/o/sounds_number_14.mp3?alt=media&token=da355211-a16e-49b8-be9c-8ccd30dcb8a2');
INSERT INTO DETAIL(id_big, dt_image, dt_sound, sound_link)VALUES(2, 'img_number_15', 'sounds_number_15' , 'https://firebasestorage.googleapis.com/v0/b/languageforkid.appspot.com/o/sounds_number_15.mp3?alt=media&token=37380313-63f2-46c4-b90d-d98385349029');
INSERT INTO DETAIL(id_big, dt_image, dt_sound, sound_link)VALUES(2, 'img_number_16', 'sounds_number_16' , 'https://firebasestorage.googleapis.com/v0/b/languageforkid.appspot.com/o/sounds_number_16.mp3?alt=media&token=ca7c3d13-86ab-409f-a2d6-953415a746bf');
INSERT INTO DETAIL(id_big, dt_image, dt_sound, sound_link)VALUES(2, 'img_number_17', 'sounds_number_17' , 'https://firebasestorage.googleapis.com/v0/b/languageforkid.appspot.com/o/sounds_number_17.mp3?alt=media&token=89923cc5-744c-4040-8cbe-c7c50f3cce9a');
INSERT INTO DETAIL(id_big, dt_image, dt_sound, sound_link)VALUES(2, 'img_number_18', 'sounds_number_18' , 'https://firebasestorage.googleapis.com/v0/b/languageforkid.appspot.com/o/sounds_number_18.mp3?alt=media&token=4d41f6bb-efba-41b3-8b43-d8f09bd8b97c');
INSERT INTO DETAIL(id_big, dt_image, dt_sound, sound_link)VALUES(2, 'img_number_19', 'sounds_number_19' , 'https://firebasestorage.googleapis.com/v0/b/languageforkid.appspot.com/o/sounds_number_19.mp3?alt=media&token=5dc925ae-4eee-4b2d-8e5c-42f715e87684');
INSERT INTO DETAIL(id_big, dt_image, dt_sound, sound_link)VALUES(2, 'img_number_20', 'sounds_number_20' , 'https://firebasestorage.googleapis.com/v0/b/languageforkid.appspot.com/o/sounds_number_20.mp3?alt=media&token=4fb536cd-f59b-4705-b5a7-9f1f07587b3a');

INSERT INTO DETAIL(id_big, dt_image, dt_sound, sound_link)VALUES(3, 'img_animal_ant', 'sounds_animal_ant' , 'https://firebasestorage.googleapis.com/v0/b/languageforkid.appspot.com/o/sounds_animal_ant.mp3?alt=media&token=6255fe08-1030-4176-ae6a-d0483673415a')
INSERT INTO DETAIL(id_big, dt_image, dt_sound, sound_link)VALUES(3, 'img_animal_bear', 'sounds_animal_bear', 'https://firebasestorage.googleapis.com/v0/b/languageforkid.appspot.com/o/sounds_animal_bear.mp3?alt=media&token=d06c4681-91fa-48eb-8d1a-4c61e4d111ee')
INSERT INTO DETAIL(id_big, dt_image, dt_sound, sound_link)VALUES(3, 'img_animal_bee', 'sounds_animal_bee', 'https://firebasestorage.googleapis.com/v0/b/languageforkid.appspot.com/o/sounds_animal_bee.mp3?alt=media&token=14116928-c6ab-4540-ab06-65e8a68c2e9c')
INSERT INTO DETAIL(id_big, dt_image, dt_sound, sound_link)VALUES(3, 'img_animal_bird', 'sounds_animal_bird', 'https://firebasestorage.googleapis.com/v0/b/languageforkid.appspot.com/o/sounds_animal_bird.mp3?alt=media&token=741ea5a5-1f3a-44cc-b1d1-c1616ca0750d')
INSERT INTO DETAIL(id_big, dt_image, dt_sound, sound_link)VALUES(3, 'img_animal_buffalo', 'sounds_animal_buffalo', 'https://firebasestorage.googleapis.com/v0/b/languageforkid.appspot.com/o/sounds_animal_buffalo.mp3?alt=media&token=136b8966-2f62-414c-81da-2dfa56fc9927')
INSERT INTO DETAIL(id_big, dt_image, dt_sound, sound_link)VALUES(3, 'img_animal_butterfly', 'sounds_animal_butterfly', 'https://firebasestorage.googleapis.com/v0/b/languageforkid.appspot.com/o/sounds_animal_butterfly.mp3?alt=media&token=10872691-6592-4d30-bce6-c9da48170eb3')
INSERT INTO DETAIL(id_big, dt_image, dt_sound, sound_link)VALUES(3, 'img_animal_cat', 'sounds_animal_cat', 'https://firebasestorage.googleapis.com/v0/b/languageforkid.appspot.com/o/sounds_animal_cat.mp3?alt=media&token=fb3084ea-cc19-443c-951c-d7c9af20de55')
INSERT INTO DETAIL(id_big, dt_image, dt_sound, sound_link)VALUES(3, 'img_animal_cow', 'sounds_animal_cow', 'https://firebasestorage.googleapis.com/v0/b/languageforkid.appspot.com/o/sounds_animal_cow.mp3?alt=media&token=c1bd834c-8d44-4f59-9ce1-ac1854a31768')
INSERT INTO DETAIL(id_big, dt_image, dt_sound, sound_link)VALUES(3, 'img_animal_deer', 'sounds_animal_deer', 'https://firebasestorage.googleapis.com/v0/b/languageforkid.appspot.com/o/sounds_animal_deer.mp3?alt=media&token=4b18d9d2-6937-4f6c-a8a1-cbca8feaa836')
INSERT INTO DETAIL(id_big, dt_image, dt_sound, sound_link)VALUES(3, 'img_animal_dog', 'sounds_animal_dog', 'https://firebasestorage.googleapis.com/v0/b/languageforkid.appspot.com/o/sounds_animal_dog.mp3?alt=media&token=3e2330cd-98c6-41bf-b5ad-61b15c5991a1')
INSERT INTO DETAIL(id_big, dt_image, dt_sound, sound_link)VALUES(3, 'img_animal_dolphin', 'sounds_animal_dolphin', 'https://firebasestorage.googleapis.com/v0/b/languageforkid.appspot.com/o/sounds_animal_dolphin.mp3?alt=media&token=88f7bcc8-e1e8-4b25-8e34-18edb8d79941')
INSERT INTO DETAIL(id_big, dt_image, dt_sound, sound_link)VALUES(3, 'img_animal_duck', 'sounds_animal_duck', 'https://firebasestorage.googleapis.com/v0/b/languageforkid.appspot.com/o/sounds_animal_duck.mp3?alt=media&token=ecd26ebe-9dd5-4863-8a61-654bd2804b35')
INSERT INTO DETAIL(id_big, dt_image, dt_sound, sound_link)VALUES(3, 'img_animal_elephant', 'sounds_animal_elephant', 'https://firebasestorage.googleapis.com/v0/b/languageforkid.appspot.com/o/sounds_animal_elephant.mp3?alt=media&token=81783422-d8ff-41cd-96b3-eb44a40d6031')
INSERT INTO DETAIL(id_big, dt_image, dt_sound, sound_link)VALUES(3, 'img_animal_fox', 'sounds_animal_fox', 'https://firebasestorage.googleapis.com/v0/b/languageforkid.appspot.com/o/sounds_animal_fox.mp3?alt=media&token=5b846b59-d432-4631-b15c-fc1fa245d344')
INSERT INTO DETAIL(id_big, dt_image, dt_sound, sound_link)VALUES(3, 'img_animal_frog', 'sounds_animal_frog', 'https://firebasestorage.googleapis.com/v0/b/languageforkid.appspot.com/o/sounds_animal_frog.mp3?alt=media&token=dd0b55e3-0b41-4664-b942-f4de70ee7d82')
INSERT INTO DETAIL(id_big, dt_image, dt_sound, sound_link)VALUES(3, 'img_animal_giraffe', 'sounds_animal_giraffe', 'https://firebasestorage.googleapis.com/v0/b/languageforkid.appspot.com/o/sounds_animal_giraffe.mp3?alt=media&token=db0afe77-068e-49b6-844d-a30ae2a62b27')
INSERT INTO DETAIL(id_big, dt_image, dt_sound, sound_link)VALUES(3, 'img_animal_goat', 'sounds_animal_goat', 'https://firebasestorage.googleapis.com/v0/b/languageforkid.appspot.com/o/sounds_animal_goat.mp3?alt=media&token=cc7a716a-2a7b-4b5f-be81-3b3e14326632')
INSERT INTO DETAIL(id_big, dt_image, dt_sound, sound_link)VALUES(3, 'img_animal_hen', 'sounds_animal_hen', 'https://firebasestorage.googleapis.com/v0/b/languageforkid.appspot.com/o/sounds_animal_hen.mp3?alt=media&token=18e88bd3-bde0-4b3e-9631-4e11da9de3d5')
INSERT INTO DETAIL(id_big, dt_image, dt_sound, sound_link)VALUES(3, 'img_animal_hippo', 'sounds_animal_hippo', 'https://firebasestorage.googleapis.com/v0/b/languageforkid.appspot.com/o/sounds_animal_hippo.mp3?alt=media&token=f625f884-75ad-4660-be05-331284a66653')
INSERT INTO DETAIL(id_big, dt_image, dt_sound, sound_link)VALUES(3, 'img_animal_hippocampus', 'sounds_animal_hippocampus', 'https://firebasestorage.googleapis.com/v0/b/languageforkid.appspot.com/o/sounds_animal_hippocampus.mp3?alt=media&token=8cfd3512-8c6d-4d57-bdc8-51b83642ed09')
INSERT INTO DETAIL(id_big, dt_image, dt_sound, sound_link)VALUES(3, 'img_animal_horse', 'sounds_animal_horse', 'https://firebasestorage.googleapis.com/v0/b/languageforkid.appspot.com/o/sounds_animal_horse.mp3?alt=media&token=9abf6fa9-b3e9-43c3-b0c0-51d7c7d6aca0')
INSERT INTO DETAIL(id_big, dt_image, dt_sound, sound_link)VALUES(3, 'img_animal_lion', 'sounds_animal_lion', 'https://firebasestorage.googleapis.com/v0/b/languageforkid.appspot.com/o/sounds_animal_lion.mp3?alt=media&token=339aec20-a022-4806-8f72-fa7278b95dd6')
INSERT INTO DETAIL(id_big, dt_image, dt_sound, sound_link)VALUES(3, 'img_animal_monkey', 'sounds_animal_monkey', 'https://firebasestorage.googleapis.com/v0/b/languageforkid.appspot.com/o/sounds_animal_monkey.mp3?alt=media&token=d1e5c4a1-5597-4540-aa3e-7a08b7752ba1')
INSERT INTO DETAIL(id_big, dt_image, dt_sound, sound_link)VALUES(3, 'img_animal_mouse', 'sounds_animal_mouse', 'https://firebasestorage.googleapis.com/v0/b/languageforkid.appspot.com/o/sounds_animal_mouse.mp3?alt=media&token=5725f543-7870-4d75-81e5-b56bb93b7ae8')
INSERT INTO DETAIL(id_big, dt_image, dt_sound, sound_link)VALUES(3, 'img_animal_ostrich', 'sounds_animal_ostrich', 'https://firebasestorage.googleapis.com/v0/b/languageforkid.appspot.com/o/sounds_animal_ostrich.mp3?alt=media&token=a55ef01b-c4d0-4086-97fb-96be827ea24c')
INSERT INTO DETAIL(id_big, dt_image, dt_sound, sound_link)VALUES(3, 'img_animal_panda', 'sounds_animal_panda', 'https://firebasestorage.googleapis.com/v0/b/languageforkid.appspot.com/o/sounds_animal_panda.mp3?alt=media&token=d0264fd5-5a88-4166-bea0-18dde39c2542')
INSERT INTO DETAIL(id_big, dt_image, dt_sound, sound_link)VALUES(3, 'img_animal_panther', 'sounds_animal_panther', 'https://firebasestorage.googleapis.com/v0/b/languageforkid.appspot.com/o/sounds_animal_panther.mp3?alt=media&token=fb9593fd-3de1-49c8-951b-73b18a2ee95e')
INSERT INTO DETAIL(id_big, dt_image, dt_sound, sound_link)VALUES(3, 'img_animal_penguin', 'sounds_animal_penguin', 'https://firebasestorage.googleapis.com/v0/b/languageforkid.appspot.com/o/sounds_animal_penguin.mp3?alt=media&token=86b5670e-ff03-443d-b8fb-7a565b2106d7')
INSERT INTO DETAIL(id_big, dt_image, dt_sound, sound_link)VALUES(3, 'img_animal_pig', 'sounds_animal_pig', 'https://firebasestorage.googleapis.com/v0/b/languageforkid.appspot.com/o/sounds_animal_pig.mp3?alt=media&token=57bea720-8ff8-4f73-938d-4a629f1e79f3')
INSERT INTO DETAIL(id_big, dt_image, dt_sound, sound_link)VALUES(3, 'img_animal_rabbit', 'sounds_animal_rabbit', 'https://firebasestorage.googleapis.com/v0/b/languageforkid.appspot.com/o/sounds_animal_rabbit.mp3?alt=media&token=ca007274-74f7-47ce-bb86-eb021acb5946')
INSERT INTO DETAIL(id_big, dt_image, dt_sound, sound_link)VALUES(3, 'img_animal_rhino', 'sounds_animal_rhino', 'https://firebasestorage.googleapis.com/v0/b/languageforkid.appspot.com/o/sounds_animal_rhino.mp3?alt=media&token=d6682f4d-0248-4ca9-8191-230ae1c67312')
INSERT INTO DETAIL(id_big, dt_image, dt_sound, sound_link)VALUES(3, 'img_animal_rooster', 'sounds_animal_rooster', 'https://firebasestorage.googleapis.com/v0/b/languageforkid.appspot.com/o/sounds_animal_rooster.mp3?alt=media&token=344111ac-e977-451a-bd9e-502fd7bfbbdf')
INSERT INTO DETAIL(id_big, dt_image, dt_sound, sound_link)VALUES(3, 'img_animal_shark', 'sounds_animal_shark', 'https://firebasestorage.googleapis.com/v0/b/languageforkid.appspot.com/o/sounds_animal_shark.mp3?alt=media&token=4accffcb-9dff-4725-924d-e2fcaf396b86')
INSERT INTO DETAIL(id_big, dt_image, dt_sound, sound_link)VALUES(3, 'img_animal_sheep', 'sounds_animal_sheep', 'https://firebasestorage.googleapis.com/v0/b/languageforkid.appspot.com/o/sounds_animal_sheep.mp3?alt=media&token=047954fc-3512-4865-91bb-320a900ed0cd')
INSERT INTO DETAIL(id_big, dt_image, dt_sound, sound_link)VALUES(3, 'img_animal_snail', 'sounds_animal_snail', 'https://firebasestorage.googleapis.com/v0/b/languageforkid.appspot.com/o/sounds_animal_snail.mp3?alt=media&token=e9e725d6-7121-49c2-b219-4fd7b59fb8c4')
INSERT INTO DETAIL(id_big, dt_image, dt_sound, sound_link)VALUES(3, 'img_animal_snake', 'sounds_animal_snake', 'https://firebasestorage.googleapis.com/v0/b/languageforkid.appspot.com/o/sounds_animal_snake.mp3?alt=media&token=a14449b4-d1b9-4547-93bb-4c8da8126b04')
INSERT INTO DETAIL(id_big, dt_image, dt_sound, sound_link)VALUES(3, 'img_animal_squirrel', 'sounds_animal_squirrel', 'https://firebasestorage.googleapis.com/v0/b/languageforkid.appspot.com/o/sounds_animal_squirrel.mp3?alt=media&token=bc22ee4d-d172-481b-8654-8f0a8231499e')
INSERT INTO DETAIL(id_big, dt_image, dt_sound, sound_link)VALUES(3, 'img_animal_tiger', 'sounds_animal_tiger', 'https://firebasestorage.googleapis.com/v0/b/languageforkid.appspot.com/o/sounds_animal_tiger.mp3?alt=media&token=dee02aa3-ee60-4690-9652-9b68e59e36b3')
INSERT INTO DETAIL(id_big, dt_image, dt_sound, sound_link)VALUES(3, 'img_animal_turtle', 'sounds_animal_turtle', 'https://firebasestorage.googleapis.com/v0/b/languageforkid.appspot.com/o/sounds_animal_turtle.mp3?alt=media&token=0a309550-bed0-4c46-9d33-9e62210ababf')
INSERT INTO DETAIL(id_big, dt_image, dt_sound, sound_link)VALUES(3, 'img_animal_zebra', 'sounds_animal_zebra', 'https://firebasestorage.googleapis.com/v0/b/languageforkid.appspot.com/o/sounds_animal_zebra.mp3?alt=media&token=6a08d454-7cfe-4c6e-99fc-98b7cb9d21d3')

INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(4, 'img_fruit_apple', 'sounds_fruit_apple')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(4, 'img_fruit_apricot', 'sounds_fruit_apricot')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(4, 'img_fruit_avocado', 'sounds_fruit_avocado')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(4, 'img_fruit_banana', 'sounds_fruit_banana')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(4, 'img_fruit_blueberry', 'sounds_fruit_blueberry')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(4, 'img_fruit_cantaloupe', 'sounds_fruit_cantaloupe')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(4, 'img_fruit_carrot', 'sounds_fruit_carrot')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(4, 'img_fruit_cherry', 'sounds_fruit_cherry')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(4, 'img_fruit_corncob', 'sounds_fruit_corncob')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(4, 'img_fruit_cucumber', 'sounds_fruit_cucumber')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(4, 'img_fruit_dragonfruit', 'sounds_fruit_dragonfruit')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(4, 'img_fruit_durian', 'sounds_fruit_durian')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(4, 'img_fruit_eggplant', 'sounds_fruit_eggplant')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(4, 'img_fruit_grape', 'sounds_fruit_grape')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(4, 'img_fruit_guava', 'sounds_fruit_guava')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(4, 'img_fruit_jackfruit', 'sounds_fruit_jackfruit')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(4, 'img_fruit_kiwi', 'sounds_fruit_kiwi')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(4, 'img_fruit_lemon', 'sounds_fruit_lemon')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(4, 'img_fruit_longan', 'sounds_fruit_longan')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(4, 'img_fruit_lychee', 'sounds_fruit_lychee')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(4, 'img_fruit_mango', 'sounds_fruit_mango')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(4, 'img_fruit_mangosteen', 'sounds_fruit_mangosteen')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(4, 'img_fruit_mulberry', 'sounds_fruit_mulberry')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(4, 'img_fruit_orange', 'sounds_fruit_orange')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(4, 'img_fruit_papaya', 'sounds_fruit_papaya')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(4, 'img_fruit_peaches', 'sounds_fruit_peaches')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(4, 'img_fruit_pear', 'sounds_fruit_pear')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(4, 'img_fruit_persimmon', 'sounds_fruit_persimmon')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(4, 'img_fruit_pineapple', 'sounds_fruit_pineapple')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(4, 'img_fruit_pomegranate', 'sounds_fruit_pomegranate')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(4, 'img_fruit_pomelo', 'sounds_fruit_pomelo')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(4, 'img_fruit_potato', 'sounds_fruit_potato')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(4, 'img_fruit_pumpkin', 'sounds_fruit_pumpkin')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(4, 'img_fruit_rambutan', 'sounds_fruit_rambutan')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(4, 'img_fruit_sapodilla', 'sounds_fruit_sapodilla')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(4, 'img_fruit_soursoup', 'sounds_fruit_soursoup')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(4, 'img_fruit_starapple', 'sounds_fruit_starapple')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(4, 'img_fruit_starfruit', 'sounds_fruit_starfruit')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(4, 'img_fruit_strawberry', 'sounds_fruit_strawberry')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(4, 'img_fruit_sweetpotato', 'sounds_fruit_sweetpotato')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(4, 'img_fruit_tamarind', 'sounds_fruit_tamarind')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(4, 'img_fruit_tomato', 'sounds_fruit_tomato')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(4, 'img_fruit_watermelon', 'sounds_fruit_watermelon')

INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(5, 'img_geometry_square', 'sounds_geometry_square')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(5, 'img_geometry_circle', 'sounds_geometry_circle')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(5, 'img_geometry_heart', 'sounds_geometry_heart')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(5, 'img_geometry_hexagon', 'sounds_geometry_hexagon')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(5, 'img_geometry_oval', 'sounds_geometry_oval')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(5, 'img_geometry_parallelogram', 'sounds_geometry_parallelogram')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(5, 'img_geometry_pentagon', 'sounds_geometry_pentagon')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(5, 'img_geometry_rectangle', 'sounds_geometry_rectangle')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(5, 'img_geometry_star', 'sounds_geometry_star')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(5, 'img_geometry_trapezoid', 'sounds_geometry_trapezoid')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(5, 'img_geometry_triangular', 'sounds_geometry_triangular')

INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(6, 'img_school_bag', 'sounds_school_bag')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(6, 'img_school_book', 'sounds_school_book')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(6, 'img_school_colorbox', 'sounds_school_colorbox')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(6, 'img_school_compass', 'sounds_school_compass')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(6, 'img_school_eraser', 'sounds_school_eraser')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(6, 'img_school_globe', 'sounds_school_globe')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(6, 'img_school_glue', 'sounds_school_glue')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(6, 'img_school_highlighter', 'sounds_school_highlighter')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(6, 'img_school_magnifyingglass', 'sounds_school_magnifyingglass')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(6, 'img_school_marker', 'sounds_school_marker')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(6, 'img_school_notebook', 'sounds_school_notebook')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(6, 'img_school_pen', 'sounds_school_pen')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(6, 'img_school_penbox', 'sounds_school_penbox')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(6, 'img_school_pencil', 'sounds_school_pencil')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(6, 'img_school_postitnotes', 'sounds_school_postitnotes')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(6, 'img_school_protractor', 'sounds_school_protractor')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(6, 'img_school_scissors', 'sounds_school_scissors')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(6, 'img_school_scotchtape', 'sounds_school_scotchtape')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(6, 'img_school_setsquare', 'sounds_school_setsquare')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(6, 'img_school_sharpener', 'sounds_school_sharpener')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(6, 'img_school_stapler', 'sounds_school_stapler')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(6, 'img_school_tapemeasure', 'sounds_school_tapemeasure')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(6, 'img_school_testtube', 'sounds_school_testtube')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(6, 'img_school_watercolour', 'sounds_school_watercolour')

INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(7, 'img_color_black', 'sounds_color_black')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(7, 'img_color_blue', 'sounds_color_blue')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(7, 'img_color_brown', 'sounds_color_brown')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(7, 'img_color_green', 'sounds_color_green')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(7, 'img_color_orange', 'sounds_color_orange')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(7, 'img_color_pink', 'sounds_color_pink')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(7, 'img_color_purple', 'sounds_color_purple')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(7, 'img_color_red', 'sounds_color_red')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(7, 'img_color_white', 'sounds_color_white')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(7, 'img_color_yellow', 'sounds_color_yellow')

INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(8, 'img_flower_apricotblossom', 'sounds_flower_apricotblossom')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(8, 'img_flower_azaleas', 'sounds_flower_azaleas')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(8, 'img_flower_bellflower', 'sounds_flower_bellflower')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(8, 'img_flower_carnation', 'sounds_flower_carnation')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(8, 'img_flower_chrysanthemum', 'sounds_flower_chrysanthemum')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(8, 'img_flower_confetti', 'sounds_flower_confetti')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(8, 'img_flower_dahlia', 'sounds_flower_dahlia')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(8, 'img_flower_dandelion', 'sounds_flower_dandelion')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(8, 'img_flower_flamingoflower', 'sounds_flower_flamingoflower')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(8, 'img_flower_gladiolus', 'sounds_flower_gladiolus')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(8, 'img_flower_hyacinth', 'sounds_flower_hyacinth')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(8, 'img_flower_hydrangea', 'sounds_flower_hydrangea')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(8, 'img_flower_jasmine', 'sounds_flower_jasmine')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(8, 'img_flower_lagerstroemia', 'sounds_flower_lagerstroemia')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(8, 'img_flower_lily', 'sounds_flower_lily')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(8, 'img_flower_lotus', 'sounds_flower_lotus')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(8, 'img_flower_narcissus', 'sounds_flower_narcissus')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(8, 'img_flower_orchid', 'sounds_flower_orchid')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(8, 'img_flower_peachblossom', 'sounds_flower_peachblossom')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(8, 'img_flower_peony', 'sounds_flower_peony')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(8, 'img_flower_rose', 'sounds_flower_rose')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(8, 'img_flower_sunflower', 'sounds_flower_sunflower')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(8, 'img_flower_tuberose', 'sounds_flower_tuberose')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(8, 'img_flower_tulipa', 'sounds_flower_tulipa')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(8, 'img_flower_violet', 'sounds_flower_violet')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(8, 'img_flower_waterlily', 'sounds_flower_waterlily')

INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(9, 'img_vehicle_ambulance', 'sounds_vehicle_ambulance')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(9, 'img_vehicle_babycarriage', 'sounds_vehicle_babycarriage')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(9, 'img_vehicle_bike', 'sounds_vehicle_bike')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(9, 'img_vehicle_bulldozer', 'sounds_vehicle_bulldozer')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(9, 'img_vehicle_bus', 'sounds_vehicle_bus')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(9, 'img_vehicle_canoe', 'sounds_vehicle_canoe')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(9, 'img_vehicle_car', 'sounds_vehicle_car')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(9, 'img_vehicle_cargoship', 'sounds_vehicle_cargoship')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(9, 'img_vehicle_concretemixertruck', 'sounds_vehicle_concretemixertruck')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(9, 'img_vehicle_cranetruck', 'sounds_vehicle_cranetruck')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(9, 'img_vehicle_cyclo', 'sounds_vehicle_cyclo')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(9, 'img_vehicle_ferry', 'sounds_vehicle_ferry')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(9, 'img_vehicle_firetruck', 'sounds_vehicle_firetruck')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(9, 'img_vehicle_forklift', 'sounds_vehicle_forklift')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(9, 'img_vehicle_glider', 'sounds_vehicle_glider')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(9, 'img_vehicle_helicopter', 'sounds_vehicle_helicopter')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(9, 'img_vehicle_hotairballoon', 'sounds_vehicle_hotairballoon')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(9, 'img_vehicle_motorbike', 'sounds_vehicle_motorbike')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(9, 'img_vehicle_policecar', 'sounds_vehicle_policecar')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(9, 'img_vehicle_racecar', 'sounds_vehicle_racecar')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(9, 'img_vehicle_roller', 'sounds_vehicle_roller')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(9, 'img_vehicle_sailboat', 'sounds_vehicle_sailboat')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(9, 'img_vehicle_ship', 'sounds_vehicle_ship')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(9, 'img_vehicle_skateboard', 'sounds_vehicle_skateboard')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(9, 'img_vehicle_submarine', 'sounds_vehicle_submarine')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(9, 'img_vehicle_tank', 'sounds_vehicle_tank')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(9, 'img_vehicle_train', 'sounds_vehicle_train')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(9, 'img_vehicle_truck', 'sounds_vehicle_truck')

INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(10, 'img_country_vietnam', 'sounds_country_vietnam')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(10, 'img_country_algeria', 'sounds_country_algeria')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(10, 'img_country_america', 'sounds_country_america')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(10, 'img_country_argentina', 'sounds_country_argentina')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(10, 'img_country_australia', 'sounds_country_australia')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(10, 'img_country_austria', 'sounds_country_austria')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(10, 'img_country_belgium', 'sounds_country_belgium')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(10, 'img_country_brazil', 'sounds_country_brazil')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(10, 'img_country_brunei', 'sounds_country_brunei')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(10, 'img_country_canada', 'sounds_country_canada')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(10, 'img_country_chile', 'sounds_country_chile')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(10, 'img_country_china', 'sounds_country_china')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(10, 'img_country_combodia', 'sounds_country_combodia')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(10, 'img_country_denmark', 'sounds_country_denmark')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(10, 'img_country_egypt', 'sounds_country_egypt')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(10, 'img_country_england', 'sounds_country_england')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(10, 'img_country_france', 'sounds_country_france')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(10, 'img_country_germany', 'sounds_country_germany')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(10, 'img_country_hungary', 'sounds_country_hungary')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(10, 'img_country_india', 'sounds_country_india')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(10, 'img_country_indonesia', 'sounds_country_indonesia')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(10, 'img_country_iran', 'sounds_country_iran')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(10, 'img_country_iraq', 'sounds_country_iraq')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(10, 'img_country_israel', 'sounds_country_israel')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(10, 'img_country_italy', 'sounds_country_italy')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(10, 'img_country_japan', 'sounds_country_japan')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(10, 'img_country_korea', 'sounds_country_korea')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(10, 'img_country_laos', 'sounds_country_laos')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(10, 'img_country_libya', 'sounds_country_libya')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(10, 'img_country_malaysia', 'sounds_country_malaysia')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(10, 'img_country_mexico', 'sounds_country_mexico')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(10, 'img_country_mongolia', 'sounds_country_mongolia')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(10, 'img_country_myanmar', 'sounds_country_myanmar')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(10, 'img_country_netherlands', 'sounds_country_netherlands')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(10, 'img_country_norway', 'sounds_country_norway')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(10, 'img_country_paraguay', 'sounds_country_paraguay')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(10, 'img_country_philippine', 'sounds_country_philippine')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(10, 'img_country_poland', 'sounds_country_poland')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(10, 'img_country_portugal', 'sounds_country_portugal')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(10, 'img_country_qatar', 'sounds_country_qatar')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(10, 'img_country_russia', 'sounds_country_russia')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(10, 'img_country_singapore', 'sounds_country_singapore')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(10, 'img_country_southafrica', 'sounds_country_southafrica')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(10, 'img_country_spain', 'sounds_country_spain')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(10, 'img_country_sweden', 'sounds_country_sweden')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(10, 'img_country_switzerland', 'sounds_country_switzerland')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(10, 'img_country_syria', 'sounds_country_syria')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(10, 'img_country_thailand', 'sounds_country_thailand')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(10, 'img_country_timorleste', 'sounds_country_timorleste')
INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(10, 'img_country_uruguay', 'sounds_country_uruguay')


Select * from BIGLIST

Select * from ACCOUNTS

Select * from ACCOUNTS