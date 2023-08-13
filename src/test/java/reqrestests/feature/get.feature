Feature: get all users from reqres
Background:
    Given url "https://reqres.in/"
Scenario: get all users
 And path "api/users"
 And param page = 2
 When method get
 Then status 200

Scenario: get single users
    And path "api/users/2"
    When method get
    Then status 200
   