# NotOKCupid

[Heroku Link](www.heroku.com)

[Production README](https://github.com/wesRobAndSin/NotOKCupid)

## Minimum Viable Product

NotOKCupid is a web application inspired by OKCupid that will be built using Ruby on Rails and React/Redux.  At the end of the two weeks creating this application, it will, at minimum, satisfy the following criteria:

* [ ] Hosting on Heroku
* [ ] New account creation, login, and guest/demo login
* [ ] A production README, replacing this README
* [ ] Profile CRUD as well as browsing and searching for other users by 'looking for' and location
  * Adequate styling
  * Smooth, bug-free navigation
  * Adequate and appropriate seeds to demonstrate the feat
* [ ] Messaging and liking
  * Adequate styling
  * Smooth, bug-free navigation
  * Adequate and appropriate seeds to demonstrate the feat
* [ ] Personality questions
  * Adequate styling
  * Smooth, bug-free navigation
  * Adequate and appropriate seeds to demonstrate the feat
* [ ] Match percentages based on question answers
  * Adequate styling
  * Smooth, bug-free navigation
  * Adequate and appropriate seeds to demonstrate the feat
* [ ] **Bonus:** Block or hide other users
* [ ] **Bonus:** Mark importance of questions and weight accordingly in percent match
* [ ] **Bonus:** Infinite scroll

## Design Docs

- [View Wireframes](wireframes.md)
- [React Components](components.md)
- [API Endpoints](api-endpoints.md)
- [DB Schema](schema.md)
- [Sample State](sample-state.md)

## Implementation Timeline

### Phase 1: Backend Setup and Front End User Authentication
**Objective:** Functioning rails project with front-end Authentication and home page CSS.

* [x] Create rails project
* [ ] Setup gemfile, webpack, and frontend folders
* [ ] Create `User` MVC
* [ ] Backend auth
* [ ] Redux cycle for front end auth
* [ ] CSS styling home page


### Phase 2: Profile Model, API, and Components
**Objectice:** Profiles can be created, read, updated, and destroyed through the API.

* [ ] Create `Profile` MVC and other associated MVC's
* [ ] CRUD with database
* [ ] Continue to build redux cycles

### Phase 3: Messaging and Liking
**Objectice:** Users can message each other and like profiles.

* [ ] Create `Message` and `Like` MVC's as well as other associated models
* [ ] CRUD with database
* [ ] Continue with redux and seeding database

### Phase 4: Personality Questions
**Objectice:** Users can answer questions to improve match results.

* [ ] Create `Question` MVC and associated MVC's
* [ ] Continue seeding and styling

### Phase 5: Matching Users Based on Question Answers
**Objectice:** Matching algorithm that displays best matches, hopefully weighted by importance.

* [ ] Matching algorithm

### Bonus Features
* [ ] Blocking or hiding users
* [ ] Question importance weighting
* [ ] Infinite scroll
