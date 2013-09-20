Feature: Creation of 'Request' Services
  In order to use services
  As an API consumer
  I must create services


  Scenario: Successfully perform a 'Nearby Search' request
    Given I have what I need 
    When I do a search
    Then I will have a json file for my perusal

