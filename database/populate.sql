USE lgl;
DELETE FROM Ingredient_Grp;
DELETE FROM Recipe_Measurement;
DELETE FROM Measurement;
DELETE FROM Recipe;
DELETE FROM Grp;
DELETE FROM Ingredient;
DELETE FROM Category;
INSERT INTO Category(category_id, category_name) VALUES 
(1, 'Chilled Goods'),
(2, 'Assorted'),
(3, 'Cereals'),
(4, 'Fresh Fruit'),
(5, 'Liquids'),
(6, 'Herbs + Spices'),
(7, 'Canned Meals'),
(8, 'Rice & Grains'),
(9, 'Snacks'),
(10, 'Ambient Stock'),
(11, 'Canned Pulses'),
(12, 'Bread Loafs'),
(13, 'Dried Fruit'),
(14, 'Nuts & Seeds'),
(15, 'Pasta'),
(16, 'Baking Goods'),
(17, 'Fresh Vegetables'),
(18, 'Pulses');
INSERT INTO Grp(grp_id, grp_name) VALUES 
(1, 'CHEESE'),
(2, 'OIL'),
(3, 'COURGETTE'),
(4, 'COUSCOUS'),
(5, 'POTATO'),
(6, 'ALMOND'),
(7, 'MUSHROOM'),
(8, 'CRACKERS'),
(9, 'TOMATO'),
(10, 'MEATBALLS'),
(11, 'BREAD'),
(12, 'BEAN'),
(13, 'FLOUR'),
(14, 'GINGER'),
(15, 'RICE'),
(16, 'PEANUT'),
(17, 'CURRY'),
(18, 'PASTA'),
(19, 'LENTILS'),
(20, 'BUTTER'),
(21, 'ONION'),
(22, 'SOUP'),
(23, 'QUINOA'),
(24, 'PEA'),
(25, 'CUMIN'),
(26, 'APPLE'),
(27, 'OATS'),
(28, 'MILK'),
(29, 'PINEAPPLE'),
(30, 'CHILLI'),
(31, 'MAYO'),
(32, 'BERRY');
INSERT INTO Ingredient(ingredient_id, category_id, ingredient_name, store_has,
vegan, fillable, weightable, chilled, organic, jarred, canned) VALUES 
(1, 11, 'Baked beans', True, True, False, False, False, True, False, True),
(2, 11, 'Black beans', True, True, False, False, False, True, False, True),
(3, 11, 'Chickpeas', True, True, False, False, False, True, False, True),
(4, 11, 'Cannellini beans', True, True, False, False, False, True, False, True),
(5, 11, 'Mixed beans', True, True, False, False, False, True, False, True),
(6, 11, 'Red kidney beans', True, True, False, False, False, True, False, True),
(7, 11, 'Sweetcorn', True, True, False, False, False, True, False, True),
(8, 7, 'Vegan baked beans & burgers', True, True, False, False, False, False, False, True),
(9, 7, 'Vegan baked beans & sausages', True, True, False, False, False, False, False, True),
(10, 7, 'Vegan meatballs', True, True, False, False, False, False, False, True),
(11, 7, 'Vegan meatballs chilli', True, True, False, False, False, False, False, True),
(12, 7, 'Vegan minestrone soup', True, True, False, False, False, False, False, True),
(13, 7, 'Vegan pea & ham soup', True, True, False, False, False, False, False, True),
(14, 7, 'Vegan tuscan bean soup', True, True, False, False, False, False, False, True),
(15, 2, 'Bombay potatoes', True, True, False, False, False, True, False, False),
(16, 2, 'Jackfruit', True, True, False, False, False, True, False, False),
(17, 2, 'Moroccan & chickpea tagine', True, True, False, False, False, True, False, False),
(18, 2, 'Coconut & kale dahl', True, True, False, False, False, True, False, False),
(19, 2, 'Banana blossom', True, True, False, False, False, False, False, False),
(20, 2, 'Coconut milk', True, True, False, False, False, False, False, False),
(21, 2, 'Sweetened condensed coconut milk', True, True, False, False, False, False, False, False),
(22, 2, 'Tempeh', True, True, False, False, False, False, False, False),
(23, 10, 'Balti', True, True, False, False, False, False, True, False),
(24, 10, 'Tikka', True, True, False, False, False, False, True, False),
(25, 10, 'Korma', True, True, False, False, False, False, True, False),
(26, 10, 'Thai red', True, True, False, False, False, False, True, False),
(27, 10, 'Thai green', True, True, False, False, False, False, True, False),
(28, 10, 'Vego crunchy spread', True, True, False, False, False, False, True, False),
(29, 10, 'Dark chocolate spread', True, True, False, False, False, False, True, False),
(30, 10, 'Organic vegan mayo', True, True, False, False, False, False, True, False),
(31, 10, 'Garlic vegan mayo', True, True, False, False, False, False, True, False),
(32, 10, 'Tahini', True, True, False, False, False, False, True, False),
(33, 10, 'Tempah', True, True, False, False, False, False, True, False),
(34, 10, 'Tomato passata', True, True, False, False, False, False, True, False),
(35, 10, 'Tomato puree', True, True, False, False, False, False, True, False),
(36, 10, 'Virgin coconut oil', True, True, False, False, False, False, True, False),
(37, 10, 'Tofu', True, True, False, False, False, True, True, False),
(38, 16, 'Cocoa powder', True, True, True, False, False, True, False, False),
(39, 16, 'Icing sugar', True, True, True, False, False, True, False, False),
(40, 16, 'Hemp powder', True, True, True, False, False, True, False, False),
(41, 16, 'Nut roast', True, True, True, False, False, False, False, False),
(42, 16, 'B12 yeast flakes', True, True, True, False, False, False, False, False),
(43, 16, 'Baking powder', True, True, True, False, False, False, False, False),
(44, 16, 'Bicarbonate of soda', True, True, True, False, False, False, False, False),
(45, 16, 'Coconut milk powder', True, True, True, False, False, False, False, False),
(46, 16, 'Cornflour', True, True, True, False, False, False, False, False),
(47, 16, 'Desiccated coconut', True, True, True, False, False, False, False, False),
(48, 16, 'Falafel mix', True, True, True, False, False, False, False, False),
(49, 16, 'Fast acting yeast', True, True, True, False, False, False, False, False),
(50, 16, 'Ground almonds', True, True, True, False, False, False, False, False),
(51, 16, 'Plain white flour', True, True, True, False, False, False, False, False),
(52, 16, 'Sea salt crystals', True, True, True, False, False, False, False, False),
(53, 16, 'TVP chunks', True, True, True, False, False, False, False, False),
(54, 16, 'TVP mince', True, True, True, False, False, False, False, False),
(55, 16, 'TVP mince fine', True, True, True, False, False, False, False, False),
(56, 16, 'Vegetable burger mix', True, True, True, False, False, False, False, False),
(57, 16, 'Vegetable sausage mix', True, True, True, False, False, False, False, False),
(58, 16, 'Vegetable stock powder', True, True, True, False, False, False, False, False),
(59, 16, 'Vegetable suet', True, True, True, False, False, False, False, False),
(60, 16, 'Vital wheat gluten', True, True, True, False, False, False, False, False),
(61, 16, 'White caster sugar', True, True, True, False, False, False, False, False),
(62, 16, 'White self-raising flour', True, True, True, False, False, False, False, False),
(63, 12, 'Cornbread', True, True, False, False, False, False, False, False),
(64, 12, 'Focaccia', True, True, False, False, False, False, False, False),
(65, 12, 'French cobb', True, True, False, False, False, False, False, False),
(66, 12, 'Multi-seed', True, True, False, False, False, False, False, False),
(67, 12, 'Sour dough', True, True, False, False, False, False, False, False),
(68, 12, ' Cheese and Chilli bread', True, False, False, False, False, False, False, False),
(69, 12, ' Cheese and Leek bread', True, False, False, False, False, False, False, False),
(70, 3, 'Bran sticks', True, True, True, False, False, False, False, False),
(71, 3, 'Fruit and nut muesli', True, True, True, False, False, False, False, False),
(72, 3, 'Granola mix', True, True, True, False, False, False, False, False),
(73, 3, 'Jumbo oats', True, True, True, False, False, False, False, False),
(74, 3, 'Pinhead oatmeal', True, True, True, False, False, False, False, False),
(75, 3, 'Porridge oats', True, True, True, False, False, False, False, False),
(76, 1, 'Assortment of Vegan Cheeses', True, True, False, False, True, False, False, False),
(77, 1, 'Creamy Oat Cream', True, True, False, False, True, False, False, False),
(78, 1, 'Flora plant butter', True, True, False, False, True, False, False, False),
(79, 1, 'Oat milk', True, True, False, False, True, False, False, False),
(80, 1, 'Vanilla custard', True, True, False, False, True, False, False, False),
(81, 1, 'Vegan block (butter)', True, True, False, False, True, False, False, False),
(82, 13, 'Apple rings', True, True, True, False, False, False, False, False),
(83, 13, 'Apricots', True, True, True, False, False, False, False, False),
(84, 13, 'Banana chips', True, True, True, False, False, False, False, False),
(85, 13, 'Cranberries', True, True, True, False, False, False, False, False),
(86, 13, 'Currants', True, True, True, False, False, False, False, False),
(87, 13, 'Dates', True, True, True, False, False, False, False, False),
(88, 13, 'Exotic fruit mix', True, True, True, False, False, False, False, False),
(89, 13, 'Glace cherries - BERRY', True, True, True, False, False, False, False, False),
(90, 13, 'Goji berries', True, True, True, False, False, False, False, False),
(91, 13, 'Mixed mushrooms', True, True, True, False, False, False, False, False),
(92, 13, 'Mixed peel', True, True, True, False, False, False, False, False),
(93, 13, 'Papaya cubes', True, True, True, False, False, False, False, False),
(94, 13, 'Pineapple cubes', True, True, True, False, False, False, False, False),
(95, 13, 'Pineapple dried pieces', True, True, True, False, False, False, False, False),
(96, 13, 'Prunes', True, True, True, False, False, False, False, False),
(97, 13, 'Raisins', True, True, True, False, False, False, False, False),
(98, 13, 'Sultanas', True, True, True, False, False, False, False, False),
(99, 13, 'Sundried tomatoes', True, True, True, False, False, False, False, False),
(100, 4, 'Braeburn apples', True, True, False, False, False, False, False, False),
(101, 4, 'Gala apples', True, True, False, False, False, False, False, False),
(102, 4, 'Golden delicious apples', True, True, False, False, False, False, False, False),
(103, 4, 'Red delicious apples', True, True, False, False, False, False, False, False),
(104, 4, 'Avocado', True, True, False, False, False, False, False, False),
(105, 4, 'Blackberries', True, True, False, False, False, False, False, False),
(106, 4, 'Blueberries', True, True, False, False, False, False, False, False),
(107, 4, 'Brambles', True, True, False, False, False, False, False, False),
(108, 4, 'Cherries', True, True, False, False, False, False, False, False),
(109, 4, 'Raspberries', True, True, False, False, False, False, False, False),
(110, 4, 'Strawberries', True, True, False, False, False, False, False, False),
(111, 4, 'Custard apples', True, True, False, False, False, False, False, False),
(112, 4, 'Grapefruit', True, True, False, False, False, False, False, False),
(113, 4, 'Kiwi', True, True, False, False, False, False, False, False),
(114, 4, 'Lemons', True, True, False, False, False, False, False, False),
(115, 4, 'Limes', True, True, False, False, False, False, False, False),
(116, 4, 'Melons', True, True, False, False, False, False, False, False),
(117, 4, 'Nectarines', True, True, False, False, False, False, False, False),
(118, 4, 'Oranges', True, True, False, False, False, False, False, False),
(119, 4, 'Passion fruits', True, True, False, False, False, False, False, False),
(120, 4, 'Flat peaches', True, True, False, False, False, False, False, False),
(121, 4, 'Pear', True, True, False, False, False, False, False, False),
(122, 4, 'Persimmons', True, True, False, False, False, False, False, False),
(123, 4, 'Ghost pumpkin', True, True, False, False, False, False, False, False),
(124, 4, 'Satsumas', True, True, False, False, False, False, False, False),
(125, 4, 'Butternut squash', True, True, False, False, False, False, False, False),
(126, 4, 'Banana', True, True, False, True, False, False, False, False),
(127, 4, 'Grapes', True, True, False, True, False, False, False, False),
(128, 4, 'Plums', True, True, False, True, False, False, False, False),
(129, 17, 'Artichoke', True, True, False, False, False, False, False, False),
(130, 17, 'Baking potatoes', True, True, False, False, False, False, False, False),
(131, 17, 'Broccoli', True, True, False, False, False, False, False, False),
(132, 17, 'Red cabbage', True, True, False, False, False, False, False, False),
(133, 17, 'White cabbage', True, True, False, False, False, False, False, False),
(134, 17, 'Purple cauliflower', True, True, False, False, False, False, False, False),
(135, 17, 'Celery', True, True, False, False, False, False, False, False),
(136, 17, 'Fennel', True, True, False, False, False, False, False, False),
(137, 17, 'Garlic', True, True, False, False, False, False, False, False),
(138, 17, 'Romanesco', True, True, False, False, False, False, False, False),
(139, 17, 'Spigariello', True, True, False, False, False, False, False, False),
(140, 17, 'Spring onions bunches', True, True, False, False, False, False, False, False),
(141, 17, 'Swede', True, True, False, False, False, False, False, False),
(142, 17, 'Turnip', True, True, False, False, False, False, False, False),
(143, 17, 'Aubergine', True, True, False, False, False, False, False, False),
(144, 17, 'Brussel sprouts', True, True, False, False, False, False, False, False),
(145, 17, 'Carrots', True, True, False, False, False, False, False, False),
(146, 17, 'Green courgette', True, True, False, False, False, False, False, False),
(147, 17, 'Yellow courgette', True, True, False, False, False, False, False, False),
(148, 17, 'Green chilli', True, True, False, False, False, False, False, False),
(149, 17, 'Red chilli', True, True, False, False, False, False, False, False),
(150, 17, 'Ginger', True, True, False, False, False, False, False, False),
(151, 17, 'Leek', True, True, False, False, False, False, False, False),
(152, 17, 'Mushrooms', True, True, False, False, False, False, False, False),
(153, 17, 'Red onions', True, True, False, False, False, False, False, False),
(154, 17, 'White onions', True, True, False, False, False, False, False, False),
(155, 17, 'Peppers', True, True, False, False, False, False, False, False),
(156, 17, 'Small potatoes', True, True, False, False, False, False, False, False),
(157, 17, 'Sweet potatoes', True, True, False, False, False, False, False, False),
(158, 17, 'Cherry vine tomatoes', True, True, False, False, False, False, False, False),
(159, 17, 'Heritage tomatoes', True, True, False, False, False, False, False, False),
(160, 6, 'Curry leaves', True, True, True, False, False, True, False, False),
(161, 6, 'Basil', True, True, True, False, False, False, False, False),
(162, 6, 'Bay leaves', True, True, True, False, False, False, False, False),
(163, 6, 'Black peppercorns', True, True, True, False, False, False, False, False),
(164, 6, 'Brown mustard seeds', True, True, True, False, False, False, False, False),
(165, 6, 'Cajun seasoning blend', True, True, True, False, False, False, False, False),
(166, 6, 'Caraway seeds', True, True, True, False, False, False, False, False),
(167, 6, 'Cardamon pods', True, True, True, False, False, False, False, False),
(168, 6, 'Cayenne pepper', True, True, True, False, False, False, False, False),
(169, 6, 'Chilli ground', True, True, True, False, False, False, False, False),
(170, 6, 'Chinese 5 spice', True, True, True, False, False, False, False, False),
(171, 6, 'Chipotle chillies crushed', True, True, True, False, False, False, False, False),
(172, 6, 'Cinnamon', True, True, True, False, False, False, False, False),
(173, 6, 'Cinnamon sticks', True, True, True, False, False, False, False, False),
(174, 6, 'Cloves whole', True, True, True, False, False, False, False, False),
(175, 6, 'Coriander seed', True, True, True, False, False, False, False, False),
(176, 6, 'Coriander ground', True, True, True, False, False, False, False, False),
(177, 6, 'Crushed chillies', True, True, True, False, False, False, False, False),
(178, 6, 'Cumin seeds', True, True, True, False, False, False, False, False),
(179, 6, 'Cumin whole', True, True, True, False, False, False, False, False),
(180, 6, 'Curry powder (Medium)', True, True, True, False, False, False, False, False),
(181, 6, 'Fajita seasoning', True, True, True, False, False, False, False, False),
(182, 6, 'Fine Sea salt', True, True, True, False, False, False, False, False),
(183, 6, 'Garam masala', True, True, True, False, False, False, False, False),
(184, 6, 'Garlic granules', True, True, True, False, False, False, False, False),
(185, 6, 'Garlic powder', True, True, True, False, False, False, False, False),
(186, 6, 'Garlic salt', True, True, True, False, False, False, False, False),
(187, 6, 'Ginger ground', True, True, True, False, False, False, False, False),
(188, 6, 'Ground black pepper', True, True, True, False, False, False, False, False),
(189, 6, 'Kibbled onions', True, True, True, False, False, False, False, False),
(190, 6, 'Marjoram', True, True, True, False, False, False, False, False),
(191, 6, 'Mixed herbs', True, True, True, False, False, False, False, False),
(192, 6, 'Mixed peppercorns', True, True, True, False, False, False, False, False),
(193, 6, 'Mixed spice', True, True, True, False, False, False, False, False),
(194, 6, 'Nutmeg', True, True, True, False, False, False, False, False),
(195, 6, 'Onion powder', True, True, True, False, False, False, False, False),
(196, 6, 'Oregano', True, True, True, False, False, False, False, False),
(197, 6, 'Paprika', True, True, True, False, False, False, False, False),
(198, 6, 'Paprika smoked', True, True, True, False, False, False, False, False),
(199, 6, 'Pink peppercorns', True, True, True, False, False, False, False, False),
(200, 6, 'Piri peri seasoning', True, True, True, False, False, False, False, False),
(201, 6, 'Sage', True, True, True, False, False, False, False, False),
(202, 6, 'Small red chillies dried', True, True, True, False, False, False, False, False),
(203, 6, 'Star anise', True, True, True, False, False, False, False, False),
(204, 6, 'Sumac', True, True, True, False, False, False, False, False),
(205, 6, 'Thyme', True, True, True, False, False, False, False, False),
(206, 6, 'Turmeric', True, True, True, False, False, False, False, False),
(207, 6, 'White pepper ground', True, True, True, False, False, False, False, False),
(208, 6, 'Za’ atar spice', True, True, True, False, False, False, False, False),
(209, 5, 'Rapeseed oil', True, True, False, False, False, False, False, False),
(210, 5, 'Red wine vinegar', True, True, False, False, False, False, False, False),
(211, 5, 'Soy sauce', True, True, False, False, False, False, False, False),
(212, 14, 'Sesame seeds', True, True, True, False, False, True, False, False),
(213, 14, 'Sunflower seeds', True, True, True, False, False, True, False, False),
(214, 14, 'Almonds blanched', True, True, True, False, False, False, False, False),
(215, 14, 'Blue poppy seeds', True, True, True, False, False, False, False, False),
(216, 14, 'Cashews broken', True, True, True, False, False, False, False, False),
(217, 14, 'Chia seeds', True, True, True, False, False, False, False, False),
(218, 14, 'Chopped mixed nuts', True, True, True, False, False, False, False, False),
(219, 14, 'Flaked almonds', True, True, True, False, False, False, False, False),
(220, 14, 'Linseed', True, True, True, False, False, False, False, False),
(221, 14, 'Mixed nuts', True, True, True, False, False, False, False, False),
(222, 14, 'Mixed seeds', True, True, True, False, False, False, False, False),
(223, 14, 'Peanuts redskin', True, True, True, False, False, False, False, False),
(224, 14, 'Peanuts roasted salted', True, True, True, False, False, False, False, False),
(225, 14, 'Pine kernels', True, True, True, False, False, False, False, False),
(226, 14, 'Pistachios roasted salted', True, True, True, False, False, False, False, False),
(227, 14, 'Pumpkin seeds', True, True, True, False, False, False, False, False),
(228, 14, 'Walnuts broken', True, True, True, False, False, False, False, False),
(229, 14, 'Whole roasted hazelnuts', True, True, True, False, False, False, False, False),
(230, 15, 'Lasagne sheets', True, True, True, False, False, False, False, False),
(231, 15, 'Linguine', True, True, True, False, False, False, False, False),
(232, 15, 'Noodles', True, True, True, False, False, False, False, False),
(233, 15, 'White Penne pasta', True, True, True, False, False, False, False, False),
(234, 15, 'Orzo', True, True, True, False, False, False, False, False),
(235, 15, 'White macaroni elbows', True, True, True, False, False, False, False, False),
(236, 15, 'White spaghetti', True, True, True, False, False, False, False, False),
(237, 15, 'Wholewheat pasta', True, True, True, False, False, False, False, False),
(238, 18, 'Mung beans', True, True, True, False, False, True, False, False),
(239, 18, 'Black Turtle Beans', True, True, True, False, False, False, False, False),
(240, 18, 'Broth Mix', True, True, True, False, False, False, False, False),
(241, 18, 'Butter beans', True, True, True, False, False, False, False, False),
(242, 18, 'Cannellini beans', True, True, True, False, False, False, False, False),
(243, 18, 'Chickpeas', True, True, True, False, False, False, False, False),
(244, 18, 'Green lentils laird', True, True, True, False, False, False, False, False),
(245, 18, 'Lentils dark speckled', True, True, True, False, False, False, False, False),
(246, 18, 'Marrowfat peas', True, True, True, False, False, False, False, False),
(247, 18, 'Mixed beans', True, True, True, False, False, False, False, False),
(248, 18, 'Pinto beans', True, True, True, False, False, False, False, False),
(249, 18, 'Red kidney beans', True, True, True, False, False, False, False, False),
(250, 18, 'Red lentils', True, True, True, False, False, False, False, False),
(251, 18, 'Soya beans', True, True, True, False, False, False, False, False),
(252, 18, 'Split peas yellow', True, True, True, False, False, False, False, False),
(253, 8, 'Black rice', True, True, True, False, False, True, False, False),
(254, 8, 'Long grain white rice', True, True, True, False, False, True, False, False),
(255, 8, 'Millet', True, True, True, False, False, True, False, False),
(256, 8, 'Aborio rice', True, True, True, False, False, False, False, False),
(257, 8, 'Basmati rice', True, True, True, False, False, False, False, False),
(258, 8, 'Bulgar wheat', True, True, True, False, False, False, False, False),
(259, 8, 'Couscous', True, True, True, False, False, False, False, False),
(260, 8, 'Jasmine rice', True, True, True, False, False, False, False, False),
(261, 8, 'Long grain brown rice', True, True, True, False, False, False, False, False),
(262, 8, 'Pearl barley', True, True, True, False, False, False, False, False),
(263, 8, 'Pearl couscous', True, True, True, False, False, False, False, False),
(264, 8, 'Popcorn', True, True, True, False, False, False, False, False),
(265, 8, 'Quinoa', True, True, True, False, False, False, False, False),
(266, 8, 'Sushi rice', True, True, True, False, False, False, False, False),
(267, 8, 'Tricolour quinoa', True, True, True, False, False, False, False, False),
(268, 8, 'White couscous', True, True, True, False, False, False, False, False),
(269, 9, 'Bombay mix', True, True, True, False, False, False, False, False),
(270, 9, 'Chilli rice crackers', True, True, True, False, False, False, False, False),
(271, 9, 'Hot chocolate disks', True, True, True, False, False, False, False, False),
(272, 9, 'Osumi rice crackers', True, True, True, False, False, False, False, False),
(273, 9, 'Vegan chocolates', True, True, True, False, False, False, False, False),
(274, 9, 'Vegan pick & mix', True, True, True, False, False, False, False, False),
(275, 9, ' snack mix variety', True, False, True, False, False, False, False, False);
INSERT INTO Ingredient_Grp(ingredient_id, grp_id) VALUES
(1, 12),
(2, 12),
(243, 12),
(242, 12),
(247, 12),
(249, 12),
(10, 10),
(11, 10),
(12, 22),
(13, 22),
(14, 22),
(15, 5),
(20, 28),
(21, 28),
(23, 17),
(24, 17),
(25, 17),
(26, 17),
(27, 17),
(30, 31),
(31, 31),
(34, 9),
(35, 9),
(36, 2),
(46, 13),
(51, 13),
(62, 13),
(63, 11),
(64, 11),
(65, 11),
(66, 11),
(67, 11),
(68, 11),
(69, 11),
(73, 27),
(74, 27),
(75, 27),
(76, 1),
(78, 20),
(79, 28),
(81, 20),
(82, 26),
(85, 32),
(90, 32),
(91, 7),
(94, 29),
(95, 29),
(99, 9),
(100, 26),
(101, 26),
(102, 26),
(103, 26),
(105, 32),
(106, 32),
(107, 32),
(109, 32),
(110, 32),
(111, 26),
(130, 5),
(146, 3),
(147, 3),
(148, 30),
(149, 30),
(150, 14),
(152, 7),
(153, 21),
(154, 21),
(156, 5),
(157, 5),
(158, 9),
(159, 9),
(178, 25),
(179, 25),
(187, 14),
(189, 21),
(209, 2),
(214, 6),
(219, 6),
(223, 16),
(224, 16),
(231, 18),
(233, 18),
(235, 18),
(236, 18),
(237, 18),
(238, 12),
(239, 12),
(241, 12),
(242, 12),
(243, 24),
(244, 19),
(245, 19),
(246, 24),
(247, 12),
(248, 12),
(249, 12),
(250, 19),
(251, 12),
(252, 24),
(253, 15),
(254, 15),
(255, 15),
(256, 15),
(257, 15),
(259, 4),
(260, 15),
(261, 15),
(263, 4),
(265, 23),
(266, 15),
(267, 23),
(268, 4),
(270, 8),
(272, 8);
INSERT INTO Ingredient(ingredient_id, ingredient_name, store_has) VALUES
(276, 'Curry paste', False),
(277, 'Rolls', False),
(278, 'Chopped tomatoes', False),
(279, 'Arborio rice', False),
(280, 'Self raising flour', False),
(281, 'Dried mixed mushrooms', False),
(282, 'fresh parsley', False);
INSERT INTO Recipe (recipe_id, recipe_name, serves, instructions) VALUES
(1, 'Sweet Potato and Chick Pea Curry', 4, '- Soak chickpeas for 4 – 8hours (we just leave them overnight), rinse then place in a pot of water
- Bring to boil then simmer for 1 – 2  hours. Drain and set aside
- Peel and chop your garlic and veg
- Fry the onions and garlic in oil for 1min then add curry paste and curry powder and fry a further 2 mins
- Add can of coconut milk, stir then add sweet potato and chick peas. cook for 10 mins
- Add carrots and cook for 10 – 15 mins until all veg is cooked through
- Bring some water to the boil in a pot, rinse rice and add to boiling water and simmer for 15 – 20 minutes until cooked
- Serve and enjoy
'),
(2, 'Minestrone Soup', 6, '- Chop all of your vegetables and strain the cannellini beans
- In a large pot fry onions and garlic until softened
- Add celery, carrots and potatoes and cook for 2 – 3 minutes
- Add cannellini beans and parsley and cover with veg stock until everything is just covered
- Add can of tomatoes and simmer for 45 mins – an hour
- Cook the orzo in a separate pot, strain and add to the soup
- Serve and enjoy
'),
(3, 'Paella with Spanish Salad', 4, 'Paella:
- Add the rice, spices and veg stock to a pot, simmer gently (stirring occasionally) until most of the liquid has been absorbed. Once this happens remove from heat and leave to sit for 5 minutes.
- Finely chop one onion and garlic then fry in a pan or for 2 – 4 minutes
- Chop the pepper and tomatoes and add that to the pan, fry until cooked through.
-Add the vegetables to the paella rice and mix through
Salad:
- Cut the courgette in half lengthways then finely slice it, finely slice the red onion and half all of the cherry tomatoes
- Combine them all in a bowl with olive oil salt and pepper
Serve and enjoy!
'),
(4, 'Thai Green Lentil and Vegetable Curry', 2, '-Soak lentils for 1 hour before hand to reduce cooking time
- Peel and chop your garlic, chilli, ginger and veg
- Fry onions, chilli, ginger and garlic in oil for 2 mins. Add the curry paste and cook for another 2 mins stirring often
-  strain and add in the green lentils and coconut milk, bring to boil and simmer for 15 mins (a little more if you did not soak lentils)
- Add vegetables and simmer for another 5 minutes until everything is tender. Remove from heat and add a squeeze of lime to taste
- Boil noodles or rice in water, drain and serve
'),
(5, 'Cajun Chick Pea Burgers with Wedges', 2, '- Soak chickpeas for 4 – 8hours (we just leave them overnight), rinse then place in a pot of water. Bring to boil then simmer for 1 - 2 hour. Drain and set aside
- Grate the carrots and courgette, squeeze excess water out with a towel or napkin
- Blend/ mash chickpeas until they are coarsely mashed, but not to a paste.
- Chop the onion and 2 – 4 garlic cloves, fry with the burger spices for 2- 4 mins
- Combine all of the ingredients in a bowl, add salt and pepper to taste. Form into burgers and fry in oil for 5 mins each side
- Cut potatoes into wedges and place on a baking tray. Lightly drizzle over some oil and sprinkle on the wedge spices.
- Cook at 200/ gas mark 6 for 15 – 20 mins
- Serve and enjoy
'),
(6, 'Falafel Burgers with Guac and salad', 2, 'Burgers:
- Add water 1tbsp at a time to falafel mix until it holds together, set aside for 10 mins then shape into 2 patties
- Fry the falafel burgers in oil for a few mins each side and serve on roll
Guac:
- Mash avocado, mix with 1 – 2 garlic cloves, 1/2 red onion finely chopped, chopped fresh tomatoes, 1/2 of the chilli and squeeze 1/2 of the lime juice in. Salt and pepper to taste.
Salad:
- Use a veg peeler to ribbon the carrot and courgette, chop onion and half the cherry tomatoes
- Mix the vegetables in a bowl
- Add 1/2 chilli if you want a bit of spice and squeeze 1/2 a lime over, salt and pepper to taste
Serve and enjoy
'),
(7, 'Ramen Noodle Bowl', 4, '- Soak the dried mushrooms in a bowl with 100ml water for 20 mins (retain water). Boil the noodles in a pot of water for 5 minutes, strain and set aside
- Meanwhile peel and finely chop the garlic and grate the ginger. Finely chop your chillies (remove the seeds for less heat).
- Slice the onions, spring onions and fresh mushrooms. Use a potato peeler to ribbon your carrots (if you don’t have a peeler you can grate or finely slice them).
- In a large pot fry your onions, garlic, ginger and chilli in the oil for 4 minutes. Add the carrots and fresh mushrooms to your pot and fry for 2 more minutes
- Add the stock and dried mushrooms (including the water they were soaked in as it is full of flavour) into the pot along with the noodles
- Continue to cook until the noodles are warm then add soy sauce to taste
- Serve in a deep bowl topped with sliced spring onions ontop.
'),
(8, 'Pancakes', 4, '- Put all dry ingredients in a bowl
- Add milk and mix thoroughly
- Heat oil in a pan on a medium heat
- Add one tbsp pancake mix to pan
- Once bubbles form and burst on top of pancake flip it over
- After 40 seconds remove from heat
- Continue until all pancake mix is finished
- Serve and enjoy
'),
(9, 'Chilli With Pearl Cous Cous', 4, '- Soak mixed beans and chick peas together for 4 – 8hours (we just leave them overnight)
- Rinse beans then place in a pot of water. Bring to boil then simmer for 1 hour. Drain and set aside
- Soak TVP mince for 10 mins, drain + set aside.
- Chop all of your vegetables and garlic
- In a large pot fry 2 – 4 cloves garlic with the onion and spices in oil for 2 – 4 minutes. (add the chilli for extra spice)
- Add pepper and fry for a further 5 minutes.
- Add TVP mince and bean mix and the can of chopped tomatoes, cook for 20 – 30 minutes
- Add salt and pepper to taste
- Add pearl cous cous to a large pot of boiling water and cook for 6 – 10 minutes until they are cooked through, Strain and put in a serving dish
- Serve and enjoy
'),
(10, 'Bread Salad', 4, '- Roughly cut your loaf of bread into cubes about 2cm big
- Heat some oil in a frying pan and in batches lightly fry the chunks of bread then set aside
- Finely chop the garlic and onions
- Half the cherry tomatoes and chop the heritage tomatoes into chunks
- Cut the courgette in half lengthways then slice each half up
- Combine all of the vegetables and the fried bread in a bowl, add 2 tbsp oil and salt and pepper to taste
- Serve and enjoy
');
INSERT INTO Measurement(measurement_id, ingredient_id, amount) VALUES
(1, 137, '2 - 4 cloves'),
(2, 276, '3 tbsp'),
(3, 180, '2 tsp'),
(4, 153, '2'),
(5, 157, '2'),
(6, 145, '3'),
(7, 243, '300g'),
(8, 20, '1 Can'),
(9, 254, '400g'),
(10, 242, '1 can'),
(11, 154, '2'),
(12, 137, '2 - 4 cloves'),
(13, 135, '4 sticks'),
(14, 145, '2'),
(15, 130, '2'),
(16, 278, '1 can'),
(17, 282, '1 bunch'),
(18, 58, '1 tsp'),
(19, 234, '150 g'),
(20, 279, '400 g'),
(21, 137, '4 cloves'),
(22, 155, '2'),
(23, 158, '4'),
(24, 154, '2'),
(25, 198, '2 - 3 tsp'),
(26, 186, '1 tsp'),
(27, 189, '2 tsp'),
(28, 58, '2 tsp'),
(29, 158, '5'),
(30, 146, '1'),
(31, 153, '1'),
(32, 137, '2 - 4 cloves'),
(33, 276, '2 tbsp'),
(34, 150, '1 piece'),
(35, 244, '200g'),
(36, 153, '1'),
(37, 155, '1'),
(38, 147, '1'),
(39, 115, '1'),
(40, 149, '1'),
(41, 20, '1 Can'),
(42, 254, '200g'),
(43, 137, '2 - 4 cloves'),
(44, 153, '1'),
(45, 145, '1'),
(46, 147, '1'),
(47, 243, '200g'),
(48, 165, '1 tsp'),
(49, 186, '1/2 tsp'),
(50, 156, '2'),
(51, 198, '1 tsps'),
(52, 179, '1 tsp'),
(53, 186, '1 tsp'),
(54, 48, '200g'),
(55, 277, '2'),
(56, 104, '1'),
(57, 153, '1.5'),
(58, 137, '2 cloves'),
(59, 115, '1'),
(60, 149, '1'),
(61, 146, '1'),
(62, 158, '260g'),
(63, 145, '1'),
(64, 150, '2 cm'),
(65, 149, '1'),
(66, 137, '2 cloves'),
(67, 140, '1'),
(68, 145, '2'),
(69, 140, 'small bunch'),
(70, 152, '6'),
(71, 281, '40g'),
(72, 58, '2 tsp'),
(73, 232, '2 nests'),
(74, 280, '2 cups'),
(75, 61, '1 cup'),
(76, 43, '1 tsp'),
(77, 79, '400ml'),
(78, 209, '1tbsp'),
(79, 278, '1 can'),
(80, 154, '2'),
(81, 155, '2'),
(82, 247, '200g'),
(83, 55, '200g'),
(84, 243, '60g'),
(85, 149, '1'),
(86, 198, '2 tsp'),
(87, 179, '2 tsp'),
(88, 169, '1 tsp'),
(89, 186, '1 tsp'),
(90, 189, '1 tsp'),
(91, 137, '2 - 4 Cloves'),
(92, 263, '500g'),
(93, 65, '1 loaf'),
(94, 159, '200g'),
(95, 158, '200g'),
(96, 153, '2'),
(97, 146, '1'),
(98, 137, '2 - 4 cloves'),
(99, 209, '50ml');
INSERT INTO Recipe_Measurement(recipe_id, measurement_id) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(2, 10),
(2, 11),
(2, 12),
(2, 13),
(2, 14),
(2, 15),
(2, 16),
(2, 17),
(2, 18),
(2, 19),
(3, 20),
(3, 21),
(3, 22),
(3, 23),
(3, 24),
(3, 25),
(3, 26),
(3, 27),
(3, 28),
(3, 29),
(3, 30),
(3, 31),
(4, 32),
(4, 33),
(4, 34),
(4, 35),
(4, 36),
(4, 37),
(4, 38),
(4, 39),
(4, 40),
(4, 41),
(4, 42),
(5, 43),
(5, 44),
(5, 45),
(5, 46),
(5, 47),
(5, 48),
(5, 49),
(5, 50),
(5, 51),
(5, 52),
(5, 53),
(6, 54),
(6, 55),
(6, 56),
(6, 57),
(6, 58),
(6, 59),
(6, 60),
(6, 61),
(6, 62),
(6, 63),
(7, 64),
(7, 65),
(7, 66),
(7, 67),
(7, 68),
(7, 69),
(7, 70),
(7, 71),
(7, 72),
(7, 73),
(8, 74),
(8, 75),
(8, 76),
(8, 77),
(8, 78),
(9, 79),
(9, 80),
(9, 81),
(9, 82),
(9, 83),
(9, 84),
(9, 85),
(9, 86),
(9, 87),
(9, 88),
(9, 89),
(9, 90),
(9, 91),
(9, 92),
(10, 93),
(10, 94),
(10, 95),
(10, 96),
(10, 97),
(10, 98),
(10, 99);