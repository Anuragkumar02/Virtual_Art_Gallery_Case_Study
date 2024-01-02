use vag;

create table Artwork (
ArtworkID int primary key auto_increment,
Title varchar(255),
Description text, 
CreationDate date, 
Medium varchar(50),
ImageURL varchar(255)
);

                         
CREATE TABLE Artist (
 ArtistID INT PRIMARY KEY auto_increment,
 		Name VARCHAR(255) NOT NULL,
 	Biography TEXT,
 BirthDate Date,
 Nationality VARCHAR(100),
 		Website VARCHAR(200),
 		ContactInformation VARCHAR(14)
       );
                         
CREATE TABLE Gallery(
            GalleryID INT PRIMARY KEY auto_increment,
            Name VARCHAR(100) NOT NULL,
            Description VARCHAR(200) NOT NULL,
            Location VARCHAR(200) NOT NULL,
            Curator int not null,
            OpeningHours varchar(30) not null,
            FOREIGN KEY (Curator) REFERENCES Artist(ArtistID) ON DELETE CASCADE );



CREATE TABLE ARTWORK_GALLERY (  	
		 GalleryID int , 		
 ArtworkID int,
    		PRIMARY KEY ( GalleryID, ArtworkID),
FOREIGN KEY (GalleryID) REFERENCES Gallery (GalleryID) ON DELETE CASCADE,
FOREIGN KEY (ArtworkID) REFERENCES Artwork(ArtworkID) ON DELETE CASCADE
);


CREATE TABLE User(
UserID INT PRIMARY KEY AUTO_INCREMENT,
Username VARCHAR(25) NOT NULL,
Password VARCHAR(20) NOT NULL,
Email VARCHAR(50) NOT NULL,
FirstName VARCHAR(25) NOT NULL,
LastName VARCHAR(25) DEFAULT NULL,
DateofBirth Date DEFAULT NULL,
ProfilePicture LONGBLOB DEFAULT NULL
);


CREATE TABLE UserFavoriteArtworks(
UserID INT ,
ArtworkID INT ,
PRIMARY KEY(UserID,ArtworkID),
FOREIGN KEY (UserID) REFERENCES User(UserID) ON DELETE CASCADE,
FOREIGN KEY (ArtworkID) REFERENCES Artwork(ArtworkID) ON DELETE CASCADE
);

/* INSERTING DATA*/

INSERT INTO Artwork 
(ArtworkID, Title, Description, CreationDate, Medium, ImageURL)
VALUES
(1, 'The Starry Night', 'Famous painting by Vincent van Gogh', '1889-06-01', 'Oil on canvas', 'starry_night.jpg'),
(2, 'Mona Lisa', 'Iconic portrait by Leonardo da Vinci', '1503-01-01', 'Oil on wood', 'mona_lisa.jpg'),
(3, 'Guernica', 'Powerful anti-war painting by Pablo Picasso', '1937-04-26', 'Oil on canvas', 'guernica.jpg'),
       (4, 'The Persistence of Memory', 'Surrealist painting by Salvador Dalí', '1931-01-01', 'Oil on canvas', 'persistence_of_memory.jpg'),
       (5, 'Starry Night Over the Rhône', 'Night sky painting by Vincent van Gogh', '1888-09-01', 'Oil on canvas', 'starry_night_rhone.jpg'),
       (6, 'The Birth of Venus', 'Classic painting by Sandro Botticelli', '1900-05-23', 'Tempera on canvas', 'birth_of_venus.jpg'),
       (7, 'The Last Supper', 'Religious masterpiece by Leonardo da Vinci', '1788-09-18', 'Tempera on gesso', 'last_supper.jpg'),
       (8, 'Water Lilies', 'Series of paintings by Claude Monet', '1899-07-27', 'Oil on canvas', 'water_lilies.jpg'),
      (9, 'American Gothic', 'Iconic painting by Grant Wood', '2001-01-11', 'Oil on beaverboard', 'american_gothic.jpg'),
      (10, 'The Scream', 'Expressionist painting by Edvard Munch', '1809-11-23', 'Oil, tempera, pastel, and crayon on cardboard', 'the_scream.jpg');

/*artworkid line 2 last*/


