DELETE FROM books;
DELETE FROM authors;

INSERT INTO authors (id, last_name, first_name)
VALUES (1, 'Tolkien', 'J.R.R.'),
       (2, 'Lewis', 'C.S'),
       (3, 'Sanderson', 'Brandon'),
       (4, 'Tom', 'Clancy');

INSERT INTO books (id, title, description, published_year, author_id)
VALUES
    -- Source: https://www.tolkiensociety.org/actorModel/books-by-tolkien/
    (1, 'Sir Gawain & The Green Knight', 'A modern translation of the Middle English romance from the stories of King Arthur.', 1925, 1),
    (2, 'The Hobbit: or There and Back Again', 'The bedtime story for his children famously begun on the blank page of an exam script that tells the tale of Bilbo Baggins and the dwarves in their quest to take back the Lonely Mountain from Smaug the dragon.', 1937, 1),
    (3, 'The Fellowship of the Ring', 'One of the world’s most famous books that continues the tale of the ring Bilbo found in The Hobbit and what comes next for it, him, and his nephew Frodo.', 1954, 1),
    (4, 'The Two Towers', 'The continuation of the story begun in The Fellowship of the Ring as Frodo and his companions continue their various journeys.', 1954, 1),
    (5, 'The Return of the King', 'The conclusion to the story that we began in The Fellowship of the Ring and the perils faced by Frodo et al.', 1955, 1),
    (6, 'Sir Gawain and the Green Knight, Pearl and Sir Orfeo', 'Tolkien’s translations of these Middle English poems collected together.', 1975, 1),
    (7, 'The Silmarillion', 'Tolkien’s own mythological tales, collected together by his son and literary executor, of the beginnings of Middle-earth (and the tales of the High Elves and the First Ages) which he worked on and rewrote over more than 50 years.', 1977, 1),

    -- Source: https://penlighten.com/complete-list-of-c-s-lewis-books-in-chronological-order
    (8, 'Out of the Silent Planet', 'Most of the action in this book takes place on Mars. The story’s hero, Elwin Ransom, takes a trip to Mars when he realizes that the earth has been shunned from the solar system. He soon finds out that the Earth’s Oyarsa (planet ruler) has turned evil. Hence, to prevent this from adversely affecting the rest of the solar system, the Earth has now been made a ‘silent planet’.', 1938, 2),
    (9, 'Perelandra', 'This book is also known as Voyage to Venus, which makes it quite evident that it is set on Venus (Perelandra). Here, Elwin Ransom goes to Venus on the orders of the Mars Oyarsa seen in Out of the Silent Planet, to save the Venusian humanoids from an attack by the Earth’s Oyarsa. It tells us all about Ransom’s adventures on Venus and his consequent return to earth.', 1943, 2),
    (10, 'That Hideous Strength', 'In this book, Elwin Ransom is not the main hero. This book is set on earth, where the National Institute of Coordinated Experiments (N.I.C.E.), a huge organization known for its advanced scientific work, is in search of the body of the famous wizard, Merlin. It is collaborating with demons from another planet to take control of the Earth.', 1946, 2),
    (11, 'The Screwtape Letters', 'These are a series of letters written by a demon called Screwtape, to his demon nephew Wormwood, who is a novice put in charge of a person, who is referred to as ‘the patient’. Wormwood is supposed to tempt this human and make him err, thus bringing him closer to Hell (Satan) and away from Heaven (God). It aptly describes the human nature. The patient has been shown to convert to Christianity, and the book also describes various areas of temptation such as gluttony, sex, and pride, with which Wormwood is supposed to sway him. The book ends with the patient going to Heaven and Wormwood being destroyed by other demons.', 1942, 2),
    (12, 'The Lion, the Witch and the Wardrobe', 'This book was the first of the series that introduced us to the enchanting world of Narnia. The four Pevensie children, Lucy, Edmund, Susan, and Peter, are living with an old professor after having to leave London due to World War II. At his house, they come across a wardrobe that leads to another world called Narnia. The book revolves around the children helping Aslan the lion save the land from the evil witch. The witch is defeated, and the four children become the rulers of Narnia.', 1950, 2),
    (13, 'Prince Caspian', 'In this book, the children return to Narnia because a prince named Caspian calls to them for help. More than a millennium has passed since they left, and they are shocked to find Narnia ravaged, and the evil Miraz sitting on the throne. Miraz is Caspian’s uncle, who has betrayed his parents and become king. Caspian wants to defeat him, for which he needs help from the Pevensies.', 1951, 2),
    (14, 'The Voyage of the Dawn Treader', 'This book has only Lucy and Edmund, and a new character named Eustace Scrubb, who is their cousin. They join prince Caspian aboard the Dawn Treader, and set sail to find those lords who Miraz got rid of once he came to power. The book follows their adventures aboard the ship, and all the interesting people and creatures that they meet on their journey.', 1952, 2),
    (15, 'The Silver Chair', 'The Silver Chair stars Eustace and his friend Jill Pole, who are called to Narnia by Aslan to find prince Rilian, prince Caspian’s son. Rilian has left over a decade ago to find those who killed his mother and avenge her death. But he has not returned. This book shows the trouble and adventure the two children go through in their journey. The Pevensies do not appear in this book as main characters.', 1953, 2),
    (16, 'The Horse and His Boy', 'As with The Silver Chair, the main protagonists of this book are not the Pevensie children, though the book is set during their reign over Narnia. The story involves two people and two talking horses, who are separately held captive in another country, and plan their individual escapes to Narnia. They meet each other on the way and make the journey together.', 1954, 2),
    (17, 'The Magician''s Nephew', 'The book revolves around two friends, Digory Kirk and Polly Plummer. Digory’s uncle has created two magic rings, which the children put on one day, enabling them to enter many different worlds. They also get to witness how Aslan creates Narnia. The 12-year-old Digory is the same professor who houses the Pevensie children 4 decades later, and in whose house they find the entrance to Narnia.', 1955, 2),
    (18, 'The Last Battle', 'The Last Battle is about a foolish donkey who makes a great deal of trouble by pretending to be Aslan, which causes a battle between the other rulers of the land, in turn leading to the ruin and end of Narnia.', 1956, 2),

    -- Source: https://en.wikipedia.org/wiki/Brandon_Sanderson_bibliography
    (19, 'Elantris', '', 2005, 3),
    (20, 'The Final Empire', '', 2006, 3),
    (21, 'The Well of Ascension', '', 2007, 3),
    (22, 'The Hero of Ages', '', 2008, 3),
    (23, 'Warbreaker', '', 2009, 3),
    (24, 'The Way of Kings', '', 2010, 3),
    (25, 'The Alloy of Law', '', 2011, 3),
    (26, 'Words of Radiance', '', 2014, 3),
    (27, 'Shadows of Self', '', 2015, 3),
    (28, 'The Bands of Mourning', '', 2016, 3),
    (29, 'Oathbringer', '', 2017, 3),
    (30, 'Rhythm of War', '', 2005, 3)
;
