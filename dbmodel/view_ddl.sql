-- 회원별 업적점수 랭킹
CREATE VIEW user_achievement_rank
AS select
	dense_rank() OVER (ORDER BY sum(a.score) desc) AS userrank,
	ua.user_id AS user_id,
	u.nickname AS nickname,
	sum(a.score) AS score
from
	user_achievement ua
	left join achievement a on ua.achievement_id = a.achievement_id
	left join user u on ua.user_id = u.user_id
where
    ua.progress = 100
    and u.admin = 0
		and u.end_date is null
group by ua.user_id
order by score desc;