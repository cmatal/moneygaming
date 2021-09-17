@password_requirements
Feature: Password Requirements
  As a​ new moneygaming.com player, I want to​ be able to register using my full details so that​ I can play online casino games

Scenario: Password Requirements NOT met on SignUp
  Given a user navigates to the SignUp page
  #There coud be a yml file with correct hardcoded data for each field for the step below
  When all other required sign up data is entered correctly
  #The step below contains code that randomizes passwords that won't match the accepted criteria
  And the user enters a password that does not meet the requirements
  And Join Now! is clicked
  #The characters allowed should be provided on the UI as there are a large amount of special characters (even in other alphabets)
  #See https://owasp.org/www-community/password-special-characters for examples
  Then The following error is shown: Password must be at least 6​ characters long with at least ​one​ number and at least ​one special character

Scenario: Password Requirements met on SignUp
  Given a user navigates to the SignUp page
  #There coud be a yml file with correct hardcoded data for each field for the step below
  When all other required sign up data is entered correctly
  #The step below could have code to randomize passwords using regex
  And the user enters a password that does meet the requirements
  And Join Now! is clicked
  Then The following error is shown: Success! Good Luck
