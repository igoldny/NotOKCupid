# NotOKCupid

[NotOKCupid Live](https://notokcupid.herokuapp.com)

NotOKCupid is a full-stack web application inspired by OKCupid, with a twist.  NotOKCupid's matching algorithm matches users based on their incompatibility, because sometimes the worst love matches turn out to be the best.  It utilizes Ruby on Rails on the backend, a PostgreSQL database, and ReactJS with a Redux architectural framework on the frontend.  

# Install

first install with apt-get (ruby, node, postgresql, git)

then git clone:
```
$ git clone https://github.com/igoldny/NotOKCupid.git
$ cd NotOKCupid
```

this install bundler and nokogiri with gem (nokogiri might be tricky)
```
$ gem install bundler
$ gem install nokogiri
```

then install ruby packages with bundler
```
$ bundler install
```

and node packages with npm
```
$ npm install
```

make sure postgres is running
```
$ postgres --help
```

run database db:migrations
```
$ rake db:reset db:migrate
```

and you ready to go.
to start the server
```
$ rails server
```


## Features & Implementation

### Sign up and Log In Page

![Alt text](/app/assets/images/signup_page.png)

### User CRUD (minus the D)

Users that navigate to NotOKCupid are prompted by an easy to follow log in/sign up page in which they can walk through the steps to find love (or not).  For existing users, the sign in button in the top right prompts a log in modal to render on the screen.  After logging in, users are directed to the browse page (more information below).  For users looking to sign up, they may choose a gender and sexuality, followed by some general information about themselves including their age and location.  Last but not least, they are able to choose a username and password (a unique username and password greater than 6 characters, obviously).  From that point on, users are directed to the profile page to fill out information to improve their match percentages.

### Profile Page

![Alt text](/app/assets/images/profile_page.png)

From the profile page, users are able to add profile pictures and answer some basic questions about themselves, such as "What I plan to do with my life" or "I'm really great at..".  As displayed in the image above, users can edit this information by clicking the edit pencil next to the title.  Displayed below is the questions section, where the user is able to answer questions about themselves to minimize the margin of error in the matching algorithm.  The more questions answered, the more accurate the outcome!

### Questions Page

![Alt text](/app/assets/images/questions_page.png)

Answer questions about yourself to find the perfect match! The algorithm is pretty simple, actually.  Questions get a point amount based on the importance of the question to the user: a little important, somewhat important, and very important, or 1 points, 10 points, and 50 points, respectively.  They are then asked which answers they will NOT accept from a partner.  The algorithm then finds users with common questions answered and tallies up their points based on whether or not the other user answered the NOT acceptable answer of the current user, tallying the full points for the user if that holds true and tallying a zero if not.  This happens for both users. At the end, the two users multiply their individual percentages together and the geometric mean is calculated from these results.  Finally, you have a match percentage!

### Messages Page

Messages:
![Alt text](/app/assets/images/messages_page.png)

Chat:
![Alt text](/app/assets/images/chat_page.png)

On the messages page, users can view all of their received and sent converations. Clicking on the conversation will lead you to the chat page, where you can hold a casual conversation with another user!

### Browse Page

![Alt text](/app/assets/images/browse_page.png)

The main page of the project, where users are directed after log in, is the browse page.  On this page, users are displayed their matches.  They can set a distance to search users by, as well as a sorting method.  The page opens with matches sorted by match percentage, but users can also choose to sort by username and age.


## Future Directions for the Project

In addition to the features already implemented, I plan to continue work on this project. The next steps for NotOKCupid are outlined below.

### Search

I would like to implement user searching to give users access to other users that they aren't necessarily matched with.  

###  Block or hide other users

Users should be able to block/hide other users that they may be uninterested in or have had a bad experience with.
