#Blistat - A Web Polling Application

Blistat is my first project that aims to make voting a more fun process without all the hassle of going through major registration processes just to actually vote. I designed it in such a way for people to create fun polls that are just about anything. 

##Key Aspects

The key aspect to creating the poll are the three main models:

* Polls (has_many :choices)
* Choices (has_many :votes and belongs_to :poll)
* Votes (belongs_to :choice)

After creating these three models, it was easy to structure the application in such a way that it can be flexible to retrieve and create polls, choices or votes.

##Applied Ruby Techniques

* Nested Forms
* Google Charts API
* Multiple Associated Forms
* Others.