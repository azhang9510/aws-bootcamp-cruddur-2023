INSERT INTO public.users (display_name, email, handle, cognito_user_id)
VALUES
  
    --('Andrew Brown','andrew@exampro', 'andrewbrown' ,'MOCK'),
    ('aubrey', 'azhang95100@gmail.com','azhang','MOCK'),
    ('Andrew Bayko', 'bayko@exampro.co','bayko' ,'MOCK'),
    ('Londo Mollari','lmollario@centari.com','londo','MOCK');
  

INSERT INTO public.activities (user_uuid, message, expires_at)
VALUES
  (
    (SELECT uuid from public.users WHERE users.handle = 'azhang' LIMIT 1),
    'This was imported as seed data!',
    current_timestamp + interval '10 day'
  )