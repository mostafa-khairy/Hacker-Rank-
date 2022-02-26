/*
Submissions	Leaderboard	Discussions
Samantha interviews many candidates from different colleges using coding challenges and contests. Write a query to print the contest_id,
hacker_id, name, and the sums of total_submissions, total_accepted_submissions, total_views, 
and total_unique_views for each contest sorted by contest_id. Exclude the contest from the result if all four sums are 0 .

Note: A specific contest can be used to screen candidates at more than one college, but each college only holds 1 screening contest.
*/


select 
c.contest_id , c.hacker_id, c.name ,  sum(total_submissions) , sum(total_accepted_submissions) , sum(total_views) ,sum(total_unique_views)

from Contests c
join Colleges co 
on c.contest_id = co.contest_id
join Challenges ch
on co.college_id = ch.college_id
left join ( select challenge_id , sum(total_views) as total_views , sum(total_unique_views) as total_unique_views from View_Stats  group by challenge_id ) v
on v.challenge_id = ch.challenge_id
left join ( select challenge_id , sum(total_submissions) as total_submissions , sum(total_accepted_submissions) as total_accepted_submissions from Submission_Stats
 group by challenge_id ) s
on s.challenge_id = ch.challenge_id

group by c.contest_id , c.hacker_id, c.name 

having sum(total_submissions) > 0 or sum(total_accepted_submissions) > 0 or
 sum(total_views) > 0 or sum(total_unique_views) > 0
order by contest_id;
