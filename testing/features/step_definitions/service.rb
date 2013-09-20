require_relative 'api/service'

Given /^I have what I need$/ do
  steps %{
    When I have a NearbySearch object
    When I have location coordinates
    When I have a radius
  }
end

When /^I have a NearbySearch object$/ do
  @nearbySearch = NearbySearch.new
end

When /^I have location coordinates$/ do
  @loc_coord = '40.274722,-111.727778'
end

When /^I have a radius$/ do
  @radius = '500'
end

When /^I do a search$/ do
  @nearbySearch.createRequest(@loc_coord, @radius)
end

Then /^I will have a json file for my perusal$/ do
  @response
end
