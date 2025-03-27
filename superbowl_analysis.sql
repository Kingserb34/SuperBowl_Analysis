/* What team had the highest points in a win and in what year?*/

SELECT date, winner, MAX(winner_pts) FROM superbowls;

/* What team had the lowest points in a win and in what year?*/
SELECT date, winner, MIN(winner_pts) FROM superbowls;

/* List all of the superbowl winners and losers*/
SELECT winner, loser
FROM superbowls;

/* Show the record of each team in the superbowl */
SELECT team,
    SUM(CASE WHEN team = winner THEN 1 ELSE 0 END) AS wins,
    SUM(CASE WHEN team = loser THEN 1 ELSE 0 END) AS losses,
    COUNT(*) AS total_games
FROM (
    SELECT winner AS team, winner, loser FROM superbowls
    UNION ALL
    SELECT loser AS team, winner, loser FROM superbowls
    ) AS all_teams
GROUP BY team
ORDER BY wins DESC;

/* Shows MVPs and scores of the winning team between 10 and 40 points */
SELECT mvp, winner, winner_pts
FROM superbowls
WHERE winner_pts BETWEEN 10 AND 40
ORDER BY winner_pts desc;
SELECT * FROM superbowls;

/* Shows how many times each team has won the Superbowl */ 
SELECT winner, COUNT(*) AS total_wins
FROM superbowls
GROUP BY winner
ORDER BY total_wins DESC;

/* Shows how many times a player has won the MVP */
SELECT MVP, COUNT(*) AS total_mvps
FROM superbowls
GROUP BY MVP
ORDER BY total_mvps DESC;

/* Shows the average point differential in the Superbowl */
SELECT AVG(ABS(Winner_Pts - Loser_Pts)) AS Avg_Point_Differential
FROM superbowls;
