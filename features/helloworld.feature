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
    | English | "Hello, World!" |
    | Spanish | "!Hola mundo!" |
