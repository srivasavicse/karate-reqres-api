Feature: Update user from reqres
Scenario: update user
Given url "https://reqres.in/"
And path "api/users/2"
* def putRequestPayload = 
"""
    {
    "name": "morpheus",
    "job": "zion resident"
}
"""
And request putRequestPayload
When method put
Then status 200
* def responseBodyname = response.job
And print responseBodyname