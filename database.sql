-- IT Asset Registry - paste this into phpMyAdmin > SQL tab and click Go
CREATE DATABASE IF NOT EXISTS it_asset_registry
  CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci;

USE it_asset_registry;

CREATE TABLE IF NOT EXISTS assets (
  id              INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name            VARCHAR(150) NOT NULL,
  position        VARCHAR(150) NOT NULL,
  department      VARCHAR(150) NOT NULL,
  ip_address      VARCHAR(45)  NOT NULL,
  cpu_serial      VARCHAR(150) NOT NULL,
  monitor_serial  VARCHAR(150) NOT NULL,
  id_domain       VARCHAR(150) NOT NULL,
  password_domain TEXT         NOT NULL, -- stored encrypted (AES-256) by PHP
  created_at      TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at      TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (id),
  KEY idx_name (name),
  KEY idx_department (department),
  KEY idx_ip (ip_address)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
