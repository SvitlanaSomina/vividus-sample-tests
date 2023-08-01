Description: Test demoing VIVIDUS capabilities for REST API


GivenStories:/story/precondition/login_API.story#{id:login_api}


Scenario: Verify creating the board
When I execute HTTP POST request for resource with URL `https://api.trello.com/1/boards/?name=#{generate(numerify 'board##')}&key=${key}&token=${token}`
When I save JSON element from `${response}` by JSON path `$.id` to story variable `board_id`
Then response code is equal to `200`
Then the response body does not contain 'error'


Scenario: Verify creating the list
When I execute HTTP POST request for resource with URL `https://api.trello.com/1/lists?name=#{generate(numerify 'list##')}&idBoard=#{removeWrappingDoubleQuotes(${board_id})}&key=${key}&token=${token}`
When I save JSON element from `${response}` by JSON path `$.id` to story variable `list_id`
Then response code is equal to `200`
Then the response body does not contain 'error'


Scenario: Verify creating the card
When I execute HTTP POST request for resource with URL `https://api.trello.com/1/cards?name=#{generate(numerify 'card##')}&idList=#{removeWrappingDoubleQuotes(${list_id})}&key=${key}&token=${token}`
Then response code is equal to `200`
Then the response body does not contain 'error'


Scenario: Verify deleting the board
When I execute HTTP DELETE request for resource with URL `https://api.trello.com/1/boards/#{removeWrappingDoubleQuotes(${board_id})}?key=${key}&token=${token}`
Then response code is equal to `200`
Then the response body does not contain 'error'