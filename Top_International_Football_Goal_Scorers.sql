-- SQL Top International Football Goal Scorers Analysis

-- CREATE TABLE
DROP TABLE IF EXISTS top_football_goal_scorers;
CREATE TABLE top_football_goal_scorers
		(
  			rank INT,
			player VARCHAR(30)PRIMARY KEY,
			nation VARCHAR(30),
			confederation VARCHAR(15),
			goals INT,
			caps INT,
			goals_per_match FLOAT,
			career_span VARCHAR(15),
			date_of_50th_goal DATE
		);
		
SELECT * FROM top_football_goal_scorers;

-- Data Analysis Questions:

-- Q1. How many players are the top goal scorers with 50 or more goals?
-- Q2. How many players were in each Confederation?
-- Q3. How many players were from Japan?
-- Q4. How many players were from Mexico?
-- Q5. How many players were from France?
-- Q6. How many players were from Brazil?
-- Q7. What are the top 10 countries that produced players that acheived 50+ goals?
-- Q8. Which Confederation has the most goal scorers?
-- Q9. Out of the 82 players who had the most "Goals per match"?
-- Q10. How many players are still active and playing in the present?
-- Q11. Which Confederation has the least goal scorers?

-- Data Analysis Exploration and Findings:

-- Q1. How many players are the top goal scorers with 50 or more goals?

SELECT COUNT(DISTINCT player) AS number_of_players from top_football_goal_scorers;


-- Q2. How many players were in each Confederation?

SELECT
	confederation,
	COUNT(*) as players_per_confederation
FROM top_football_goal_scorers
GROUP BY 1
ORDER BY 2 DESC;


-- Q3. How many players were from Japan?

SELECT
	nation,
	COUNT (*) AS japanese_players
FROM top_football_goal_scorers
Where nation = 'Japan'
GROUP BY 1;


-- Q4. How many players were from Mexico?

SELECT
	nation,
	COUNT (*) AS mexican_players
FROM top_football_goal_scorers
Where nation = 'Mexico'
GROUP BY 1;


-- Q5. How many players were from France?

SELECT
	nation,
	COUNT (*) AS french_players
FROM top_football_goal_scorers
Where nation = 'France'
GROUP BY 1;


-- Q6. How many players were from Brazil?

SELECT
	nation,
	COUNT (*) AS brazilian_players
FROM top_football_goal_scorers
Where nation = 'Brazil'
GROUP BY 1;


-- Q7. What are the top 10 countries that produced players that acheived 50+ goals?

SELECT
  nation,
  COUNT(*) AS number_of_players,
  SUM(goals) AS total_goals
FROM top_football_goal_scorers
GROUP BY nation
ORDER BY 3 DESC
LIMIT 10;

