-- Create and use database
CREATE DATABASE tech_occupation_db;
USE tech_occupational_db;

-- Create tables for raw data to be loaded into
CREATE TABLE occupations (
  id INT AUTO_INCREMENT,
  occupation_code VARCHAR(7),
  occupation_title VARCHAR(255),
  PRIMARY KEY (id),
  FOREIGN KEY (occupation_code),
  FOREIGN KEY (occupation_title)
);

CREATE TABLE yearly_stats (
  id INT AUTO_INCREMENT,
  occupational_code VARCHAR(7)
  hourly_median FLOAT,
  annual_median FLOAT
  PRIMARY KEY (id)
  FOREIGN KEY (occupation_code),
);

CREATE TABLE job_listings (
  id INT,
  occupation_title VARCHAR(255),
  result_title VARCHAR(255),
  pay_range VARCHAR(255),
  experience TEXT,
  education TEXT,
  location_ VARCHAR(255),
  PRIMARY KEY (id),
  FOREIGN KEY (occupation_title)
);


