Table: Team
Column Name	        Data Type	    Description
id	                Integer	        Unique identifier for the team
name	            String	        Name of the team
location	        String	        Location of the team


Table: Player
Column Name	        Data Type	    Description
id	                Integer	        Unique identifier for the player
name	            String	        Name of the player
team_id	            Integer	        Foreign key to the Team table, indicating the team that the player belongs to


Table: Goal
Column Name	        Data Type	    Description
id	                Integer	        Unique identifier for the goal
player_id	        Integer	        Foreign key to the Player table, indicating the player who scored the goal
match_id	        Integer	        Foreign key to the Match table, indicating the match in which the goal was scored


Table: Referee
Column Name	        Data Type	    Description
id	                Integer	        Unique identifier for the referee
name	            String	        Name of the referee


Table: Match
Column Name	        Data Type	    Description
id	                Integer	        Unique identifier for the match
home_team_id	    Integer	        Foreign key to the Team table, indicating the home team
away_team_id	    Integer	        Foreign key to the Team table, indicating the away team
referee_id	        Integer	        Foreign key to the Referee table, indicating the referee for the match
start_time	        Datetime	    The start time of the match
end_time	        Datetime	    The end time of the match


Table: Season
Column Name	        Data Type	    Description
id	                Integer	        Unique identifier for the season
start_date	        Date	        The start date of the season
end_date	        Date	        The end date of the season




CREATE TABLE Team (
    id INTEGER PRIMARY KEY,
    name TEXT,
    location TEXT
);

CREATE TABLE Player (
    id INTEGER PRIMARY KEY,
    name TEXT,
    team_id INTEGER,
    FOREIGN KEY (team_id) REFERENCES Team(id)
);

CREATE TABLE Goal (
    id INTEGER PRIMARY KEY,
    player_id INTEGER,
    match_id INTEGER,
    FOREIGN KEY (player_id) REFERENCES Player(id),
    FOREIGN KEY (match_id) REFERENCES Match(id)
);

CREATE TABLE Referee (
    id INTEGER PRIMARY KEY,
    name TEXT
);

CREATE TABLE Match (
    id INTEGER PRIMARY KEY,
    home_team_id INTEGER,
    away_team_id INTEGER,
    referee_id INTEGER,
    start_time DATETIME,
    end_time DATETIME,
    FOREIGN KEY (home_team_id) REFERENCES Team(id),
    FOREIGN KEY (away_team_id) REFERENCES Team(id),
    FOREIGN KEY (referee_id) REFERENCES Referee(id)
);

CREATE TABLE Season (
    id INTEGER PRIMARY KEY,
    start_date DATE,
    end_date DATE
);
