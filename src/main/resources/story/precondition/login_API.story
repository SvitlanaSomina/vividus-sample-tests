

Scenario: login by API
Meta:
     @id login_api
Given I initialize STORY variable `board_name` with value `#{generate(numerify 'board##')}`
Given I initialize STORY variable `key` with value `f161f3af53e1561c58bb1a3bb3b02ac2`
Given I initialize STORY variable `token` with value `ATTA218e6f693836165bff637c7a12239004cc74b746fea41d55b35fa96aeedda71f321AC60D`
Given I initialize STORY variable `list_name` with value `#{generate(numerify 'list##')}`
Given I initialize STORY variable `card_name` with value `#{generate(numerify 'card##')}`