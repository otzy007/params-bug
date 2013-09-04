Feature: Shout it

Background: Send and recieve JSON
  Given I send and accept JSON

Scenario: User shouts
   When I send a POST request to "/shout" with the following:
   """
   {
      "api_key":"aa",
      "authentication_token":"aa",
      "shout":"trololo"
   }
   """
   Then the response status should be "200"

Scenario: No shout message
   When I send a POST request to "/shout" with the following:
   """
   {
      "api_key":"aaa",
      "authentication_token":"aaa"
   }
   """
  Then the JSON response should have "errors" with the text "No response"
