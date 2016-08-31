-- -- remove existing rows
-- TRUNCATE classes CASCADE;
--
-- INSERT INTO classes (subject)
-- VALUES
--   ('Underwater Basket Weaving'),
--   ('Happiness'),
--   ('Light Treason'),
--   ('Flossing');

  -- remove existing rows
  TRUNCATE classes CASCADE;

  -- create classes
  INSERT INTO classes (subject, teacher_id)
  VALUES
    ('Underwater Basket Weaving',
      (SELECT id FROM teachers WHERE last_name = 'Herman')),
    ('Happiness',
      (SELECT id FROM teachers WHERE last_name = 'Reid')),
    ('Flossing',
      (SELECT id FROM teachers WHERE last_name = 'Hajek')),
    ('Light Treason',
      (SELECT id FROM teachers WHERE last_name = 'Bluth'));
