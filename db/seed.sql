USE quiz;

INSERT INTO difficulty (difficulty_label)
VALUES
    ('Leicht'),
    ('Mittel'),
    ('Schwer');

INSERT INTO category (category_label)
VALUES
    ('Hauptstadt'),
    ('Geographie');

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES
    ('Deutschland', 1, 1),
    ('Argentinien', 1, 1),
    ('Brasilien', 1, 1),
    ('China', 1, 1),
    ('Japan', 1 , 1),
    ('Belgien', 1, 1);

INSERT INTO answer (answer_text, is_correct, question_id)
VALUES
    ('Berlin', 1, 1),
    ('Buenos Aires', 1, 2),
    ('Brasilia', 1, 3),
    ('Peking', 1, 4),
    ('Tokio', 1, 5),
    ('Brüssel', 1, 6);