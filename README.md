# Tonight's Dinner

Created a web-app that allows me to input and store the dinners I cook in the evening. Helpful for tracking what I eat and what I can make.

Future possible features:
 - A page that when loaded, displays a random food entry if the user is not sure what to eat.
 - Recipe suggestions using recipe APIs.

07/10/21 - MVP Nearly achieved, need to make the edit action work correctly.

09/10/21 - MVP achieved; add, delete, edit and read functions working correctly. Next stage is to add some more features and CSS styling.

14/10/21 - Trying to deploy to Heroku so it can be hosted online, app keeps crashing so trying to figure out the problem. Once solved then will work on adding more features and CSS.

17/10/21 - CSS and bootstrap styling applied, still working on the buttons and format of pages.

![Imgur](https://i.imgur.com/B4GfIs2.png)

## Technology used
- Ruby on Rails
- Capybara
- Rspec

## How to run
```
git clone https://github.com/coo990/tonights-dinner.git
cd tonights-dinner
bin/rails server
http://localhost:3000/
```

## How to feature test
```
git clone https://github.com/coo990/tonights-dinner.git
cd tonights-dinner
rspec spec/features
```