-- Adminer 4.8.1 MySQL 5.5.5-10.6.18-MariaDB-0ubuntu0.22.04.1 dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

CREATE DATABASE `yii_blog` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `yii_blog`;

DROP TABLE IF EXISTS `tbl_migration`;
CREATE TABLE `tbl_migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

TRUNCATE `tbl_migration`;
INSERT INTO `tbl_migration` (`version`, `apply_time`) VALUES
('m000000_000000_base',	1729703946),
('m241023_171631_create_users_table',	1730302787),
('m241028_155400_create_posts_table',	1730302941);

DROP TABLE IF EXISTS `tbl_post`;
CREATE TABLE `tbl_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `author_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `author_id` (`author_id`),
  CONSTRAINT `tbl_post_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `tbl_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

TRUNCATE `tbl_post`;
INSERT INTO `tbl_post` (`id`, `title`, `content`, `author_id`, `created_at`, `updated_at`) VALUES
(6,	'Title',	'It\'s a new content',	1,	'2024-10-30 16:01:03',	'2024-10-30 16:44:44'),
(7,	'New post',	'Hello, people!\r\nI made it!',	2,	'2024-10-30 16:31:07',	'2024-10-30 16:33:51'),
(8,	'10 Удивительных фактов о нашей Вселенной, которые поразят вас',	'1. Вселенная расширяется быстрее, чем мы думали\r\n   Ученые давно знали, что Вселенная постоянно расширяется после Большого взрыва, но недавно выяснилось, что она делает это гораздо быстрее, чем предполагалось ранее. Это открытие ставит перед учеными новые вопросы о природе темной энергии, которая может быть причиной этого ускорения.\r\n\r\n2. Темная материя составляет большую часть массы Вселенной\r\n   Около 85% всей материи во Вселенной состоит из так называемой «темной» материи, которую невозможно увидеть или обнаружить напрямую. Она взаимодействует с обычной материей через гравитацию, но ее природа остается одной из самых больших загадок современной физики.\r\n\r\n3. В нашей галактике миллиарды планет\r\n   Млечный Путь содержит от 100 до 400 миллиардов звезд, а недавние исследования показывают, что у каждой звезды может быть хотя бы одна планета. Это означает, что в нашей галактике могут существовать триллионы планет!\r\n\r\n4. Черные дыры могут создавать новые вселенные\r\n   Некоторые ученые предполагают, что черные дыры, достигнув определенной плотности, могут коллапсировать в сингулярность и создать новую вселенную. Эта теория пока не доказана, но она открывает захватывающие перспективы для понимания нашего мира.\r\n\r\n5. Звезды рождаются и умирают каждый день\r\n   В любой момент времени где-то во Вселенной появляются новые звезды, а старые звезды заканчивают свой жизненный цикл, превращаясь в сверхновые или белые карлики. Этот процесс непрерывен и напоминает огромный космический круговорот жизни.\r\n\r\n6. Мы живем внутри пузыря пустоты\r\n   Наша галактика находится в центре огромного космического «пузыря», известного как Локальная пустота. Это область пространства, где плотность вещества значительно ниже средней плотности Вселенной. Причины возникновения таких пустот остаются неизвестными.\r\n\r\n7. Самая большая структура во Вселенной\r\n   Сверхскопление Ланиакея – крупнейшая известная структура во Вселенной, включающая в себя нашу собственную галактику Млечного Пути. Ее размеры настолько велики, что трудно даже представить: около 500 миллионов световых лет в поперечнике!\r\n\r\n8. Время замедляется вблизи черных дыр\r\n   Согласно общей теории относительности Эйнштейна, время вблизи массивных объектов, таких как черные дыры, течет медленнее. Если вы подойдете достаточно близко к черной дыре, ваше восприятие времени будет отличаться от восприятия людей на Земле.\r\n\r\n9. Во Вселенной есть планеты, похожие на Землю\r\n   Благодаря телескопам, таким как Kepler и TESS, астрономы обнаружили тысячи экзопланет, некоторые из которых находятся в обитаемых зонах своих звезд. Эти планеты могут иметь условия, подходящие для существования жизни, как на Земле.\r\n\r\n10. Возможно существование параллельных вселенных\r\n    Теория мультивселенной предполагает, что наша Вселенная – лишь одна из множества возможных. В других вселенных могут действовать другие физические законы, и они могут находиться за пределами нашего восприятия.\r\n\r\nЭти удивительные факты напоминают нам, насколько велика и таинственна наша Вселенная. Каждый новый день приносит новые открытия, которые продолжают удивлять ученых и обычных людей по всему миру.',	1,	'2024-10-30 17:42:09',	'2024-10-30 17:44:27'),
(9,	'The Ultimate Guide to Mastering the Art of Photography',	'Welcome to the ultimate guide designed to help you become a true master of photography! Whether you\'re a beginner looking to hone your skills or an experienced photographer aiming to refine your craft, this comprehensive resource covers everything from fundamental principles to advanced techniques. Let\'s dive right in!\r\n\r\n## Part I: Foundations of Photography\r\n\r\n### 1. Camera Basics\r\nUnderstanding your camera is the first step toward taking great photographs. Familiarize yourself with the following components:\r\n\r\n- Camera Types: DSLR vs Mirrorless\r\n- Sensor Sizes: Full Frame vs Crop Sensor\r\n- Lenses: Prime vs Zoom Lenses\r\n\r\n### 2. Exposure Triangle\r\nThe three pillars of exposure are aperture, shutter speed, and ISO. Here\'s a brief overview:\r\n\r\n- Aperture: Controls the amount of light entering the lens and affects depth of field.\r\n- Shutter Speed: Determines how long the camera\'s sensor is exposed to light.\r\n- ISO: Measures the sensitivity of the camera’s sensor to light. Higher ISO values can introduce noise but allow for shooting in low-light conditions.\r\n\r\n### 3. Composition Rules\r\nGood composition is essential for compelling images. Some popular rules include:\r\n\r\n- Rule of Thirds: Divide your frame into thirds both horizontally and vertically. Place important elements along these lines or at their intersections.\r\n- Leading Lines: Use lines within the scene to draw the viewer\'s eye towards the main subject.\r\n- Symmetry and Patterns: Create visually pleasing compositions by emphasizing symmetry and repeating patterns.\r\n\r\n## Part II: Advanced Techniques\r\n\r\n### 1. Long Exposure\r\nCapture motion blur and create ethereal images by using slow shutter speeds. Perfect for night photography, waterfalls, and star trails.\r\n\r\n### 2. HDR Photography\r\nCombine multiple exposures of the same scene to capture a wide dynamic range. This technique helps preserve detail in both highlights and shadows.\r\n\r\n### 3. Macro Photography\r\nExplore the microscopic world with macro lenses. Focus on tiny details and reveal hidden beauty in everyday objects.\r\n\r\n### 4. Low-Light Photography\r\nLearn how to shoot in challenging lighting conditions without sacrificing quality. Utilize high ISO settings, tripods, and external lighting when necessary.\r\n\r\n## Part III: Post-Processing\r\n\r\n### 1. Basic Editing\r\nEnhance your images with simple adjustments in software like Adobe Lightroom:\r\n\r\n- Adjust exposure, contrast, and white balance.\r\n- Apply presets to quickly achieve desired looks.\r\n\r\n### 2. Advanced Retouching\r\nTake your editing skills to the next level with tools like Adobe Photoshop:\r\n\r\n- Remove blemishes and distractions.\r\n- Dodge and burn to accentuate specific areas.\r\n- Add creative effects and filters.\r\n\r\n## Final Thoughts\r\n\r\nBecoming a master of photography requires dedication, practice, and continuous learning. As you progress, don\'t forget to experiment and develop your own unique style. Share your work, seek feedback, and never stop exploring new techniques and perspectives.\r\n\r\nWe hope this guide has provided valuable insights and practical advice to help you on your journey. Happy shooting!',	1,	'2024-10-30 17:49:09',	'2024-10-30 17:49:09'),
(10,	'От мусора к сокровищу: Как апсайклинг меняет моду',	'В мире моды всегда было место для новаторских идей, и одна из них — это концепция апсайкинга. Апсайклинг, или переработка старых вещей в новые, становится все более популярным трендом, который помогает снизить экологический след индустрии и одновременно создает уникальные и стильные предметы одежды. Давайте разберемся, почему этот подход стал столь востребованным и какие возможности он открывает для дизайнеров и потребителей.\r\n\r\n## Что такое апсайклинг?\r\n\r\nАпсайклинг — это процесс преобразования уже существующих материалов или изделий в нечто новое и более ценное. В отличие от обычного рециклинга, когда материалы разлагаются и перерабатываются заново, апсайклинг сохраняет оригинальные элементы вещи, добавляя им вторую жизнь. Например, старая джинсовая куртка может превратиться в стильный рюкзак, а винтажное платье — в эксклюзивный топ.\r\n\r\n## Почему апсайклинг важен?\r\n\r\n1. Экологическая устойчивость. Модная индустрия является одним из крупнейших загрязнителей окружающей среды. Производство новых тканей требует значительных ресурсов, включая воду, энергию и химические вещества. Апсайклинг позволяет сократить эти затраты, уменьшая количество отходов и снижая нагрузку на природу.\r\n\r\n2. Уникальность и индивидуальность. Каждая вещь, созданная методом апсайкл, уникальна. Дизайнеры используют различные техники и подходы, чтобы превратить старые предметы в настоящие произведения искусства. Покупатели получают возможность носить одежду, которой больше ни у кого нет.\r\n\r\n3. Экономическая выгода. Переработка старых материалов часто обходится дешевле, чем производство новых. Это позволяет дизайнерам предлагать свою продукцию по более доступным ценам, делая моду доступной для большего числа людей.\r\n\r\n## Примеры успешных проектов\r\n\r\nМногие дизайнеры и бренды уже активно внедряют принципы апсайклирования в свои коллекции. Вот несколько ярких примеров:\r\n\r\n- Stella McCartney. Известный британский дизайнер известна своим стремлением к устойчивому развитию. В своих коллекциях она использует переработанные материалы, такие как полиэстер из пластиковых бутылок и органический хлопок.\r\n\r\n- Patagonia. Этот бренд спортивной одежды известен своими инициативами по защите природы. Они предлагают программы обмена и ремонта старой одежды, а также создают новые изделия из переработанных материалов.\r\n\r\n- Reformation. Американский бренд специализируется на создании стильной и экологически чистой одежды. Они используют ткани, оставшиеся от производства других брендов, и перерабатывают их в новые модели.\r\n\r\n## Как принять участие?\r\n\r\nЕсли вам нравится идея апсайкала, вот несколько способов присоединиться к этому движению:\r\n\r\n1. Покупайте вещи у местных дизайнеров. Поддерживайте небольшие бренды, которые занимаются апсайком. Часто такие компании предлагают уникальные и качественные изделия.\r\n\r\n2. Перерабатывайте сами. Попробуйте самостоятельно переделать старую одежду. Это отличный способ проявить креативность и создать что-то уникальное.\r\n\r\n3. Продавайте ненужные вещи. Вместо того чтобы выбрасывать старую одежду, попробуйте продать её онлайн или отдать на благотворительность. Возможно, кто-то найдет ей новое применение.\r\n\r\n## Заключение\r\n\r\nАпсайклинг — это не просто тренд, это важный шаг к созданию более устойчивого будущего. Он помогает уменьшить негативное воздействие моды на окружающую среду и предлагает потребителям уникальные и стильные решения. Присоединяйтесь к этому движению и помогите сделать мир немного лучше!',	2,	'2024-10-30 17:53:12',	'2024-10-30 17:53:12');

DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

TRUNCATE `tbl_user`;
INSERT INTO `tbl_user` (`id`, `username`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1,	'Serg',	'serg@mail.com',	'$2y$13$89jxvOMuNQmgBcmLHQeOIe0yph9kuxXT77svDBGgeeqRll0kKp9eG',	'2024-10-30 16:00:34',	NULL),
(2,	'Oleg',	'oleg@maiol.com',	'$2y$13$HiFv7Fptc0W7tCjHYsUtQeJol7bwciB3oJKh6ZKd5R69OLoiZD8hK',	'2024-10-30 16:11:57',	NULL);

-- 2024-10-30 17:59:27
