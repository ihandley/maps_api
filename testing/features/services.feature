Feature: Perform a 'Nearby Search'

    Background:
        Given I have a NearbySearch object
        Given output json
        Given latitude 40.274722 and longitude -111.727778 
        Given radius 500 meters
        Given sensor false

    Scenario: Successful execution of basic Nearby Search 
        When I execute the search
        Then I will get back a json file containing results

    Scenario: Successful execution of basic Nearby Search with keyword
        Given keyword Orem
        When I execute the search
        Then I will get back a json file containing results

    Scenario: Successful execution of basic Nearby Search with language
        Given language es
        When I execute the search
        Then I will get back a json file containing results

    Scenario: Successful execution of basic Nearby Search with min price and max price
        Given minimum price $1 and maximum price $10
        When I execute the search
        Then I will get back a json file containing results

    Scenario: Successful execution of basic Nearby Search with name 
        Given name Subway
        When I execute the search
        Then I will get back a json file containing results

    Scenario: Successful execution of basic Nearby Search with open now
        Given open now true
        When I execute the search
        Then I will get back a json file containing results

    Scenario: Successful execution of basic Nearby Search with rank by prominence
        Given rank by prominence
        When I execute the search
        Then I will get back a json file containing results

    Scenario: Successful execution of basic Nearby Search with rank by distance
        Given rank by distance
        When I execute the search
        Then I will get back a json file containing results

    Scenario: Successful execution of basic Nearby Search with types
        Given types food|gas_station
        When I execute the search
        Then I will get back a json file containing results

#    Scenario: Successful execution of basic Nearby Search with pageToken
#        Given page token true
#        When I execute the search
#        Then I will get back a json file containing results

#    Scenario: Successful execution of basic Nearby Search with zagatSelected
#        Given zagat selected
#        When I execute the search
#        Then I will get back a json file containing results

