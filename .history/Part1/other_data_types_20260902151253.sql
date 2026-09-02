DROP TABLE IF EXISTS basics.app_events;
 CREATE TABLE basics.app_events(
    --make UUID
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    event_name  TEXT NOT NULL,
    --JSONB
    metadata JSONB DEFAULT '{}' ::jsonb,
    created_at TIMESTAMP DEFAULT NOW()

 );
 INSERT INTO basics.app_events
 (event_name,metadata)
 VALUES
 ('signup',
 
    '{"browser" :"chrome"}'
 
 ),
 ('signout',
 
    '{"others" :"unknown"}'
 );
 -- ->> used for extracting the data as plain text and ? checks whether json has the metadata key or not
 SELECT metadata ->> 'browser' AS browser FROM basics.app_events WHERE metadata ?  'browser';