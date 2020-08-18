Scenario: Signing in
Given I am on a page with the URL 'https://www.trello.com'
When I find <= '1' elements by By.xpath(//a[text()='Log In']) and for each element do
|step 
|When I click on an element by the xpath '//a[text()='Log In']'                               |                                                                                        |                 
|When I enter 'pelmezekno@enayu.com' in a field by the xpath '//input[@id='user']'            |
|When I wait until an element with the xpath '//input[@value='Log in with Atlassian']' appears|
|When I click on an element by the xpath '//input[@value='Log in with Atlassian']'            |
|When I wait until an element with the xpath '//input[@id='password']' appears                |
|When I enter 'JuKtT6Zq2hS8mBd' in a field by the xpath '//input[@id='password']'             |
|When I click on an element by the xpath '//button[@id='login-submit']'                       |                      |

Scenario: Searching for a board
When I wait until an element with the xpath '//input[@type='search']' appears
When I enter 'Test Board' in a field by the xpath '//input[@type='search']'
When I click on an element by the xpath '//a[@aria-label='Jump to search page']'
When I wait until an element with the xpath '//span[@title='Test Board']' appears
Then an element by the xpath '//span[@title='Test Board']' exists