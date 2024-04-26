@regression_tests

Feature: Validate element created dropdown column

  Scenario: Navigate to the Kayak home page and validate principal elements
    Given I navigate to the kayak main page
    Then I should be in the "home" page
    And The page "should" contain the next elements
      | name                   | type   |
      | name_tag               | input  |
      | name_dropdown_column   | input  |
      | search_tag             | input  |
      | cancel                 | button |
      | create_column_disabled | button |

  Scenario: Validate URL of Home page
    Given I navigate to the kayak main page
    Then I should be in the "home" page
    And The url page should be equal to the next "https://www.kayak.com.co/" url

  Scenario Outline: Navigate between countries and validate the URL
    Given I navigate to the kayak main page
    Then I should be in the "home" page
    When I navigate to the "<url>" URL
    Then The url page should be equal to the next "<url>" url

    Examples:
      | url                       |
      | https://www.kayak.com.my/ |
      | https://www.kayak.com.pr/ |
      | https://www.kayak.com.br/ |

  @validate_menu
  Scenario Outline: navigating through the different menus of the kayak page
    Given I navigate to the kayak main page
    Then I should be in the "home" page
    Then The user navigates through the "<menu>" and validates the "<text>"

    Examples:
      | menu         | text                                                        |
      | Alojamientos | Busca el alojamiento                                        |
      | Carros       | Busca en cientos de webs de alquiler de carros en segundos. |
      | Paquetes     | Busca los mejores paquetes                                  |
      | Vuelos       | Busca en cientos de webs de vuelos a la vez.                |
