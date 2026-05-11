CREATE DATABASE ev_charging_db;

USE ev_charging_db;

-- Table for authorized RFID users
CREATE TABLE authorized_users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    rfid_tag VARCHAR(50) UNIQUE NOT NULL,
    user_name VARCHAR(100),
    balance DECIMAL(10,2) DEFAULT 0.00,
    is_active BOOLEAN DEFAULT TRUE
);

-- Table to log charging sessions
CREATE TABLE charging_logs (
    log_id INT PRIMARY KEY AUTO_INCREMENT,
    rfid_tag VARCHAR(50),
    start_time DATETIME,
    energy_consumed FLOAT, -- in kWh
    power_source VARCHAR(20), -- Solar/Wind/Grid
    total_cost DECIMAL(10,2)
);
