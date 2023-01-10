-- table for contact us page

CREATE TABLE
    `contact_us` (
        `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        `first_name` varchar(128) NOT NULL,
        `last_name` varchar(128) NOT NULL,
        `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
        `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
        `time_submitted` timestamp DEFAULT CURRENT_TIMESTAMP
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

select * from contact_us;