/* https://leetcode.com/problems/article-views-i/description */
select DISTINCT viewer_id as id from Views
where author_id = viewer_id
ORDER BY id ASC