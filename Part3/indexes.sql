SELECT 
id,
title,
status
FROM posts
WHERE status='published';

CREATE INDEX IF NOT EXISTS idx_posts_status
ON posts(status);


SELECT 
    title,
    status,
    views
FROM posts
WHERE status='published'
ORDER BY views DESC;
CREATE INDEX IF NOT EXISTS idx_posts_status_views
ON posts(status,views DESC);