DROP DATABASE IF EXISTS voting;

CREATE DATABASE voting;

USE voting;

-- Creating the tables in the database
-- voter table
DROP TABLE IF EXISTS voter;

CREATE TABLE voter(
voter_id        INT    PRIMARY KEY   AUTO_INCREMENT,
voter_name      VARCHAR(100)   NOT NULL,
voter_address   VARCHAR(100)   NOT NULL,
voter_district  VARCHAR(100)   NOT NULL,
voter_precint   VARCHAR(100)   NOT NULL,
voter_party    VARCHAR(20),
voter_location VARCHAR(100)   NOT NULL,
voter_reg_no   INT            NOT NULL    UNIQUE   
);

-- ballot table
DROP TABLE IF EXISTS ballot;

CREATE TABLE ballot(
ballot_id             INT     PRIMARY KEY   AUTO_INCREMENT,
voter_id              INT          NOT NULL      UNIQUE,
ballot_type           VARCHAR(20)  NOT NULL, 
ballot_cast_datetime  DATETIME     NOT NULL    DEFAULT NOW(),
CONSTRAINT FOREIGN KEY (voter_id) REFERENCES voter(voter_id),
CONSTRAINT CHECK(ballot_type IN ('in-person', 'absentee'))
);

-- race table
DROP TABLE IF EXISTS race;

CREATE TABLE race(
race_id       INT      PRIMARY KEY  AUTO_INCREMENT,
race_name     VARCHAR(100)    NOT NULL   UNIQUE,
votes_allowed INT             NOT NULL
);

-- candidate table
DROP DATABASE IF EXISTS candidate;

CREATE TABLE candidate(
candidate_id      INT           PRIMARY KEY AUTO_INCREMENT,
race_id           INT           NOT NULL,
candidate_name    VARCHAR(100)  NOT NULL  UNIQUE,
candidate_address VARCHAR(100)  NOT NULL,
candidate_party   VARCHAR(20),
incumbent_flag    BOOL,
CONSTRAINT FOREIGN KEY (race_id) REFERENCES race(race_id)
);

-- ballot_candidate table
DROP TABLE IF EXISTS ballot_candidate;

CREATE TABLE ballot_candidate(
ballot_id     INT,
candidate_id  INT,
PRIMARY KEY (ballot_id, candidate_id),
CONSTRAINT FOREIGN KEY (ballot_id) REFERENCES ballot(ballot_id),
CONSTRAINT FOREIGN KEY (candidate_id) REFERENCES candidate(candidate_id)
);



