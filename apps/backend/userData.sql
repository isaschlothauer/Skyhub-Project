-- table for contact us page

CREATE TABLE
    `users` (
        `id` int(10) UNSIGNED PRIMARY KEY AUTO_INCREMENT NOT NULL,
        `account_type` varchar(20) NOT NULL,
        `account_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
        `firstname` varchar(128) NOT NULL,
        `lastname` varchar(128) NOT NULL,
        `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
        `email_verified_at` timestamp NULL DEFAULT NULL,
        `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
        `company` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
        `created_at` timestamp default NOW(),
        `updated_at` timestamp default NULL ON UPDATE NOW(),
        `access` int(11) NOT NULL DEFAULT 0,
        `passwordHash` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
        `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `tos` TINYINT(1) NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;