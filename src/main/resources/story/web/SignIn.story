Scenario: Signing in
Given I am on a page with the URL 'https://www.trello.com'
When I click on an element with the text 'Log In'
When I enter 'pelmezekno@enayu.com' in a field by the xpath '//input[@id='user']'
When I wait until an element with the xpath '//input[@value='Log in with Atlassian']' appears
When I click on an element by the xpath '//input[@value='Log in with Atlassian']'
When I wait until an element with the xpath '//input[@id='password']' appears
When I enter 'JuKtT6Zq2hS8mBd' in a field by the xpath '//input[@id='password']'
When I click on an element by the xpath '//button[@id='login-submit']'
When I wait until the page has the title 'Boards | Trello'
Then the page with the URL 'https://trello.com/dsvdvs/boards' is loaded  