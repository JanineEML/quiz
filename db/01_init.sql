-- -----------------------------------------------------------------
--     Initializing tables for the Quiz App
-- -----------------------------------------------------------------
USE quiz;
SET NAMES utf8mb4;

-- -----------------------------------------------------------------
--     PLAYER TABLES
-- -----------------------------------------------------------------
--   read:    AuthController->login()
--   write:   AuthController->register()
-- -----------------------------------------------------------------
CREATE TABLE player (
    player_id           INT             PRIMARY KEY AUTO_INCREMENT,
    playername          VARCHAR(50)     NOT NULL UNIQUE,
    pw_hash             VARCHAR(255)    NOT NULL,
    xp                  INT             NOT NULL DEFAULT 0,
    is_admin            BOOLEAN         NOT NULL DEFAULT false,
    is_deleted          BOOLEAN         NOT NULL DEFAULT false,
    time_created        TIMESTAMP       DEFAULT CURRENT_TIMESTAMP
);

-- -----------------------------------------------------------------
--     QUESTION / ANSWER TABLES
-- -----------------------------------------------------------------
--   read:    
--   write:   
-- -----------------------------------------------------------------

CREATE TABLE difficulty (
    difficulty_id       INT             PRIMARY KEY AUTO_INCREMENT,
    difficulty_label    VARCHAR(20)     NOT NULL UNIQUE
);

CREATE TABLE category (
    category_id         INT             PRIMARY KEY AUTO_INCREMENT,
    category_label      VARCHAR(50)     NOT NULL UNIQUE
);

CREATE TABLE question (
    question_id         INT             PRIMARY KEY AUTO_INCREMENT,
    question_text       TEXT            NOT NULL,

    difficulty_id       INT             NOT NULL,
    category_id         INT             NOT NULL,

    FOREIGN KEY (difficulty_id) REFERENCES difficulty (difficulty_id),
    FOREIGN KEY (category_id) REFERENCES category (category_id)
);

CREATE TABLE answer (
    answer_id           INT             PRIMARY KEY AUTO_INCREMENT,
    answer_text         TEXT            NOT NULL,
    is_correct          BOOLEAN         NOT NULL DEFAULT false,

    question_id         INT             NOT NULL,

    FOREIGN KEY (question_id) REFERENCES question (question_id)
);

-- -----------------------------------------------------------------
--     STATISTIC TABLES
-- -----------------------------------------------------------------
--   read:    
--   write:   
-- -----------------------------------------------------------------
CREATE TABLE quiz_session (
    qs_id               INT             PRIMARY KEY AUTO_INCREMENT,
    xp_earned           INT             NOT NULL DEFAULT 0,
    score               INT             NOT NULL DEFAULT 0,
    total               INT             NOT NULL,
    time_started        TIMESTAMP       DEFAULT CURRENT_TIMESTAMP,
    time_completed      TIMESTAMP,

    category_id         INT,
    player_id           INT             NOT NULL,

    FOREIGN KEY (category_id) REFERENCES category (category_id),
    FOREIGN KEY (player_id) REFERENCES player (player_id)
);

CREATE TABLE quiz_answer (
    result_id           INT             PRIMARY KEY AUTO_INCREMENT,
    is_correct          BOOLEAN         NOT NULL DEFAULT false,
    time_played         TIMESTAMP       NOT NULL DEFAULT CURRENT_TIMESTAMP,

    question_id         INT             NOT NULL,
    answer_id           INT             NOT NULL,
    qs_id               INT             NOT NULL,

    FOREIGN KEY (question_id) REFERENCES question (question_id),
    FOREIGN KEY (answer_id) REFERENCES answer (answer_id),
    FOREIGN KEY (qs_id) REFERENCES quiz_session (qs_id)
);

-- -----------------------------------------------------------------
--     FEATURE TABLES
-- -----------------------------------------------------------------
--   read:    
--   write:   
-- -----------------------------------------------------------------

CREATE TABLE achievement (
    achievement_id      INT             PRIMARY KEY AUTO_INCREMENT,
    achievement_name    VARCHAR(100)    NOT NULL UNIQUE,
    achievement_desc    TEXT            NOT NULL,
    condition_type      VARCHAR(50)     NOT NULL,
    condition_value     INT
);

CREATE TABLE player_achievement (
    pa_id               INT             PRIMARY KEY AUTO_INCREMENT,
    player_id           INT             NOT NULL,
    achievement_id      INT             NOT NULL,
    time_earned         TIMESTAMP       NOT NULL DEFAULT CURRENT_TIMESTAMP,

    UNIQUE KEY player_achievement_id (player_id, achievement_id),

    FOREIGN KEY (player_id) REFERENCES player (player_id),
    FOREIGN KEY (achievement_id) REFERENCES achievement(achievement_id)
);
