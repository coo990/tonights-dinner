# Tonight's Dinner

Created a web-app that allows me to input and store the dinners I cook in the evening. Helpful for tracking what I eat and what I can make. Contains CRUD elements working successfully to add dinner, edit posting and delete food. Also contains a 'Choose Dinner for Me!' feature, where when clicked, runs a function that randomly displays a dinner from the database, if the user is unsure what to eat.

Future possible features:
 - Recipe suggestions using recipe APIs within the page.

07/10/21 - MVP Nearly achieved, need to make the edit action work correctly.

09/10/21 - MVP achieved; add, delete, edit and read functions working correctly. Next stage is to add some more features and CSS styling.

14/10/21 - Trying to deploy to Heroku so it can be hosted online, app keeps crashing so trying to figure out the problem. Once solved then will work on adding more features and CSS.

17/10/21 - CSS and bootstrap styling applied, still working on the buttons and format of pages.

27/10/21 - Implemented random dinner display feature

## Screenshot

![Imgur](https://i.imgur.com/ZMbUmKa.png)

## Sketch idea

![Imgur](https://i.imgur.com/sPqEjEx.jpg)

## Technology used
- Ruby on Rails
- Capybara
- Rspec
- Bootstrap

## How to run
```
git clone https://github.com/coo990/tonights-dinner.git
cd tonights-dinner
// Create database
rake db:create
bin/rails server
http://localhost:3000/
```

## How to feature test
```
git clone https://github.com/coo990/tonights-dinner.git
cd tonights-dinner
rspec spec/features
```