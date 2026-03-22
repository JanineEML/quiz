USE quiz;

INSERT INTO difficulty (difficulty_label)
VALUES
    ('Leicht'),
    ('Mittel'),
    ('Schwer');

INSERT INTO category (category_label)
VALUES
    ('Allgemeinwissen'),

    -- WISSENSCHAFTEN
    ('Geographie'),
    ('Naturwissenschaft'),
    ('Informatik'),
    ('Mathematik'),

    -- GAMING
    ('Videospiel'),
    ('Soulsborne'),

    -- KULTUR
    ('Film'),
    ('Serie'),
    ('Anime & Manga'),
    ('Sprache'),
    ('Essen & Trinken'),
    ('Musik'),
    ('Sport'),
    ('Literatur');