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
