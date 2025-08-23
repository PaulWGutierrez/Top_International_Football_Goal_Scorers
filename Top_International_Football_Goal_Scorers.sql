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

-- 1. Which Confederation has the most goal scorers?
-- 2. How many players were from Brazil?
-- 3. How many players were from Argentina?
-- 4. How many players were from Germany?
-- 5. How many players were from France?
-- 6. How many players were in each Confederation?
-- 7. How many players are still active and playing in the present?
-- 8. Out of the 82 players who had the most "Goals per match"?
-- 9.
-- 10.
