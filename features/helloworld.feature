Feature: Say hello
  As a friendly person
  I want to say hello to the world
  So everyone will be happy

  Scenario Outline: Saying hello
    Given I meet someone who speaks <language>
    When I say hello
    Then the greeting is <greeting>

    Examples:
    | language | greeting              |
    | Klingon   |  "qo' vlvan!"    |
    | Chinese  | "你好世界" |
    | Vinese  | "V你好世界" |
    | Yinese  | "Y你好世界" |

  Scenario: Saying hello
    Given I meet someone who speaks English
    When I say hello
    Then the greeting is "Hello, World!"

  Scenario: Have a default greeting
    Given I visit the hello world app
    Then the default greeting is "Hello, World!"

  @wip
  Scenario: Clearing the message
    Given I meet someone who speaks English
    When I say hello
    And I clear the message
    Then the greeting "Hello, World!" is not displayed
