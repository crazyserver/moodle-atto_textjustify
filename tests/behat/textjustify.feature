@editor @editor_atto @atto @atto_bold @_bug_phantomjs
Feature: Atto textjustify button
  To format text in Atto, I need to use the textjustify button.

  @javascript
  Scenario: Textjustify some text
    Given I log in as "admin"
    And I follow "Profile" in the user menu
    And I follow "Edit profile"
    And I set the field "Description" to "Badger"
    And I select the text in the "Description" Atto editor
    When I click on "Justify text" "button"
    And I press "Update profile"
    And I follow "Preferences" in the user menu
    And I follow "Editor preferences"
    And I set the field "Text editor" to "Plain text area"
    And I press "Save changes"
    And I follow "Edit profile"
    Then I should see "style=\"text-align:justify;\""
