-- inner join returns only the matching rows from both tables
 
 SELECT 
    users.name as author_name,
    posts.title as  post_title,
    posts.status,
    posts.views
FROM posts
INNER JOIN users
    ON posts.user_id = users.id
WHERE
    posts.status='published'
ORDER BY 
    posts.views DESC;