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
 {
    '"browser" :"chrome"'
 }
 ),
 ('signout',
 {
    '"browser" :"unknown"'
 });