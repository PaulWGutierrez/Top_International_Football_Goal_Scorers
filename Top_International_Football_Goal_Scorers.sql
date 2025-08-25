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
-- Q3. How many players were from Argentina?
-- Q4. How many players were from Germany?
-- Q5. How many players were from France?
-- Q6. How many players were from Brazil?
-- Q7. Which Confederation has the most goal scorers?
-- Q8. Out of the 82 players who had the most "Goals per match"?
-- Q9. How many players are still active and playing in the present?
-- Q10. Which Confederation has the least goal scorers?

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


-- Q3. How many players were from Argentina?


