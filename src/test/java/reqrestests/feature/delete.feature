Feature: delete a user from reqres
Scenario: delete a user
Given url "https://reqres.in/"
And path "api/users/2"
When method delete
Then status 204