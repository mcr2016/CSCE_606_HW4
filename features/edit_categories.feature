Feature: Edit categories
  
As an administrator
In order to create and maintain blog categories
I should be able to view and edit existing categories and create new categories

Background:
    Given the blog is set up
	And I am logged into the admin panel

Scenario: Creating a new category
  
  Given I am on the admin page
  And I go to the new category page
  Then I should see "Categories"
  When I fill in "Name" with "Test Name"
  And I fill in "Keywords" with "Test Keyword"
  And I fill in "Permalink" with "Test Permalink"
  And I fill in "Description" with "Test Description"
  And I press "Save"
  Then I should see "Category was successfully saved"
  And I should see "Test Name"
  And I should see "Test Keyword"
  And I should see "Test Permalink"
  And I should see "Test Description"