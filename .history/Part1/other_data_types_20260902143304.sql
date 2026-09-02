DROP TABLE IF EXISTS basics.app_events;
 CREATE TABLE basics.app_events(
    --make UUID
    id UUID PRIMARY KEY gen_random_uuid,
    event_name  TEXT NOT NULL,
    --JSONB

 );