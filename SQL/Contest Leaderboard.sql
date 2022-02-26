select s.hacker_id, h.name, sum(score) total_score 
from (select hacker_id , max(score) score
     from Submissions
    group by challenge_id,hacker_id ) as s
join Hackers h
on s.hacker_id = h.hacker_id
group by hacker_id, name
having total_score > 0
order by total_score desc , hacker_id;
