--
-- Dumping data for table subscriptions
--
INSERT INTO `subscriptions` (`customer_id`, `subscription_code`) VALUES
(3, 1),
(16, 1),
(33, 1),
(35, 1),
(52, 1),
(85, 1),
(104, 1),
(114, 1),
(142, 1),
(162, 1),
(195, 1),
(196, 1),
(201, 1),
(221, 1),
(227, 1),
(251, 1),
(252, 1),
(293, 1),
(309, 1),
(394, 1),
(402, 1),
(439, 1),
(448, 1),
(469, 1),
(477, 1),
(497, 1),
(499, 1),
(512, 1),
(525, 1),
(541, 1),
(549, 1),
(556, 1),
(583, 1),
(596, 1);
--
-- Dumping data for table customer
--
INSERT INTO `customer` (`customer_id`, `first_name`, `last_name`, `email`, `address_id`, `active`, 
`create_date`) VALUES
(602, 'PENELOPE', 'BARBER', 'PENELOPE.BARBER@sakilacustomer.org', 407, 1, '2022-08-20 
12:00:00'),
(603, 'KAYLEY', 'SULLIVAN', 'KAYLEY.SULLIVAN@sakilacustomer.org', 231, 1, '2022-08-20 
12:00:00'),
(605, 'EMANUEL', 'LOWERY', 'EMANUEL.LOWERY@sakilacustomer.org', 314, 1, '2022-08-20 
12:00:00'),
(606, 'JANE', 'TRUJILLO', 'JANE.TRUJILLO@sakilacustomer.org', 56, 1, '2022-08-20 12:00:00'),
(608, 'BRITTANY', 'MCDOWELL', 'BRITTANY.MCDOWELL@sakilacustomer.org', 399, 1, '2022-08-
20 12:00:00'),
(611, 'JOSELYN', 'MOLINA', 'JOSELYN.MOLINA@sakilacustomer.org', 166, 1, '2022-08-20 
12:00:00'),
(613, 'JOEY', 'BARTON', 'JOEY.BARTON@sakilacustomer.org', 255, 1, '2022-08-20 12:00:00'),
(615, 'WESLEY', 'SAMPSON', 'WESLEY.SAMPSON@sakilacustomer.org', 199, 1, '2022-08-20 
12:00:00'),
(618, 'BREANNA', 'HODGES', 'BREANNA.HODGES@sakilacustomer.org', 555, 1, '2022-08-20 
12:00:00'),
(619, 'SKYE', 'ALVARADO', 'SKYE.ALVARADO@sakilacustomer.org', 20, 1, '2022-08-20 
12:00:00'),
(622, 'MADISYN', 'HATFIELD', 'MADISYN.HATFIELD@sakilacustomer.org', 562, 1, '2022-08-20 
12:00:00'),
(626, 'MAXIMILIAN', 'VASQUEZ', 'MAXIMILIAN.VASQUEZ@sakilacustomer.org', 482, 1, '2022-08-
20 12:00:00'),
(628, 'RODRIGO', 'GALLAGHER', 'RODRIGO.GALLAGHER@sakilacustomer.org', 108, 1, '2022-
08-20 12:00:00'),
(632, 'GAVYN', 'TAYLOR', 'GAVYN.TAYLOR@sakilacustomer.org', 531, 1, '2022-08-20 12:00:00'),
(635, 'DEMARCUS', 'CISNEROS', 'DEMARCUS.CISNEROS@sakilacustomer.org', 205, 1, '2022-
08-20 12:00:00'),
(638, 'KAILEY', 'SERRANO', 'KAILEY.SERRANO@sakilacustomer.org', 502, 1, '2022-08-20 
12:00:00'),
(643, 'COLIN', 'WOODARD', 'COLIN.WOODARD@sakilacustomer.org', 37, 1, '2022-08-20 
12:00:00'),
(645, 'AMELIE', 'TANNER', 'AMELIE.TANNER@sakilacustomer.org', 89, 1, '2022-08-20 12:00:00'),
(659, 'WINCENT', 'GONZALES', 'WINCENT.GONZALES@sakilacustomer.org', 444, 1, '2022-08-20 
12:00:00'),
(668, 'SHAYLEE', 'SHORT', 'SHAYLEE.SHORT@sakilacustomer.org', 118, 1, '2022-08-20 
12:00:00');
--
-- Dumping data for table subscriptions
--
INSERT INTO `subscriptions` (`customer_id`, `subscription_code`) VALUES
(602, 2),
(603, 2),
(605, 3),
(606, 3),
(608, 1),
(611, 2),
(613, 2),
(615, 2),
(618, 2),
(619, 2),
(622, 3),
(626, 3),
(628, 3),
(632, 2),
(635, 2),
(638, 2),
(643, 3),
(645, 3),
(659, 3),
(668, 2);
--
-- Dumping data for table subscription_fees
--
INSERT INTO `subscription_fees` (`subscription_code`, `film_fee`, `series_fee`) VALUES
(1, 0.4, 0),
(2, 0, 0.2),
(3, 0.3, 0.1);
--
-- Dumping data for table employees
--
INSERT INTO `employees` (`employee_id`, `first_name`, `last_name`, `email`) VALUES
(123, "Alexander", "Green", "alex.green@sakilaemployee.org"),
(124, "Athena", "Pappa", "athena.pappa@sakilaemployee.org"),
(125, "Andreas", "Eleftherakis", 'andreas.eleftherakis@sakilaemployee.org'),
(126, "George", "Ioannou", 'george.ioannou@sakilaemployee.org'),
(127, "Periklis", "Smith", "periklis.smith@sakilaemployee.org");
--
-- Dumping data for table administrator
--
INSERT INTO `administrator` (`administrator_id`, `first_name`, `last_name`, `email`) VALUES
(211, "Elena", "Vlachou", "elena.vlachou@sakiladmin.org"),
(212, "Nikos", "Pappas", "nikos.pappas@sakiladmin.org"),
(213, "Andreas", "Iacovou", "andreas.iacovou@sakiladmin.org");
--
-- Dumping data for table series
--
INSERT INTO `series` (`series_id`, `title`, `description`, `num_seasons`, `language_id`, 
`original_language_id`, `rating`, `special_features`) VALUES
(1001, 'The Sandman', 'Upon escaping after decades of imprisonment by a mortal wizard, Dream, 
the personification of dreams, sets about to reclaim his lost equipment', 1, 1, NULL, 'G', 'Deleted 
Scenes'),
(1002, 'Better Call Saul', 'The trials and tribulations of criminal lawyer Jimmy McGill before his 
fateful run-in with Walter White and Jesse Pinkman', 6, 1, 1, NULL, NULL),
(1003, 'Stranger Things', 'When a young boy disappears, his mother, a police chief and his friends 
must confront terrifying supernatural forces in order to get him back', 4, 1, 1, 'G', 'Behind the 
Scenes'),
(1004, 'Game of Thrones', 'Nine noble families fight for control over the lands of Westeros, while an 
ancient enemy returns after being dormant for millennia', 8, 1, NULL, 'G', NULL),
(1005, 'The Boys', 'A group of vigilantes set out to take down corrupt superheroes who abuse their 
superpowers', 3, 1, 1, 'G', 'Commentaries'),
(1006, 'Westworld', 'At the intersection of the near future and the reimagined past, waits a world in 
which every human appetite can be indulged without consequence', 4, 1, NULL, 'PG-13', NULL),
(1007, 'Breaking Bad', 'A high school chemistry teacher diagnosed with inoperable lung cancer 
turns to manufacturing and selling methamphetamine in order to secure his familys future', 5, 1, 1, 
'G', NULL);
--
-- Dumping data for table series_seasons
--
INSERT INTO `series_seasons` (`series_id`, `season_id`, `season_release_year`, 
`num_episodes`) VALUES
(1001, 1, 2022, 11),
(1002, 1, 2015, 10),
(1002, 2, 2016, 10),
(1002, 3, 2017, 10),
(1002, 4, 2018, 10),
(1002, 5, 2020, 10),
(1002, 6, 2022, 13),
(1003, 1, 2016, 8),
(1003, 2, 2017, 9),
(1003, 3, 2019, 8),
(1003, 4, 2022, 9),
(1004, 1, 2011, 10),
(1004, 2, 2012, 10),
(1004, 3, 2013, 10),
(1004, 4, 2014, 10),
(1004, 5, 2015, 10),
(1004, 6, 2016, 10),
(1004, 7, 2017, 7),
(1004, 8, 2019, 6),
(1005, 1, 2019, 8),
(1005, 2, 2020, 8),
(1005, 3, 2022, 8),
(1006, 1, 2016, 10),
(1006, 2, 2018, 10),
(1006, 3, 2020, 8),
(1006, 4, 2022, 8),
(1007, 1, 2008, 7),
(1007, 2, 2009, 13),
(1007, 3, 2010, 13),
(1007, 4, 2011, 13),
(1007, 5, 2012, 16);
--
-- Dumping data for table episodes
--
INSERT INTO `episodes` (`episode_id`, `series_id`, `season_id`) VALUES
(111, 1001, 1), (112, 1001, 1), (113, 1001, 1), (114, 1001, 1), (115, 1001, 1), 
(116, 1001, 1), (117, 1001, 1), (118, 1001, 1), (119, 1001, 1), (1110, 1001, 1), (1111, 1001, 1), 
(211, 1002, 1), (212, 1002, 1), (213, 1002, 1), (214, 1002, 1), (215, 1002, 1), 
(216, 1002, 1), (217, 1002, 1), (218, 1002, 1), (219, 1002, 1), (2110, 1002, 1), 
(221, 1002, 2), (222, 1002, 2), (223, 1002, 2), (224, 1002, 2), (225, 1002, 2), 
(226, 1002, 2), (227, 1002, 2), (228, 1002, 2), (229, 1002, 2), (2210, 1002, 2),
(231, 1002, 3), (232, 1002, 3), (233, 1002, 3), (234, 1002, 3), (235, 1002, 3),
(236, 1002, 3), (237, 1002, 3), (238, 1002, 3), (239, 1002, 3), (2310, 1002, 3),
(241, 1002, 4), (242, 1002, 4), (243, 1002, 4), (244, 1002, 4), (245, 1002, 4),
(246, 1002, 4), (247, 1002, 4), (248, 1002, 4), (249, 1002, 4), (2410, 1002, 4),
(251, 1002, 5), (252, 1002, 5), (253, 1002, 5), (254, 1002, 5), (255, 1002, 5),
(256, 1002, 5), (257, 1002, 5), (258, 1002, 5), (259, 1002, 5), (2510, 1002, 5), 
(261, 1002, 6), (262, 1002, 6), (263, 1002, 6), (264, 1002, 6), (265, 1002, 6),
(266, 1002, 6), (267, 1002, 6), (268, 1002, 6), (269, 1002, 6), (2610, 1002, 6),
(2611, 1002, 6), (2612, 1002, 6), (2613, 1002, 6),
(311, 1003, 1), (312, 1003, 1), (313, 1003, 1), (314, 1003, 1),
(315, 1003, 1), (316, 1003, 1), (317, 1003, 1), (318, 1003, 1),
(321, 1003, 2), (322, 1003, 2), (323, 1003, 2), (324, 1003, 2),
(325, 1003, 2), (326, 1003, 2), (327, 1003, 2), (328, 1003, 2), (329, 1003, 2),
(331, 1003, 3), (332, 1003, 3), (333, 1003, 3), (334, 1003, 3),
(335, 1003, 3), (336, 1003, 3), (337, 1003, 3), (338, 1003, 3),
(341, 1003, 4), (342, 1003, 4), (343, 1003, 4), (344, 1003, 4),
(345, 1003, 4), (346, 1003, 4), (347, 1003, 4), (348, 1003, 4), (349, 1003, 4),
(411, 1004, 1), (412, 1004, 1), (413, 1004, 1), (414, 1004, 1), (415, 1004, 1),
(416, 1004, 1), (417, 1004, 1), (418, 1004, 1), (419, 1004, 1), (4110, 1004, 1), 
(421, 1004, 2), (422, 1004, 2), (423, 1004, 2), (424, 1004, 2), (425, 1004, 2),
(426, 1004, 2), (427, 1004, 2), (428, 1004, 2), (429, 1004, 2), (4210, 1004, 2), 
(431, 1004, 3), (432, 1004, 3), (433, 1004, 3), (434, 1004, 3), (435, 1004, 3),
(436, 1004, 3), (437, 1004, 3), (438, 1004, 3), (439, 1004, 3), (4310, 1004, 3), 
(441, 1004, 4), (442, 1004, 4), (443, 1004, 4), (444, 1004, 4), (445, 1004, 4),
(446, 1004, 4), (447, 1004, 4), (448, 1004, 4), (449, 1004, 4), (4410, 1004, 4),
(451, 1004, 5), (452, 1004, 5), (453, 1004, 5), (454, 1004, 5), (455, 1004, 5),
(456, 1004, 5), (457, 1004, 5), (458, 1004, 5), (459, 1004, 5), (4510, 1004, 5),
(461, 1004, 6), (462, 1004, 6), (463, 1004, 6), (464, 1004, 6), (465, 1004, 6),
(466, 1004, 6), (467, 1004, 6), (468, 1004, 6), (469, 1004, 6), (4610, 1004, 6),
(471, 1004, 7), (472, 1004, 7), (473, 1004, 7), (474, 1004, 7), (475, 1004, 7),
(476, 1004, 7), (477, 1004, 7),
(481, 1004, 8), (482, 1004, 8), (483, 1004, 8), 
(484, 1004, 8), (485, 1004, 8), (486, 1004, 8),
(511, 1005, 1), (512, 1005, 1), (513, 1005, 1), (514, 1005, 1), 
(515, 1005, 1), (516, 1005, 1), (517, 1005, 1), (518, 1005, 1), 
(521, 1005, 2), (522, 1005, 2), (523, 1005, 2), (524, 1005, 2), 
(525, 1005, 2), (526, 1005, 2), (527, 1005, 2), (528, 1005, 2), 
(531, 1005, 3), (532, 1005, 3), (533, 1005, 3), (534, 1005, 3), 
(535, 1005, 3), (536, 1005, 3), (537, 1005, 3), (538, 1005, 3), 
(611, 1006, 1), (612, 1006, 1), (613, 1006, 1), (614, 1006, 1), (615, 1006, 1), 
(616, 1006, 1), (617, 1006, 1), (618, 1006, 1), (619, 1006, 1), (6110, 1006, 1), 
(621, 1006, 2), (622, 1006, 2), (623, 1006, 2), (624, 1006, 2), (625, 1006, 2), 
(626, 1006, 2), (627, 1006, 2), (628, 1006, 2), (629, 1006, 2), (6210, 1006, 2), 
(631, 1006, 3), (632, 1006, 3), (633, 1006, 3), (634, 1006, 3), 
(635, 1006, 3), (636, 1006, 3), (637, 1006, 3), (638, 1006, 3), 
(641, 1006, 4), (642, 1006, 4), (643, 1006, 4), (644, 1006, 4), 
(645, 1006, 4), (646, 1006, 4), (647, 1006, 4), (648, 1006, 4), 
(711, 1007, 1), (712, 1007, 1), (713, 1007, 1), (714, 1007, 1), 
(715, 1007, 1), (716, 1007, 1), (717, 1007, 1), 
(721, 1007, 2), (722, 1007, 2), (723, 1007, 2), (724, 1007, 2), (725, 1007, 2), 
(726, 1007, 2), (727, 1007, 2), (728, 1007, 2), (729, 1007, 2), (7210, 1007, 2), 
(7211, 1007, 2), (7212, 1007, 2), (7213, 1007, 2), 
(731, 1007, 3), (732, 1007, 3), (733, 1007, 3), (734, 1007, 3), (735, 1007, 3), 
(736, 1007, 3), (737, 1007, 3), (738, 1007, 3), (739, 1007, 3), (7310, 1007, 3), 
(7311, 1007, 3), (7312, 1007, 3), (7313, 1007, 3), 
(741, 1007, 4), (742, 1007, 4), (743, 1007, 4), (744, 1007, 4), (745, 1007, 4), 
(746, 1007, 4), (747, 1007, 4), (748, 1007, 4), (749, 1007, 4), (7410, 1007, 4), 
(7411, 1007, 4), (7412, 1007, 4), (7413, 1007, 4), 
(751, 1007, 5), (752, 1007, 5), (753, 1007, 5), (754, 1007, 5), 
(755, 1007, 5), (756, 1007, 5), (757, 1007, 5), (758, 1007, 5), 
(759, 1007, 5), (7510, 1007, 5), (7511, 1007, 5), (7512, 1007, 5), 
(7513, 1007, 5), (7514, 1007, 5), (7515, 1007, 5), (7516, 1007, 5);
--
-- Dumping data for table actor
--
INSERT INTO `actor` (`actor_id`, `first_name`, `last_name`) VALUES
(10011,'TOM','STURRIDGE'),
(10012,'BOYD','HOLBROOK'),
(10013,'PATTON','OSWALT'),
(10014, 'BOB', 'ODENKIRK'),
(10015, 'RHEA', 'SEEHORN'),
(10016, 'JONATHAN', 'BANKS'),
(10017, 'MILLIE', 'BOBBY BROWN'),
(10018, 'FINN', 'WOLFHARD'),
(10019, 'WINONA', 'RYDER'),
(10020, 'EMILIA', 'CLARKE'),
(10021, 'PETER', 'DINKLAGE'),
(10022, 'KIT', 'HARINGTON'),
(10023, 'KARL', 'URBAN'),
(10024, 'JACK', 'QUAID'),
(10025, 'ANTONY', 'STARR'),
(10026, 'EVAN', 'RACHEL'),
(10027, 'WOOD', 'JEFFREY WRIGHT'),
(10028, 'ED', 'HARIS'),
(10029, 'BRYAN', 'CRANSTON'),
(10030, 'AARON', 'PAUL'),
(10031, 'ANNA', 'GUNN');
--
-- Dumping data for table series_actor
--
INSERT INTO `series_actor` (`actor_id`, `series_id`) VALUES
(10011, 1001),
(10012, 1001),
(10013, 1001),
(10014, 1002),
(10015, 1002),
(10016, 1002),
(10017, 1003),
(10018, 1003),
(10019, 1003),
(10020, 1004),
(10021, 1004),
(10022, 1004),
(10023, 1005),
(10024, 1005),
(10025, 1005),
(10026, 1006),
(10027, 1006),
(10028, 1006),
(10029, 1007),
(10030, 1007),
(10031, 1007);
--
-- Dumping data for table series_category
--
INSERT INTO `series_category` (`series_id`, `category_id`) VALUES
(1001, 11),
(1002, 7),
(1003, 7),
(1004, 1),
(1005, 1),
(1006, 14),
(1007, 7);
--
-- Dumping data for table inventory
--
INSERT INTO `inventory` (`inventory_id`, `film_id`, `episode_id`) VALUES
(4501, NULL, 111), (4502, NULL, 112), (4503, NULL, 113), (4504, NULL, 114), (4505, NULL, 115),
(4506, NULL, 116), (4507, NULL, 117), (4508, NULL, 118), (4509, NULL, 119), (4510, NULL, 
1110), (4511, NULL, 1111),
(4601, NULL, 211), (4602, NULL, 212), (4603, NULL, 213), (4604, NULL, 214), (4605, NULL, 215),
(4606, NULL, 216), (4607, NULL, 217), (4608, NULL, 218), (4609, NULL, 219), (4610, NULL, 
2110),
(4611, NULL, 221), (4612, NULL, 222), (4613, NULL, 223), (4614, NULL, 224), (4615, NULL, 225),
(4616, NULL, 226), (4617, NULL, 227), (4618, NULL, 228), (4619, NULL, 229), (4620, NULL, 
2210),
(4621, NULL, 231), (4622, NULL, 232), (4623, NULL, 233), (4624, NULL, 234), (4625, NULL, 235),
(4626, NULL, 236), (4627, NULL, 237), (4628, NULL, 238), (4629, NULL, 239), (4630, NULL, 
2310),
(4631, NULL, 241), (4632, NULL, 242), (4633, NULL, 243), (4634, NULL, 244), (4635, NULL, 245),
(4636, NULL, 246), (4637, NULL, 247), (4638, NULL, 248), (4639, NULL, 249), (4640, NULL, 
2410),
(4641, NULL, 251), (4642, NULL, 252), (4643, NULL, 253), (4644, NULL, 254), (4645, NULL, 255),
(4646, NULL, 256), (4647, NULL, 257), (4648, NULL, 258), (4649, NULL, 259), (4650, NULL, 
2510),
(4651, NULL, 261), (4652, NULL, 262), (4653, NULL, 263), (4654, NULL, 264), (4655, NULL, 265),
(4656, NULL, 266), (4657, NULL, 267), (4658, NULL, 268), (4659, NULL, 269), (4660, NULL, 
2610),
(4661, NULL, 2611), (4662, NULL, 2612), (4663, NULL, 2613),
(4701, NULL, 311), (4702, NULL, 312), (4703, NULL, 313), (4704, NULL, 314), 
(4705, NULL, 315), (4706, NULL, 316), (4707, NULL, 317), (4708, NULL, 318), 
(4709, NULL, 321), (4710, NULL, 322), (4711, NULL, 323), (4712, NULL, 324),
(4713, NULL, 325), (4714, NULL, 326), (4715, NULL, 327), (4716, NULL, 328), (4717, NULL, 329), 
(4718, NULL, 331), (4719, NULL, 332), (4720, NULL, 333), (4721, NULL, 334), 
(4722, NULL, 335), (4723, NULL, 336), (4724, NULL, 337), (4725, NULL, 338), 
(4726, NULL, 341), (4727, NULL, 342), (4728, NULL, 343), (4729, NULL, 344), 
(4730, NULL, 345), (4731, NULL, 346), (4732, NULL, 347), (4733, NULL, 348), (4734, NULL, 349), 
(4801, NULL, 411), (4802, NULL, 412), (4803, NULL, 413), (4804, NULL, 414), (4805, NULL, 415), 
(4806, NULL, 416), (4807, NULL, 417), (4808, NULL, 418), (4809, NULL, 419), (4810, NULL, 
4110), 
(4811, NULL, 421), (4812, NULL, 422), (4813, NULL, 423), (4814, NULL, 424), (4815, NULL, 425), 
(4816, NULL, 426), (4817, NULL, 427), (4818, NULL, 428), (4819, NULL, 429), (4820, NULL, 
4210), 
(4821, NULL, 431), (4822, NULL, 432), (4823, NULL, 433), (4824, NULL, 434), (4825, NULL, 435), 
(4826, NULL, 436), (4827, NULL, 437), (4828, NULL, 438), (4829, NULL, 439), (4830, NULL, 
4310), 
(4831, NULL, 441), (4832, NULL, 442), (4833, NULL, 443), (4834, NULL, 444), (4835, NULL, 445), 
(4836, NULL, 446), (4837, NULL, 447), (4838, NULL, 448), (4839, NULL, 449), (4840, NULL, 
4410), 
(4841, NULL, 451), (4842, NULL, 452), (4843, NULL, 453), (4844, NULL, 454), (4845, NULL, 455), 
(4846, NULL, 456), (4847, NULL, 457), (4848, NULL, 458), (4849, NULL, 459), (4850, NULL, 
4510), 
(4851, NULL, 461), (4852, NULL, 462), (4853, NULL, 463), (4854, NULL, 464), (4855, NULL, 465), 
(4856, NULL, 466), (4857, NULL, 467), (4858, NULL, 468), (4859, NULL, 469), (4860, NULL, 
4610), 
(4861, NULL, 471), (4862, NULL, 472), (4863, NULL, 473), (4864, NULL, 474), 
(4865, NULL, 475), (4866, NULL, 476), (4867, NULL, 477), 
(4868, NULL, 481), (4869, NULL, 482), (4870, NULL, 483), 
(4871, NULL, 484), (4872, NULL, 485), (4873, NULL, 486), 
(4901, NULL, 511), (4902, NULL, 512), (4903, NULL, 513), (4904, NULL, 514), 
(4905, NULL, 515), (4906, NULL, 516), (4907, NULL, 517), (4908, NULL, 518), 
(4909, NULL, 521), (4910, NULL, 522), (4911, NULL, 523), (4912, NULL, 524), 
(4913, NULL, 525), (4914, NULL, 526), (4915, NULL, 527), (4916, NULL, 528), 
(4917, NULL, 531), (4918, NULL, 532), (4919, NULL, 533), (4920, NULL, 534), 
(4921, NULL, 535), (4922, NULL, 536), (4923, NULL, 537), (4924, NULL, 538), 
(5001, NULL, 611), (5002, NULL, 612), (5003, NULL, 613), (5004, NULL, 614), (5005, NULL, 615),
(5006, NULL, 616), (5007, NULL, 617), (5008, NULL, 618), (5009, NULL, 619), (5010, NULL, 
6110),
(5011, NULL, 621), (5012, NULL, 622), (5013, NULL, 623), (5014, NULL, 624), (5015, NULL, 625),
(5016, NULL, 626), (5017, NULL, 627), (5018, NULL, 628), (5019, NULL, 629), (5020, NULL, 
6210),
(5021, NULL, 631), (5022, NULL, 632), (5023, NULL, 633), (5024, NULL, 634),
(5025, NULL, 635), (5026, NULL, 636), (5027, NULL, 637), (5028, NULL, 638),
(5029, NULL, 641), (5030, NULL, 642), (5031, NULL, 643), (5032, NULL, 644),
(5033, NULL, 645), (5034, NULL, 646), (5035, NULL, 647),(5036, NULL, 648),
(5101, NULL, 711), (5102, NULL, 712), (5103, NULL, 713), (5104, NULL, 714), 
(5105, NULL, 715), (5106, NULL, 716), (5107, NULL, 717), 
(5108, NULL, 721), (5109, NULL, 722), (5110, NULL, 723), (5111, NULL, 724), (5112, NULL, 725), 
(5113, NULL, 726), (5114, NULL, 727), (5115, NULL, 728), (5116, NULL, 729), (5117, NULL, 
7210), 
(5118, NULL, 7211), (5119, NULL, 7212), (5120, NULL, 7213), 
(5121, NULL, 731), (5122, NULL, 732), (5123, NULL, 733), (5124, NULL, 734), (5125, NULL, 735), 
(5126, NULL, 736), (5127, NULL, 737), (5128, NULL, 738), (5129, NULL, 739), (5130, NULL, 
7310), 
(5131, NULL, 7311), (5132, NULL, 7312), (5133, NULL, 7313), 
(5134, NULL, 741), (5135, NULL, 742), (5136, NULL, 743), (5137, NULL, 744), (5138, NULL, 745), 
(5139, NULL, 746), (5140, NULL, 747), (5141, NULL, 748), (5142, NULL, 749), (5143, NULL, 
7410), 
(5144, NULL, 7411), (5145, NULL, 7412), (5146, NULL, 7413), 
(5147, NULL, 751), (5148, NULL, 752), (5149, NULL, 753), (5150, NULL, 754), 
(5151, NULL, 755), (5152, NULL, 756), (5153, NULL, 757), (5154, NULL, 758), 
(5155, NULL, 759), (5156, NULL, 7510), (5157, NULL, 7511), (5158, NULL, 7512), 
(5159, NULL, 7513), (5160, NULL, 7514), (5161, NULL, 7515), (5162, NULL, 7516);
--
-- Dumping data for table rental
--
INSERT INTO `rental` (`rental_id`, `rental_date`, `inventory_id`, `customer_id`) VALUES
(20001, '2022-08-22 01:25:08', 4501, 602),
(20002, '2022-08-22 01:55:08', 4502, 602),
(20003, '2022-08-22 02:35:08', 4503, 602),
(20004, '2022-08-22 04:03:13', 4504, 602),
(20005, '2022-08-22 07:00:08', 4505, 602),
(20006, '2022-08-22 09:00:08', 4511, 605);
(20007, '2022-08-22 11:01:13', 1061, 602);
INSERT INTO `rental` (`rental_id`, `rental_date`, `inventory_id`, `customer_id`) VALUES
(20008, '2022-08-22 14:31:09', 4924, 626),
(20009, '2022-08-22 16:37:09', 4917, 626),
(200010, '2022-08-22 16:48:09', 4720, 618);
--
-- Dumping data for table payment
--
INSERT INTO `payment` (`payment_id`, `customer_id`, `rental_id`, `amount`, `payment_date`) 
VALUES
(16001, 602, 20001, '0.20', '2022-08-22 01:25:08'),
(16002, 602, 20002, '0.20', '2022-08-22 01:55:08'),
(16003, 602, 20003, '0.20', '2022-08-22 02:35:08'),
(16004, 602, 20004, '0.20', '2022-08-22 04:03:13'),
(16005, 602, 20005, '0.20', '2022-08-22 07:00:08'),
(16006, 605, 20006, '0.10', '2022-08-22 09:00:08');
INSERT INTO `payment` (`payment_id`, `customer_id`, `rental_id`, `amount`, `payment_date`) 
VALUES
(16007, 626, 20008, '0.10', '2022-08-22 14:31:09'),
(16008, 626, 20009, '0.10', '2022-08-22 16:37:09'),
(16009, 618, 200010, '0.20', '2022-08-22 16:48:09');
--
-- Dumping data for table log_table
--
INSERT INTO `log_table` (`username`, `user_type`, `action_type`, `action_table`, 
`action_datetime_`, `if_successful`) VALUES
('elena.vlachou@sakiladmin.org', 'Administrator', 'update', 'RENTAL', '2022-08-29 12:00:00', 1);




