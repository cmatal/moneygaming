@signup
Feature: SignUp
  As a​ new moneygaming.com player, I want to​ be able to register using my full details so that​ I can play online casino games

Scenario: Required fields at SignUp
  Given a user navigates to the SignUp page
  When only title, first and surname are entered
  And even if t&c are accepted
  Then The following error is shown at least once: This field is required


  
