
DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `user_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `user_id`) VALUES
(1, 'Funny', 3),
(2, 'Animals', 3),
(3, 'Awesome', 3),
(4, 'Others', 2),
(5, 'water fall', 3),
(6, 'hills', 3),
(7, 'happiness', 3),
(8, 'flowers', 3),
(9, 'rainbow', 3);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
CREATE TABLE IF NOT EXISTS `role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`) VALUES
(1, 'ADMIN'),
(2, 'USER'),
(3, 'ADMIN'),
(4, 'USER'),
(5, 'ADMIN'),
(6, 'USER'),
(7, 'ADMIN'),
(8, 'USER'),
(9, 'USER');

-- --------------------------------------------------------

--
-- Table structure for table `search`
--

DROP TABLE IF EXISTS `search`;
CREATE TABLE IF NOT EXISTS `search` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image_url` varchar(255) DEFAULT NULL,
  `search_string` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `search`
--


-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `confirmation_token` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `enabled` int(10) DEFAULT NULL,
  `first_name` varchar(255) NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_ob8kqyqqgmefl0aco34akdtpe` (`email`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `confirmation_token`, `email`, `enabled`, `first_name`, `image_url`, `last_name`, `password`) VALUES
(1, '2f3b824a-fdef-4f98-86a4-e89f8bc031f5', 'avisesudhakarrao@gmail.com', 1, 'sudhakar', 'https://media2.giphy.com/media/Hh3BvJB6dvN1C/200_s.gif', 'rao', '$2a$10$2EzwR5RMnoak0CQtvg39keVWSczA9pj8Lyay2QR1jjbO5X7yzglN6'),
(2, '7b441c87-f570-48c0-9c2f-3d43c0dbdcda', 'tom@gmail.com', 1, 'tom', 'https://media1.giphy.com/media/Ij1cbMbIWDKDK/200_s.gif', 'jerry', '$2a$10$WROxQUgu/iLvqWA.7qFRWeT0ct2giLRJ76gfL9PJyjvAK7FJetFqW'),
(3, '6dad75f2-1906-4901-8cab-4b5911b3f6ac', 'aman@gmail.com', 1, 'Aman', 'https://media3.giphy.com/media/Ij1cbMbIWDKDK/200_s.gif', 'Agrawala', '$2a$10$Y/5MGrimBYOTHmNmPuA6nexNGVqvVzSfikfj.9Yfd72NaLTuAIkh2'),
(4, 'bfe18f97-4580-4f05-8278-8e5ae3c107a9', 'tomherry@gmail.com', 0, 'tom', 'https://media2.giphy.com/media/DTXugNB5Jt6Ra/200_s.gif', 'herry', NULL),
(5, 'aaa70e05-492b-4f51-8a2c-0c015c3a1c17', 'test@gmail.com', 1, 'Test 1', 'https://media1.giphy.com/media/l0IsIk6AUy69wVU2c/200_s.gif', 'Test last', '$2a$10$N63ZLLkayt7A2Tk6qgYcEuj8b5FgsQhoEXhnSr5BWYxuSt9DM0uQ6');

-- --------------------------------------------------------

--
-- Table structure for table `user_giphy`
--

DROP TABLE IF EXISTS `user_giphy`;
CREATE TABLE IF NOT EXISTS `user_giphy` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `category_id` int(10) NOT NULL,
  `giphy_url` varchar(125) NOT NULL,
  `search_string` varchar(125) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `user_giphy`
--

INSERT INTO `user_giphy` (`id`, `user_id`, `category_id`, `giphy_url`, `search_string`) VALUES
(1, 3, 2, 'https://media2.giphy.com/media/3MgNtJdcPWp5eC9cNr/200_s.gif', 'animal'),
(2, 3, 2, 'https://media2.giphy.com/media/3MgNtJdcPWp5eC9cNr/200_s.gif', 'animal'),
(3, 3, 1, 'https://media0.giphy.com/media/1wqqlaQ7IX3TXibXZE/200_s.gif', 'funny'),
(4, 3, 3, 'https://media0.giphy.com/media/9w9Bpoiddg72U/200_s.gif', 'awesome'),
(5, 3, 1, 'https://media0.giphy.com/media/1wqqlaQ7IX3TXibXZE/200_s.gif', 'funny'),
(6, 3, 1, 'https://media2.giphy.com/media/65ODCwM00NVmEyLsX3/200_s.gif', 'funny'),
(7, 3, 1, 'https://media2.giphy.com/media/65ODCwM00NVmEyLsX3/200_s.gif', 'funny'),
(8, 3, 1, 'https://media2.giphy.com/media/65ODCwM00NVmEyLsX3/200_s.gif', 'funny'),
(9, 3, 1, 'https://media2.giphy.com/media/65ODCwM00NVmEyLsX3/200_s.gif', 'funny'),
(10, 3, 1, 'https://media2.giphy.com/media/65ODCwM00NVmEyLsX3/200_s.gif', 'funny'),
(11, 3, 1, 'https://media2.giphy.com/media/65ODCwM00NVmEyLsX3/200_s.gif', 'funny'),
(12, 3, 1, 'https://media2.giphy.com/media/65ODCwM00NVmEyLsX3/200_s.gif', 'funny'),
(13, 3, 2, 'https://media3.giphy.com/media/aZ6mdD2VmfIHu/200_s.gif', 'lion'),
(14, 3, 3, 'https://media0.giphy.com/media/26BRLuCjIDWTSV9pm/200_s.gif', 'Awesome'),
(15, 3, 3, 'https://media3.giphy.com/media/JFA6qbSbb3476/200_s.gif', 'Awesomes'),
(16, 3, 3, 'https://media0.giphy.com/media/QJVxNH8uJk9c4/200_s.gif', 'water fall'),
(17, 3, 2, 'https://media1.giphy.com/media/1mpKLKANctQD6/200_s.gif', 'lion'),
(18, 3, 6, 'https://media1.giphy.com/media/guM0lbsBTYtBC/200_s.gif', 'hills'),
(19, 3, 7, 'https://media3.giphy.com/media/l0Iy6tF8YpxGwkX96/200_s.gif', 'people laughing'),
(20, 3, 8, 'https://media1.giphy.com/media/l2JIjzdSKyfBJhKN2/200_s.gif', 'rose'),
(21, 3, 9, 'https://media1.giphy.com/media/13AcmSNW5O7WV2/200_s.gif', 'rainbow');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
CREATE TABLE IF NOT EXISTS `user_role` (
  `user_id` int(11) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FKa68196081fvovjhkek5m97n3y` (`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`user_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 3),
(2, 4),
(3, 5),
(3, 6),
(4, 7),
(4, 8),
(5, 9);
