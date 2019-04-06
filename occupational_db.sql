-- Create and use database
CREATE DATABASE IF NOT EXISTS tech_occupational_db;
USE tech_occupational_db;

-- Create tables for raw data to be loaded into
-- DROP TABLE IF EXISTS ccupations;
DROP TABLE job_listings;
DROP TABLE yearly_stats;
DROP TABLE occupations;

CREATE TABLE IF NOT EXISTS occupations (
  occupation_code VARCHAR(16),
  occupation_title VARCHAR(255),
  PRIMARY KEY (occupation_code)
);

CREATE TABLE IF NOT EXISTS yearly_stats (
  id INT AUTO_INCREMENT,
  occupation_code VARCHAR(16),
  hourly_median FLOAT,
  annual_median FLOAT,
  PRIMARY KEY (id),
  FOREIGN KEY (occupation_code) REFERENCES occupations(occupation_code)
);

CREATE TABLE IF NOT EXISTS job_listings (
  id INT AUTO_INCREMENT,
  occupation_code VARCHAR(16),
  occupation_title VARCHAR(255),
  result_title VARCHAR(255),
  pay_range VARCHAR(255),
  experience TEXT,
  education TEXT,
  location_ VARCHAR(255),
  PRIMARY KEY (id),
  FOREIGN KEY (occupation_code) REFERENCES occupations(occupation_code)
);
