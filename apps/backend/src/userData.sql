-- table for contact us page

CREATE TABLE
    `userData` (
        `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        `first_name` varchar(128) NOT NULL,
        `last_name` varchar(128) NOT NULL,
        `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
        `email_verified_at` timestamp NULL DEFAULT NULL,
        `company` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
        `created_at` timestamp DEFAULT CURRENT_TIMESTAMP,
        `updated_at` timestamp NULL DEFAULT NULL,
        `contact_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `access` int(11) DEFAULT 0,
        `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
        `account_type` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
        `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
        `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;