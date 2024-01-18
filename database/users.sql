CREATE TABLE `users` (
                       id INT PRIMARY KEY AUTO_INCREMENT,
                       `username` VARCHAR(255) NOT NULL COLLATE 'utf8mb4_unicode_ci',
                       `firstName` VARCHAR(255) NOT NULL COLLATE 'utf8mb4_unicode_ci',
                       `lastName` VARCHAR(255) NOT NULL COLLATE 'utf8mb4_unicode_ci',
                       `password` VARCHAR(255) NOT NULL COLLATE 'utf8mb4_unicode_ci',
                       `status` TINYINT(4) NOT NULL DEFAULT '1',
                       `role` INT(10) UNSIGNED NOT NULL,
                       PhoneNumber VARCHAR(12),
                       Moneyy FLOAT,
                       created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                       updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
                       UNIQUE KEY username_unique (username)
)
COLLATE='utf8mb4_unicode_ci'
ENGINE=InnoDB
AUTO_INCREMENT=5
;
