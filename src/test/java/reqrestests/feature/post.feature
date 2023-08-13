Feature: create user at reqres

Scenario: Create an user

 Given url "https://reqres.in/"
 And path "/api/users"
 * def requestPayload = 
"""
{
    "name": "morpheus",
    "job": "leader"
}
"""
And request  requestPayload
And header Content-Type = "application/json"
When method post 
Then status 201

