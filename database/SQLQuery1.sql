drop database if exists LanguageForKid;

create database LanguageForKid;

use LanguageForKid;

DROP TABLE IF EXISTS BIGLIST;

DROP TABLE IF EXISTS DETAIL;

CREATE TABLE BIGLIST(
	id INTEGER IDENTITY PRIMARY KEY, 
	Name nvarchar(max), 
	Image TEXT, 
	Sound TEXT
);

CREATE TABLE DETAIL(
	id INTEGER IDENTITY PRIMARY KEY, 
	id_big INTEGER, 
	dt_image TEXT, 
	dt_sound TEXT,
	image_link TEXT,
	sound_link TEXT
)

CREATE TABLE Account (
  id INTEGER IDENTITY PRIMARY KEY,
  username varchar(50) NOT NULL,
  password varchar(255) NOT NULL,
  email varchar(100) NOT NULL
)

INSERT INTO Account(username, password, email) VALUES ('user1', '12345678', 'user1@user.com');

--SELECT * FROM Account where username = 'user12' or email = 'user1@user.com2'

--SELECT * FROM Account WHERE username = 'user1' AND password = '12345678'

INSERT INTO BIGLIST(Name, Image, Sound)VALUES('BẢNG CHỮ CÁI', 'img_alphabet_a', 'sounds_start_bangchucai');
INSERT INTO BIGLIST(Name, Image, Sound)VALUES('CHỮ SỐ', 'img_number_0', 'sounds_start_chuso');
INSERT INTO BIGLIST(Name, Image, Sound)VALUES('ĐỘNG VẬT', 'img_animal_ant', 'sounds_start_cacloaidongvat');
INSERT INTO BIGLIST(Name, Image, Sound)VALUES('CÁC LOẠI HOA QUẢ', 'img_fruit_apple', 'sounds_start_cacloaihoaqua');
INSERT INTO BIGLIST(Name, Image, Sound)VALUES('HÌNH HỌC', 'img_geometry_square', 'sounds_start_cacdanghinhhoc');
INSERT INTO BIGLIST(Name, Image, Sound)VALUES('ĐỒ DÙNG HỌC TẬP', 'img_school_bag', 'sounds_start_dodunghoctap');
INSERT INTO BIGLIST(Name, Image, Sound)VALUES('MÀU SẮC', 'img_color_blue', 'sounds_start_cacloaimausac');
INSERT INTO BIGLIST(Name, Image, Sound)VALUES('CÁC LOẠI HOA', 'img_flower_apricotblossom', 'sounds_start_cacloaihoa');
INSERT INTO BIGLIST(Name, Image, Sound)VALUES('GIAO THÔNG', 'img_vehicle_ambulance', 'sounds_start_phuongtiengiaothong');
INSERT INTO BIGLIST(Name, Image, Sound)VALUES('QUỐC GIA', 'img_country_vietnam', 'sounds_start_quocgia');

