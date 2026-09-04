-- calculate one result from many rows

SELECT
    COUNT(*) AS total_posts,
    COUNT(*) FILTER(WHERE status='published') AS published_posts,
    SUM(views) AS total_views,
    AVG(views) AS average_views,
    MIN(views) AS minimum_views,
    MAX(views) AS maximum_views
FROM 
    posts;