INSERT INTO Artist 
(ArtistID, Name, Biography, BirthDate, Nationality, Website, ContactInformation)
VALUES
 	  (1, 'Pablo Picasso', 'Renowned Spanish painter and sculptor.','1990-05-15', 'Spanish','http://www.Pablo Picasso.com', '123-456-7890'),
  (2, 'Vincent van Gogh', 'Dutch post-impressionist painter.','1985-09-22', 'Dutch','http://www.Vincent van Gogh.com', '987-654-3210'),
  	  (3, 'Alex Johnson', 'Abstract art specialist', '1993-07-10', 'Canadian', 'http://www.alexjohnsonart.com', '555-123-4567'),
   	  (4, 'Maria Rodriguez', 'Sculptor extraordinaire', '1980-12-03', 'Spanish', 'http://www.mariarodriguezsculptures.com', '456-789-0123'),
  	  (5, 'Robert White', 'Photography genius', '1975-04-28', 'Australian', 'http://www.robertwhitephotos.com', '789-012-3456'),
   	  (6, 'Emily Davis', 'Mixed media artist', '1998-01-17', 'French', 'http://www.emilydavisartworks.com', '321-654-9870'),
   	  (7, 'Michael Lee', 'Digital art pioneer', '1988-06-05', 'Chinese', 'http://www.michaelleeart.com', '234-567-8901'),
 	  (8, 'Sophie Taylor', 'Illustration master', '1995-03-12', 'German', 'http://www.sophietaylorillustrations.com', '789-321-0123'),
 	  (9, 'Daniel Brown', 'Ceramics specialist', '1982-11-20', 'Mexican', 'http://www.danielbrownceramics.com', '567-890-1234'),
   	 (10, 'Elena Martinez', 'Watercolor expert', '1991-08-08', 'Italian', 'http://www.elenamartinezart.com', '012-345-6789'),
 	 (11, 'John Doe', 'A talented artist', '1990-05-15', 'American', 'http://www.johndoe.com', '123-456-7887'),
   	 (12, 'Jane Smith', 'Award-winning painter', '1985-09-22', 'British', 'http://www.janesmith.com', '987-654-3298');
     
     

INSERT INTO Gallery 
         (GalleryID, Name, Description, Location, Curator, OpeningHours)
         VALUES
        (200, 'Mystic Art', 'Diverse Indian art', 'Delhi', 1, 'Morning'),
        (201, 'Eternal Canvas', 'Traditional meets modern', 'Mumbai', 2, 'Morning'),
 	  (202, 'Harmony Gallery', 'Unity in diversity', 'Bangalore', 3, 'Morning'),
  (203, 'Serenity Arts', 'Calm and expressive', 'Chennai', 4, 'Morning'),
 	  (204, 'Kolkata Visions', 'Artistic city tales', 'Kolkata', 5, 'Morning'),
  	  (205, 'Hyderabad Heritage', 'Nawabi elegance', 'Hyderabad', 6, 'Morning'),
  	  (206, 'Gujarat Canvas', 'Vibrant cultural hues', 'Ahmedabad', 7, 'Morning'),
  	  (207, 'Pune Impressions', 'Captivating artworks', 'Pune', 8, 'Morning'),
 	  (208, 'Pink City Palette', 'Jaipur artistic charm', 'Jaipur', 9, 'Morning'),
  	  (209, 'Lucknow Expressions', 'Nawabi sophistication', 'Lucknow', 10, 'Morning'),
 	 (210, 'Bhubaneswar Creations', 'Artistic Odisha', 'Bhubaneswar', 11, 'Morning'),
  	 (211, 'Chandigarh Art Oasis', 'Modern expressions', 'Chandigarh', 12, 'Morning');

/*Userid,username,password,email,firstname,lastname,dob,profilepicture*/
INSERT INTO gallery(name,description,location,curator,openinghours) VALUES("sjb","ubchb","ahsb",1,"jhax");


INSERT INTO  ARTWORK_GALLERY (GalleryID, ArtworkID)VALUES
(200,5),
(201,1),
(203,3),
(204,6),
(202,2),
(206,4),
(209,8),
(207,10),
(208,10),
(200,1),
(208,6),
(209,6);

INSERT INTO User(userid,username,password,email,firstname,lastname,dateofbirth) VALUES
(1001,"saiteja12","sai@1234","saiteja@gmail.com","Saiteja","Manepalli","2001-12-25"),
(1002,"saiteja007","Saibh@123","sai.bh@gmail.com","saiteja","Bheemireddy","2001-10-20"),
(1003,"anuraj18","Anuraj@000","anurag@gmail.com","Anurag","Kumar","2000-08-10"),
(1004,"sanket333","Sanket@999","sanket@gmail.com","Sanket","Jain","2000-05-20"),
(1005,"nisha08","Nisha@08","nisha@gmail.com","Nisha","Majhi","2001-04-16");


INSERT INTO userfavoriteartworks VALUES
(1001,2),
(1003,4),
(1002,1),
(1004,3),
(1002,3),
(1002,5),
(1001,5),
(1001,3),
(1003,6),
(1004,4),
(1003,9);

SELECT g.name "gname",a.name "aname",a.*,g.* FROM gallery g JOIN artist a ON g.curator = a.artistid;

SELECT g.name "gname",a.name "aname",a.*,g.* FROM gallery g JOIN artist a ON g.curator = a.artistid WHERE galleryId = 201

SELECT g.name 'gname',a.name 'aname',a.*,g.* FROM gallery g JOIN artist a ON g.curator = a.artistid WHERE galleryId = 210

select * from user

UPDATE Artist SET name ='Srinivas',biography='Famous',birthdate='1995-5-9',nationality='Indian' WHERE artistid=13;