INSERT INTO DETAIL(id_big, dt_image, dt_sound, sound_link)
VALUES(1, 'img_alphabet_a', 'sounds_alphabet_a', 'https://firebasestorage.googleapis.com/v0/b/languageforkid.appspot.com/o/sounds_alphabet_a.mp3?alt=media&token=f9ed9c96-6348-4618-b277-5ba81660b064');
INSERT INTO DETAIL(id_big, dt_image, dt_sound, sound_link)
VALUES(1, 'img_alphabet_b', 'sounds_alphabet_b', 'https://firebasestorage.googleapis.com/v0/b/languageforkid.appspot.com/o/sounds_alphabet_a1.mp3?alt=media&token=9364db9c-5d1a-4fa6-b639-a9d8308ba493');
INSERT INTO DETAIL(id_big, dt_image, dt_sound)
VALUES(1, 'img_alphabet_c', 'sounds_alphabet_c');
INSERT INTO DETAIL(id_big, dt_image, dt_sound)
VALUES(1, 'img_alphabet_d', 'sounds_alphabet_d');
INSERT INTO DETAIL(id_big, dt_image, dt_sound)
VALUES(1, 'img_alphabet_e', 'sounds_alphabet_e');
INSERT INTO DETAIL(id_big, dt_image, dt_sound)
VALUES(1, 'img_alphabet_g', 'sounds_alphabet_g');
INSERT INTO DETAIL(id_big, dt_image, dt_sound)
VALUES(1, 'img_alphabet_h', 'sounds_alphabet_h');
INSERT INTO DETAIL(id_big, dt_image, dt_sound)
VALUES(1, 'img_alphabet_i', 'sounds_alphabet_i');
INSERT INTO DETAIL(id_big, dt_image, dt_sound)
VALUES(1, 'img_alphabet_k', 'sounds_alphabet_k');
INSERT INTO DETAIL(id_big, dt_image, dt_sound)
VALUES(1, 'img_alphabet_l', 'sounds_alphabet_l');
INSERT INTO DETAIL(id_big, dt_image, dt_sound)
VALUES(1, 'img_alphabet_m', 'sounds_alphabet_m');
INSERT INTO DETAIL(id_big, dt_image, dt_sound)
VALUES(1, 'img_alphabet_n', 'sounds_alphabet_n');
INSERT INTO DETAIL(id_big, dt_image, dt_sound)
VALUES(1, 'img_alphabet_o', 'sounds_alphabet_o');
INSERT INTO DETAIL(id_big, dt_image, dt_sound)
VALUES(1, 'img_alphabet_p', 'sounds_alphabet_p');
INSERT INTO DETAIL(id_big, dt_image, dt_sound)
VALUES(1, 'img_alphabet_q', 'sounds_alphabet_q');
INSERT INTO DETAIL(id_big, dt_image, dt_sound)
VALUES(1, 'img_alphabet_r', 'sounds_alphabet_r');
INSERT INTO DETAIL(id_big, dt_image, dt_sound)
VALUES(1, 'img_alphabet_s', 'sounds_alphabet_s');
INSERT INTO DETAIL(id_big, dt_image, dt_sound)
VALUES(1, 'img_alphabet_t', 'sounds_alphabet_t');
INSERT INTO DETAIL(id_big, dt_image, dt_sound)
VALUES(1, 'img_alphabet_u', 'sounds_alphabet_u');
INSERT INTO DETAIL(id_big, dt_image, dt_sound)
VALUES(1, 'img_alphabet_v', 'sounds_alphabet_v');
INSERT INTO DETAIL(id_big, dt_image, dt_sound)
VALUES(1, 'img_alphabet_x', 'sounds_alphabet_x');
INSERT INTO DETAIL(id_big, dt_image, dt_sound)
VALUES(1, 'img_alphabet_y', 'sounds_alphabet_y');

		INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(2, 'img_number_0', 'sounds_number_0');
        INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(2, 'img_number_1', 'sounds_number_1');
        INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(2, 'img_number_2', 'sounds_number_2');
        INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(2, 'img_number_3', 'sounds_number_3');
        INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(2, 'img_number_4', 'sounds_number_4');
        INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(2, 'img_number_5', 'sounds_number_5');
        INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(2, 'img_number_6', 'sounds_number_6');
        INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(2, 'img_number_7', 'sounds_number_7');
        INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(2, 'img_number_8', 'sounds_number_8');
        INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(2, 'img_number_9', 'sounds_number_9');
        INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(2, 'img_number_10', 'sounds_number_10');
        INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(2, 'img_number_11', 'sounds_number_11');
        INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(2, 'img_number_12', 'sounds_number_12');
        INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(2, 'img_number_13', 'sounds_number_13');
        INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(2, 'img_number_14', 'sounds_number_14');
        INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(2, 'img_number_15', 'sounds_number_15');
        INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(2, 'img_number_16', 'sounds_number_16');
        INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(2, 'img_number_17', 'sounds_number_17');
        INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(2, 'img_number_18', 'sounds_number_18');
        INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(2, 'img_number_19', 'sounds_number_19');
        INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(2, 'img_number_20', 'sounds_number_20');

        INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(3, 'img_animal_ant', 'sounds_animal_ant')
        INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(3, 'img_animal_bear', 'sounds_animal_bear')
        INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(3, 'img_animal_bee', 'sounds_animal_bee')
        INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(3, 'img_animal_bird', 'sounds_animal_bird')
        INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(3, 'img_animal_buffalo', 'sounds_animal_buffalo')
        INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(3, 'img_animal_butterfly', 'sounds_animal_butterfly')
        INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(3, 'img_animal_cat', 'sounds_animal_cat')
        INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(3, 'img_animal_cow', 'sounds_animal_cow')
        INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(3, 'img_animal_deer', 'sounds_animal_deer')
        INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(3, 'img_animal_dog', 'sounds_animal_dog')
        INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(3, 'img_animal_dolphin', 'sounds_animal_dolphin')
        INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(3, 'img_animal_duck', 'sounds_animal_duck')
        INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(3, 'img_animal_elephant', 'sounds_animal_elephant')
        INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(3, 'img_animal_fox', 'sounds_animal_fox')
        INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(3, 'img_animal_frog', 'sounds_animal_frog')
        INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(3, 'img_animal_giraffe', 'sounds_animal_giraffe')
        INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(3, 'img_animal_goat', 'sounds_animal_goat')
        INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(3, 'img_animal_hen', 'sounds_animal_hen')
        INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(3, 'img_animal_hippo', 'sounds_animal_hippo')
        INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(3, 'img_animal_hippocampus', 'sounds_animal_hippocampus')
        INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(3, 'img_animal_horse', 'sounds_animal_horse')
        INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(3, 'img_animal_lion', 'sounds_animal_lion')
        INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(3, 'img_animal_monkey', 'sounds_animal_monkey')
        INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(3, 'img_animal_mouse', 'sounds_animal_mouse')
        INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(3, 'img_animal_ostrich', 'sounds_animal_ostrich')
        INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(3, 'img_animal_panda', 'sounds_animal_panda')
        INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(3, 'img_animal_panther', 'sounds_animal_panther')
        INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(3, 'img_animal_penguin', 'sounds_animal_penguin')
        INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(3, 'img_animal_pig', 'sounds_animal_pig')
        INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(3, 'img_animal_rabbit', 'sounds_animal_rabbit')
        INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(3, 'img_animal_rhino', 'sounds_animal_rhino')
        INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(3, 'img_animal_rooster', 'sounds_animal_rooster')
        INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(3, 'img_animal_shark', 'sounds_animal_shark')
        INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(3, 'img_animal_sheep', 'sounds_animal_sheep')
        INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(3, 'img_animal_snail', 'sounds_animal_snail')
        INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(3, 'img_animal_snake', 'sounds_animal_snake')
        INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(3, 'img_animal_squirrel', 'sounds_animal_squirrel')
        INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(3, 'img_animal_tiger', 'sounds_animal_tiger')
        INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(3, 'img_animal_turtle', 'sounds_animal_turtle')
        INSERT INTO DETAIL(id_big, dt_image, dt_sound)VALUES(3, 'img_animal_zebra', 'sounds_animal_zebra')

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
