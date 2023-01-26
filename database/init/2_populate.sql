USE lgl;
INSERT INTO Category(category_id, category_name) VALUES 
(1, 'Fresh Fruit'),
(2, 'Bread Loafs'),
(3, 'Dried Fruit'),
(4, 'Chilled Goods'),
(5, 'Cereals'),
(6, 'Herbs + Spices'),
(7, 'Fresh Vegetables'),
(8, 'Nuts & Seeds'),
(9, 'Pulses'),
(10, 'Rice & Grains'),
(11, 'Assorted'),
(12, 'Canned Meals'),
(13, 'Liquids'),
(14, 'Ambient Stock'),
(15, 'Pasta'),
(16, 'Snacks'),
(17, 'Canned Pulses'),
(18, 'Baking Goods');
INSERT INTO Grp(grp_id, grp_name) VALUES 
(1, 'LENTILS'),
(2, 'CURRY'),
(3, 'MAYO'),
(4, 'BEAN'),
(5, 'POTATO'),
(6, 'GINGER'),
(7, 'QUINOA'),
(8, 'ONION'),
(9, 'BERRY'),
(10, 'PEA'),
(11, 'CHILLI'),
(12, 'TOMATO'),
(13, 'CRACKERS'),
(14, 'MEATBALLS'),
(15, 'MILK'),
(16, 'PINEAPPLE'),
(17, 'ALMOND'),
(18, 'SOUP'),
(19, 'APPLE'),
(20, 'OATS'),
(21, 'FLOUR'),
(22, 'BUTTER'),
(23, 'COURGETTE'),
(24, 'MUSHROOM'),
(25, 'PASTA'),
(26, 'COUSCOUS'),
(27, 'RICE'),
(28, 'OIL'),
(29, 'CUMIN'),
(30, 'CHEESE'),
(31, 'BREAD'),
(32, 'PEANUT');
INSERT INTO Ingredient(ingredient_id, category_id, grp_id, ingredient_name, store_has,
vegan, fillable, weightable, chilled, organic, jarred, canned) VALUES 
(1, 17, 4, 'Baked beans', True, True, False, False, False, True, False, True),
(2, 17, 4, 'Black beans', True, True, False, False, False, True, False, True),
(3, 17, 4, 'Chickpeas', True, True, False, False, False, True, False, True),
(4, 17, 4, 'Cannellini beans', True, True, False, False, False, True, False, True),
(5, 17, 4, 'Mixed beans', True, True, False, False, False, True, False, True),
(6, 17, 4, 'Red kidney beans', True, True, False, False, False, True, False, True),
(7, 17, Null, 'Sweetcorn', True, True, False, False, False, True, False, True),
(8, 12, Null, 'Vegan baked beans & burgers', True, True, False, False, False, False, False, True),
(9, 12, Null, 'Vegan baked beans & sausages', True, True, False, False, False, False, False, True),
(10, 12, 14, 'Vegan meatballs', True, True, False, False, False, False, False, True),
(11, 12, 14, 'Vegan meatballs chilli', True, True, False, False, False, False, False, True),
(12, 12, 18, 'Vegan minestrone soup', True, True, False, False, False, False, False, True),
(13, 12, 18, 'Vegan pea & ham soup', True, True, False, False, False, False, False, True),
(14, 12, 18, 'Vegan tuscan bean soup', True, True, False, False, False, False, False, True),
(15, 11, 5, 'Bombay potatoes', True, True, False, False, False, True, False, False),
(16, 11, Null, 'Jackfruit', True, True, False, False, False, True, False, False),
(17, 11, Null, 'Moroccan & chickpea tagine', True, True, False, False, False, True, False, False),
(18, 11, Null, 'Coconut & kale dahl', True, True, False, False, False, True, False, False),
(19, 11, Null, 'Banana blossom', True, True, False, False, False, False, False, False),
(20, 11, 15, 'Coconut milk', True, True, False, False, False, False, False, False),
(21, 11, 15, 'Sweetened condensed coconut milk', True, True, False, False, False, False, False, False),
(22, 11, Null, 'Tempeh', True, True, False, False, False, False, False, False),
(23, 14, 2, 'Balti', True, True, False, False, False, False, True, False),
(24, 14, 2, 'Tikka', True, True, False, False, False, False, True, False),
(25, 14, 2, 'Korma', True, True, False, False, False, False, True, False),
(26, 14, 2, 'Thai red', True, True, False, False, False, False, True, False),
(27, 14, 2, 'Thai green', True, True, False, False, False, False, True, False),
(28, 14, Null, 'Vego crunchy spread', True, True, False, False, False, False, True, False),
(29, 14, Null, 'Dark chocolate spread', True, True, False, False, False, False, True, False),
(30, 14, 3, 'Organic vegan mayo', True, True, False, False, False, False, True, False),
(31, 14, 3, 'Garlic vegan mayo', True, True, False, False, False, False, True, False),
(32, 14, Null, 'Tahini', True, True, False, False, False, False, True, False),
(33, 14, Null, 'Tempah', True, True, False, False, False, False, True, False),
(34, 14, 12, 'Tomato passata', True, True, False, False, False, False, True, False),
(35, 14, 12, 'Tomato puree', True, True, False, False, False, False, True, False),
(36, 14, 28, 'Virgin coconut oil', True, True, False, False, False, False, True, False),
(37, 14, Null, 'Tofu', True, True, False, False, False, True, True, False),
(38, 18, Null, 'Cocoa powder', True, True, True, False, False, True, False, False),
(39, 18, Null, 'Icing sugar', True, True, True, False, False, True, False, False),
(40, 18, Null, 'Hemp powder', True, True, True, False, False, True, False, False),
(41, 18, Null, 'Nut roast', True, True, True, False, False, False, False, False),
(42, 18, Null, 'B12 yeast flakes', True, True, True, False, False, False, False, False),
(43, 18, Null, 'Baking powder', True, True, True, False, False, False, False, False),
(44, 18, Null, 'Bicarbonate of soda', True, True, True, False, False, False, False, False),
(45, 18, Null, 'Coconut milk powder', True, True, True, False, False, False, False, False),
(46, 18, 21, 'Cornflour', True, True, True, False, False, False, False, False),
(47, 18, Null, 'Desiccated coconut', True, True, True, False, False, False, False, False),
(48, 18, Null, 'Falafel mix', True, True, True, False, False, False, False, False),
(49, 18, Null, 'Fast acting yeast', True, True, True, False, False, False, False, False),
(50, 18, Null, 'Ground almonds', True, True, True, False, False, False, False, False),
(51, 18, 21, 'Plain white flour', True, True, True, False, False, False, False, False),
(52, 18, Null, 'Sea salt crystals', True, True, True, False, False, False, False, False),
(53, 18, Null, 'TVP chunks', True, True, True, False, False, False, False, False),
(54, 18, Null, 'TVP mince', True, True, True, False, False, False, False, False),
(55, 18, Null, 'TVP mince fine', True, True, True, False, False, False, False, False),
(56, 18, Null, 'Vegetable burger mix', True, True, True, False, False, False, False, False),
(57, 18, Null, 'Vegetable sausage mix', True, True, True, False, False, False, False, False),
(58, 18, Null, 'Vegetable stock powder', True, True, True, False, False, False, False, False),
(59, 18, Null, 'Vegetable suet', True, True, True, False, False, False, False, False),
(60, 18, Null, 'Vital wheat gluten', True, True, True, False, False, False, False, False),
(61, 18, Null, 'White caster sugar', True, True, True, False, False, False, False, False),
(62, 18, 21, 'White self-raising flour', True, True, True, False, False, False, False, False),
(63, 2, 31, 'Cornbread', True, True, False, False, False, False, False, False),
(64, 2, 31, 'Focaccia', True, True, False, False, False, False, False, False),
(65, 2, 31, 'French cobb', True, True, False, False, False, False, False, False),
(66, 2, 31, 'Multi-seed', True, True, False, False, False, False, False, False),
(67, 2, 31, 'Sour dough', True, True, False, False, False, False, False, False),
(68, 2, 31, ' Cheese and Chilli bread', True, False, False, False, False, False, False, False),
(69, 2, 31, ' Cheese and Leek bread', True, False, False, False, False, False, False, False),
(70, 5, Null, 'Bran sticks', True, True, True, False, False, False, False, False),
(71, 5, Null, 'Fruit and nut muesli', True, True, True, False, False, False, False, False),
(72, 5, Null, 'Granola mix', True, True, True, False, False, False, False, False),
(73, 5, 20, 'Jumbo oats', True, True, True, False, False, False, False, False),
(74, 5, 20, 'Pinhead oatmeal', True, True, True, False, False, False, False, False),
(75, 5, 20, 'Porridge oats', True, True, True, False, False, False, False, False),
(76, 4, 30, 'Assortment of Vegan Cheeses', True, True, False, False, True, False, False, False),
(77, 4, Null, 'Creamy Oat Cream', True, True, False, False, True, False, False, False),
(78, 4, 22, 'Flora plant butter', True, True, False, False, True, False, False, False),
(79, 4, 15, 'Oat milk', True, True, False, False, True, False, False, False),
(80, 4, Null, 'Vanilla custard', True, True, False, False, True, False, False, False),
(81, 4, 22, 'Vegan block (butter)', True, True, False, False, True, False, False, False),
(82, 3, 19, 'Apple rings', True, True, True, False, False, False, False, False),
(83, 3, Null, 'Apricots', True, True, True, False, False, False, False, False),
(84, 3, Null, 'Banana chips', True, True, True, False, False, False, False, False),
(85, 3, 9, 'Cranberries', True, True, True, False, False, False, False, False),
(86, 3, Null, 'Currants', True, True, True, False, False, False, False, False),
(87, 3, Null, 'Dates', True, True, True, False, False, False, False, False),
(88, 3, Null, 'Exotic fruit mix', True, True, True, False, False, False, False, False),
(89, 3, Null, 'Glace cherries - BERRY', True, True, True, False, False, False, False, False),
(90, 3, 9, 'Goji berries', True, True, True, False, False, False, False, False),
(91, 3, 24, 'Mixed mushrooms', True, True, True, False, False, False, False, False),
(92, 3, Null, 'Mixed peel', True, True, True, False, False, False, False, False),
(93, 3, Null, 'Papaya cubes', True, True, True, False, False, False, False, False),
(94, 3, 16, 'Pineapple cubes', True, True, True, False, False, False, False, False),
(95, 3, 16, 'Pineapple dried pieces', True, True, True, False, False, False, False, False),
(96, 3, Null, 'Prunes', True, True, True, False, False, False, False, False),
(97, 3, Null, 'Raisins', True, True, True, False, False, False, False, False),
(98, 3, Null, 'Sultanas', True, True, True, False, False, False, False, False),
(99, 3, 12, 'Sundried tomatoes', True, True, True, False, False, False, False, False),
(100, 1, 19, 'Braeburn apples', True, True, False, False, False, False, False, False),
(101, 1, 19, 'Gala apples', True, True, False, False, False, False, False, False),
(102, 1, 19, 'Golden delicious apples', True, True, False, False, False, False, False, False),
(103, 1, 19, 'Red delicious apples', True, True, False, False, False, False, False, False),
(104, 1, Null, 'Avocado', True, True, False, False, False, False, False, False),
(105, 1, 9, 'Blackberries', True, True, False, False, False, False, False, False),
(106, 1, 9, 'Blueberries', True, True, False, False, False, False, False, False),
(107, 1, 9, 'Brambles', True, True, False, False, False, False, False, False),
(108, 1, Null, 'Cherries', True, True, False, False, False, False, False, False),
(109, 1, 9, 'Raspberries', True, True, False, False, False, False, False, False),
(110, 1, 9, 'Strawberries', True, True, False, False, False, False, False, False),
(111, 1, 19, 'Custard apples', True, True, False, False, False, False, False, False),
(112, 1, Null, 'Grapefruit', True, True, False, False, False, False, False, False),
(113, 1, Null, 'Kiwi', True, True, False, False, False, False, False, False),
(114, 1, Null, 'Lemons', True, True, False, False, False, False, False, False),
(115, 1, Null, 'Limes', True, True, False, False, False, False, False, False),
(116, 1, Null, 'Melons', True, True, False, False, False, False, False, False),
(117, 1, Null, 'Nectarines', True, True, False, False, False, False, False, False),
(118, 1, Null, 'Oranges', True, True, False, False, False, False, False, False),
(119, 1, Null, 'Passion fruits', True, True, False, False, False, False, False, False),
(120, 1, Null, 'Flat peaches', True, True, False, False, False, False, False, False),
(121, 1, Null, 'Pear', True, True, False, False, False, False, False, False),
(122, 1, Null, 'Persimmons', True, True, False, False, False, False, False, False),
(123, 1, Null, 'Ghost pumpkin', True, True, False, False, False, False, False, False),
(124, 1, Null, 'Satsumas', True, True, False, False, False, False, False, False),
(125, 1, Null, 'Butternut squash', True, True, False, False, False, False, False, False),
(126, 1, Null, 'Banana', True, True, False, True, False, False, False, False),
(127, 1, Null, 'Grapes', True, True, False, True, False, False, False, False),
(128, 1, Null, 'Plums', True, True, False, True, False, False, False, False),
(129, 7, Null, 'Artichoke', True, True, False, False, False, False, False, False),
(130, 7, 5, 'Baking potatoes', True, True, False, False, False, False, False, False),
(131, 7, Null, 'Broccoli', True, True, False, False, False, False, False, False),
(132, 7, Null, 'Red cabbage', True, True, False, False, False, False, False, False),
(133, 7, Null, 'White cabbage', True, True, False, False, False, False, False, False),
(134, 7, Null, 'Purple cauliflower', True, True, False, False, False, False, False, False),
(135, 7, Null, 'Celery', True, True, False, False, False, False, False, False),
(136, 7, Null, 'Fennel', True, True, False, False, False, False, False, False),
(137, 7, Null, 'Garlic', True, True, False, False, False, False, False, False),
(138, 7, Null, 'Romanesco', True, True, False, False, False, False, False, False),
(139, 7, Null, 'Spigariello', True, True, False, False, False, False, False, False),
(140, 7, Null, 'Spring onions bunches', True, True, False, False, False, False, False, False),
(141, 7, Null, 'Swede', True, True, False, False, False, False, False, False),
(142, 7, Null, 'Turnip', True, True, False, False, False, False, False, False),
(143, 7, Null, 'Aubergine', True, True, False, False, False, False, False, False),
(144, 7, Null, 'Brussel sprouts', True, True, False, False, False, False, False, False),
(145, 7, Null, 'Carrots', True, True, False, False, False, False, False, False),
(146, 7, 23, 'Green courgette', True, True, False, False, False, False, False, False),
(147, 7, 23, 'Yellow courgette', True, True, False, False, False, False, False, False),
(148, 7, 11, 'Green chilli', True, True, False, False, False, False, False, False),
(149, 7, 11, 'Red chilli', True, True, False, False, False, False, False, False),
(150, 7, 6, 'Ginger', True, True, False, False, False, False, False, False),
(151, 7, Null, 'Leek', True, True, False, False, False, False, False, False),
(152, 7, 24, 'Mushrooms', True, True, False, False, False, False, False, False),
(153, 7, 8, 'Red onions', True, True, False, False, False, False, False, False),
(154, 7, 8, 'White onions', True, True, False, False, False, False, False, False),
(155, 7, Null, 'Peppers', True, True, False, False, False, False, False, False),
(156, 7, 5, 'Small potatoes', True, True, False, False, False, False, False, False),
(157, 7, 5, 'Sweet potatoes', True, True, False, False, False, False, False, False),
(158, 7, 12, 'Cherry vine tomatoes', True, True, False, False, False, False, False, False),
(159, 7, 12, 'Heritage tomatoes', True, True, False, False, False, False, False, False),
(160, 6, Null, 'Curry leaves', True, True, True, False, False, True, False, False),
(161, 6, Null, 'Basil', True, True, True, False, False, False, False, False),
(162, 6, Null, 'Bay leaves', True, True, True, False, False, False, False, False),
(163, 6, Null, 'Black peppercorns', True, True, True, False, False, False, False, False),
(164, 6, Null, 'Brown mustard seeds', True, True, True, False, False, False, False, False),
(165, 6, Null, 'Cajun seasoning blend', True, True, True, False, False, False, False, False),
(166, 6, Null, 'Caraway seeds', True, True, True, False, False, False, False, False),
(167, 6, Null, 'Cardamon pods', True, True, True, False, False, False, False, False),
(168, 6, Null, 'Cayenne pepper', True, True, True, False, False, False, False, False),
(169, 6, Null, 'Chilli ground', True, True, True, False, False, False, False, False),
(170, 6, Null, 'Chinese 5 spice', True, True, True, False, False, False, False, False),
(171, 6, Null, 'Chipotle chillies crushed', True, True, True, False, False, False, False, False),
(172, 6, Null, 'Cinnamon', True, True, True, False, False, False, False, False),
(173, 6, Null, 'Cinnamon sticks', True, True, True, False, False, False, False, False),
(174, 6, Null, 'Cloves whole', True, True, True, False, False, False, False, False),
(175, 6, Null, 'Coriander seed', True, True, True, False, False, False, False, False),
(176, 6, Null, 'Coriander ground', True, True, True, False, False, False, False, False),
(177, 6, Null, 'Crushed chillies', True, True, True, False, False, False, False, False),
(178, 6, 29, 'Cumin seeds', True, True, True, False, False, False, False, False),
(179, 6, 29, 'Cumin whole', True, True, True, False, False, False, False, False),
(180, 6, Null, 'Curry powder (Medium)', True, True, True, False, False, False, False, False),
(181, 6, Null, 'Fajita seasoning', True, True, True, False, False, False, False, False),
(182, 6, Null, 'Fine Sea salt', True, True, True, False, False, False, False, False),
(183, 6, Null, 'Garam masala', True, True, True, False, False, False, False, False),
(184, 6, Null, 'Garlic granules', True, True, True, False, False, False, False, False),
(185, 6, Null, 'Garlic powder', True, True, True, False, False, False, False, False),
(186, 6, Null, 'Garlic salt', True, True, True, False, False, False, False, False),
(187, 6, 6, 'Ginger ground', True, True, True, False, False, False, False, False),
(188, 6, Null, 'Ground black pepper', True, True, True, False, False, False, False, False),
(189, 6, 8, 'Kibbled onions', True, True, True, False, False, False, False, False),
(190, 6, Null, 'Marjoram', True, True, True, False, False, False, False, False),
(191, 6, Null, 'Mixed herbs', True, True, True, False, False, False, False, False),
(192, 6, Null, 'Mixed peppercorns', True, True, True, False, False, False, False, False),
(193, 6, Null, 'Mixed spice', True, True, True, False, False, False, False, False),
(194, 6, Null, 'Nutmeg', True, True, True, False, False, False, False, False),
(195, 6, Null, 'Onion powder', True, True, True, False, False, False, False, False),
(196, 6, Null, 'Oregano', True, True, True, False, False, False, False, False),
(197, 6, Null, 'Paprika', True, True, True, False, False, False, False, False),
(198, 6, Null, 'Paprika smoked', True, True, True, False, False, False, False, False),
(199, 6, Null, 'Pink peppercorns', True, True, True, False, False, False, False, False),
(200, 6, Null, 'Piri peri seasoning', True, True, True, False, False, False, False, False),
(201, 6, Null, 'Sage', True, True, True, False, False, False, False, False),
(202, 6, Null, 'Small red chillies dried', True, True, True, False, False, False, False, False),
(203, 6, Null, 'Star anise', True, True, True, False, False, False, False, False),
(204, 6, Null, 'Sumac', True, True, True, False, False, False, False, False),
(205, 6, Null, 'Thyme', True, True, True, False, False, False, False, False),
(206, 6, Null, 'Turmeric', True, True, True, False, False, False, False, False),
(207, 6, Null, 'White pepper ground', True, True, True, False, False, False, False, False),
(208, 6, Null, 'Za’ atar spice', True, True, True, False, False, False, False, False),
(209, 13, 28, 'Rapeseed oil', True, True, False, False, False, False, False, False),
(210, 13, Null, 'Red wine vinegar', True, True, False, False, False, False, False, False),
(211, 13, Null, 'Soy sauce', True, True, False, False, False, False, False, False),
(212, 8, Null, 'Sesame seeds', True, True, True, False, False, True, False, False),
(213, 8, Null, 'Sunflower seeds', True, True, True, False, False, True, False, False),
(214, 8, 17, 'Almonds blanched', True, True, True, False, False, False, False, False),
(215, 8, Null, 'Blue poppy seeds', True, True, True, False, False, False, False, False),
(216, 8, Null, 'Cashews broken', True, True, True, False, False, False, False, False),
(217, 8, Null, 'Chia seeds', True, True, True, False, False, False, False, False),
(218, 8, Null, 'Chopped mixed nuts', True, True, True, False, False, False, False, False),
(219, 8, 17, 'Flaked almonds', True, True, True, False, False, False, False, False),
(220, 8, Null, 'Linseed', True, True, True, False, False, False, False, False),
(221, 8, Null, 'Mixed nuts', True, True, True, False, False, False, False, False),
(222, 8, Null, 'Mixed seeds', True, True, True, False, False, False, False, False),
(223, 8, 32, 'Peanuts redskin', True, True, True, False, False, False, False, False),
(224, 8, 32, 'Peanuts roasted salted', True, True, True, False, False, False, False, False),
(225, 8, Null, 'Pine kernels', True, True, True, False, False, False, False, False),
(226, 8, Null, 'Pistachios roasted salted', True, True, True, False, False, False, False, False),
(227, 8, Null, 'Pumpkin seeds', True, True, True, False, False, False, False, False),
(228, 8, Null, 'Walnuts broken', True, True, True, False, False, False, False, False),
(229, 8, Null, 'Whole roasted hazelnuts', True, True, True, False, False, False, False, False),
(230, 15, Null, 'Lasagne sheets', True, True, True, False, False, False, False, False),
(231, 15, 25, 'Linguine', True, True, True, False, False, False, False, False),
(232, 15, Null, 'Noodles', True, True, True, False, False, False, False, False),
(233, 15, 25, 'White Penne pasta', True, True, True, False, False, False, False, False),
(234, 15, Null, 'Orzo', True, True, True, False, False, False, False, False),
(235, 15, 25, 'White macaroni elbows', True, True, True, False, False, False, False, False),
(236, 15, 25, 'White spaghetti', True, True, True, False, False, False, False, False),
(237, 15, 25, 'Wholewheat pasta', True, True, True, False, False, False, False, False),
(238, 9, 4, 'Mung beans', True, True, True, False, False, True, False, False),
(239, 9, 4, 'Black Turtle Beans', True, True, True, False, False, False, False, False),
(240, 9, Null, 'Broth Mix', True, True, True, False, False, False, False, False),
(241, 9, 4, 'Butter beans', True, True, True, False, False, False, False, False),
(242, 9, 4, 'Cannellini beans', True, True, True, False, False, False, False, False),
(243, 9, 10, 'Chickpeas', True, True, True, False, False, False, False, False),
(244, 9, 1, 'Green lentils laird', True, True, True, False, False, False, False, False),
(245, 9, 1, 'Lentils dark speckled', True, True, True, False, False, False, False, False),
(246, 9, 10, 'Marrowfat peas', True, True, True, False, False, False, False, False),
(247, 9, 4, 'Mixed beans', True, True, True, False, False, False, False, False),
(248, 9, 4, 'Pinto beans', True, True, True, False, False, False, False, False),
(249, 9, 4, 'Red kidney beans', True, True, True, False, False, False, False, False),
(250, 9, 1, 'Red lentils', True, True, True, False, False, False, False, False),
(251, 9, 4, 'Soya beans', True, True, True, False, False, False, False, False),
(252, 9, 10, 'Split peas yellow', True, True, True, False, False, False, False, False),
(253, 10, 27, 'Black rice', True, True, True, False, False, True, False, False),
(254, 10, 27, 'Long grain white rice', True, True, True, False, False, True, False, False),
(255, 10, 27, 'Millet', True, True, True, False, False, True, False, False),
(256, 10, 27, 'Aborio rice', True, True, True, False, False, False, False, False),
(257, 10, 27, 'Basmati rice', True, True, True, False, False, False, False, False),
(258, 10, Null, 'Bulgar wheat', True, True, True, False, False, False, False, False),
(259, 10, 26, 'Couscous', True, True, True, False, False, False, False, False),
(260, 10, 27, 'Jasmine rice', True, True, True, False, False, False, False, False),
(261, 10, 27, 'Long grain brown rice', True, True, True, False, False, False, False, False),
(262, 10, Null, 'Pearl barley', True, True, True, False, False, False, False, False),
(263, 10, 26, 'Pearl couscous', True, True, True, False, False, False, False, False),
(264, 10, Null, 'Popcorn', True, True, True, False, False, False, False, False),
(265, 10, 7, 'Quinoa', True, True, True, False, False, False, False, False),
(266, 10, 27, 'Sushi rice', True, True, True, False, False, False, False, False),
(267, 10, 7, 'Tricolour quinoa', True, True, True, False, False, False, False, False),
(268, 10, 26, 'White couscous', True, True, True, False, False, False, False, False),
(269, 16, Null, 'Bombay mix', True, True, True, False, False, False, False, False),
(270, 16, 13, 'Chilli rice crackers', True, True, True, False, False, False, False, False),
(271, 16, Null, 'Hot chocolate disks', True, True, True, False, False, False, False, False),
(272, 16, 13, 'Osumi rice crackers', True, True, True, False, False, False, False, False),
(273, 16, Null, 'Vegan chocolates', True, True, True, False, False, False, False, False),
(274, 16, Null, 'Vegan pick & mix', True, True, True, False, False, False, False, False),
(275, 16, Null, ' snack mix variety', True, False, True, False, False, False, False, False);
INSERT INTO Ingredient(ingredient_id, ingredient_name, store_has) VALUES
(276, 'fresh parsley', False),
(277, 'Chopped tomatoes', False),
(278, 'Self raising flour', False),
(279, 'Curry paste', False),
(280, 'Dried mixed mushrooms', False),
(281, 'Arborio rice', False),
(282, 'Rolls', False);
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
(2, 279, '3 tbsp'),
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
(16, 277, '1 can'),
(17, 276, '1 bunch'),
(18, 58, '1 tsp'),
(19, 234, '150 g'),
(20, 281, '400 g'),
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
(33, 279, '2 tbsp'),
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
(55, 282, '2'),
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
(71, 280, '40g'),
(72, 58, '2 tsp'),
(73, 232, '2 nests'),
(74, 278, '2 cups'),
(75, 61, '1 cup'),
(76, 43, '1 tsp'),
(77, 79, '400ml'),
(78, 209, '1tbsp'),
(79, 277, '1 can'),
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
