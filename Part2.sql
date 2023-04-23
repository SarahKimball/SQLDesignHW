
-- Table: Region
-- Column Name	            Data Type	    Description
-- id	                    Integer	        Unique identifier for the region
-- name	                    String	        Name of the region


-- Table: User
-- Column Name	            Data Type	    Description
-- id	                    Integer	        Unique identifier for the user
-- name	                    String	        Name of the user
-- email	                String	        Email address of the user
-- preferred_region_id	    Integer	        Foreign key to the Region table, indicating the user`'s preferred region`


-- Table: Post
-- Column Name	            Data Type	    Description
-- id	                    Integer	        Unique identifier for the post
-- title	                String	        Title of the post
-- text	                    String	        Text of the post
-- user_id	                Integer	        Foreign key to the User table, indicating the user who posted the ad
-- location	                String	        Location of the posting
-- region_id	            Integer	        Foreign key to the Region table, indicating the region of the posting


-- Table: Category
-- Column Name	            Data Type	    Description
-- id	                    Integer	        Unique identifier for the category
-- name	                    String	        Name of the category


-- Table: Post_Category
-- Column Name	            Data Type	    Description
-- id	                    Integer     	Unique identifier for the Post_Category relationship
-- post_id	                Integer     	Foreign key to the Post table, indicating the post that belongs to the category
-- category_id	            Integer	        Foreign key to the Category table, indicating the category that the post belongs to





CREATE TABLE Region (
    id INTEGER PRIMARY KEY,
    name TEXT
);

CREATE TABLE User (
    id INTEGER PRIMARY KEY,
    name TEXT,
    email TEXT,
    preferred_region_id INTEGER,
    FOREIGN KEY (preferred_region_id) REFERENCES Region(id)
);

CREATE TABLE Post (
    id INTEGER PRIMARY KEY,
    title TEXT,
    text TEXT,
    user_id INTEGER,
    location TEXT,
    region_id INTEGER,
    FOREIGN KEY (user_id) REFERENCES User(id),
    FOREIGN KEY (region_id) REFERENCES Region(id)
);

CREATE TABLE Category (
    id INTEGER PRIMARY KEY,
    name TEXT
);

CREATE TABLE Post_Category (
    id INTEGER PRIMARY KEY,
    post_id INTEGER,
    category_id INTEGER,
    FOREIGN KEY (post_id) REFERENCES Post(id),
    FOREIGN KEY (category_id) REFERENCES Category(id)
);
