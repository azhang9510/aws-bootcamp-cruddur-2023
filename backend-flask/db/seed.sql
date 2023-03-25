INSERT INTO public.users (display_name, email, handle, cognito_user_id)
VALUES
  ('Andrew Brown','andrew@exampro', 'andrewbrown' ,'MOCK'),
  ('aubrey', 'azhang95100@gmail.com','azhang','MOCK'),
  ('Andrew Bayko', 'bayko@bayko','bayko' ,'MOCK'),
  ('aubrey zhang',  'azhang9510@gmail.com','azhang9510', 'MOCK');

INSERT INTO public.activities (user_uuid, message, expires_at)
VALUES
  (
    (SELECT uuid from public.users WHERE users.handle = 'andrewbrown' LIMIT 1),
    'This was imported as seed data!',
    current_timestamp + interval '10 day'
  )