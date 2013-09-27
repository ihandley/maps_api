require_relative 'api/services'
require 'json'
require 'test/unit'

include Test::Unit::Assertions

Given /^I have a NearbySearch object$/ do
    @nearbySearch = NearbySearch.new
end

Given /^output (.*)$/ do |output|
    @output = output
end

Given /^latitude (.*) and longitude (.*)$/ do |latitude, longitude|
    # regular expression to validate the latitude (-90 - 90)
    # ^(-?[1-8]?\d(?:\.\d{1,6})?|90(?:\.0{1-6})?)$
    
    # regular expression to validate the longitude (-180 - 180)
    # ^(-?(?:1[0-7]|[1-9])?\d(?:\.\d{1,6})?|180(?:\.0{1,6})?}$

    @location = latitude+','+longitude
end

Given /^radius (.*) meters$/ do |radius|
    @radius = radius
end

Given /^sensor (.*)$/ do |sensor|
    @sensor = sensor
end

Given /^keyword (.*)$/ do |keyword|
    @keyword = keyword
end

Given /^language (.*)$/ do |language|
    @language = language
end

Given /^minimum price \$(\d+) and maximum price \$(\d+)$/ do |minPrice, maxPrice|
    @minPrice = minPrice
    @maxPrice = maxPrice
end

Given /^name (.*)$/ do |name|
    @name = name
end

Given /^open now (.*)$/ do |openNow|
    @openNow = openNow
end

Given /^rank by (.*)$/ do |rankBy|
    @rankBy = rankBy
end

Given /^types (.*)$/ do |types|
    @types = types
end

Given /^page token (.*)$/ do |pageToken|
    @pageToken = pageToken
end

Given /^zagat selected (.*)$/ do |zagatSelected|
    @zagatSelected = zagatSelected
end

When /^I execute the search$/ do
    @nearbySearch.createRequest(
        @output,
        @location, 
        @radius,
        @sensor,
        @keyword,
        @language,
        @minPrice,
        @maxPrice,
        @name,
        @openNow,
        @rankBy,
        @types)
#        @pageToken,
#        @zagatSelected)
    @response = JSON.parse @nearbySearch.response
end

Then /^I will get back a json file containing (.*)$/ do |cnt|
    assert @response.key?('results')
end
