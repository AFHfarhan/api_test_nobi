CREATE TABLE `transaction` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`trx_id` varchar(255) NOT NULL DEFAULT '',
`user_id` bigint(20) NOT NULL DEFAULT '0',
`amount` decimal(10,0) NOT NULL DEFAULT '0',
`created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
`updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `transaction` (`id`, `trx_id`, `user_id`, `amount`,
`created_at`, `updated_at`) VALUES
(1, 'a', 1, 0.01000000, '2022-03-07 09:55:44', '2022-03-07 09:55:44'),
(2, 'B', 1, 0.02000000, '2022-03-07 09:55:44', '2022-03-07 09:55:44');

CREATE TABLE `balance` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`user_id` bigint(20) NOT NULL DEFAULT '0',
`amount_available` decimal(10,0) NOT NULL DEFAULT '0',
`created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
`updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO `balance` (`id`, `user_id`, `amount_available`, `created_at`,
`updated_at`) VALUES
(1, 1, 0.00674223, '2022-03-07 09:57:13', '2022-03-07 09:57:13'),
(2, 2, 1.00000000, '2022-03-07 09:57:13', '2022-03-07 09:57:13'),
(3, 3, 0.00000001, '2022-03-07 09:57:13', '2022-03-07 09:57:13'),
(4, 4, 21.00000000, '2022-03-07 09:57:13', '2022-03-07 09:57:13');