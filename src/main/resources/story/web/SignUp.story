Scenario: Signing up
Given I am on a page with the URL 'https://www.trello.com'
When I click on an element with the text 'Sign Up'
When I enter '<email>' in a field by the xpath '//input[@id='email']'
Examples:
|email               |
|gamadi1441@brosj.net|
|haydekilme@enayu.com|
When I click on an element by the xpath '//input[@id='signup-submit']'
Then the page title is 'Sign up - Log in with Atlassian account'
When I wait until an element with the xpath '//input[@id='displayName']' appears
When I enter '#{generate(regexify '[a-z]{5}[A-Z]{2}')}' in a field by the xpath '//input[@id='displayName']'
When I enter '#{generate(regexify '[a-z]{5}[A-Z]{7}')}' in a field by the xpath '//input[@id='password']'
When I click on an element by the xpath '//button[@id='signup-submit']'
Then an element by the xpath '//div[@id='rc-imageselect']' exists