require 'rest-client'
require 'json'

class NearbySearch
    @@url = 'https://maps.googleapis.com/maps/api/place/nearbysearch/'
    @@key = 'AIzaSyA643Eds2GoEsMzdM8P2oydD3Bq10O9Bxk'

    attr_accessor :response
    attr_accessor :responseCode

    def createRequest(
        output='json',
        location='40.274722,-111.727778',
        radius=500,
        sensor='false',
        keyword,
        language,
        minPrice,
        maxPrice,
        name,
        openNow,
        rankBy,
        types)
        # pageToken
        # zagatSelected

        @url = @@url + output

        postData = {
            :params => {
                :key => @@key,
                :location       =>  location,
                :radius         =>  radius,
                :sensor         =>  sensor,
                :keyword        =>  keyword,
                :language       =>  language,
                :minPrice       =>  minPrice,
                :maxPrice       =>  maxPrice,
                :name           =>  name,
                :openNow        =>  openNow,
                :rankBy         =>  rankBy,
                :types          =>  types
                # :pageToken      =>  pageToken,
                # :zagatSelected  =>  zagatSelected

            }
        }
    
        postRequest(@url, postData)
    end

    def postRequest(url, postData)
        begin
            
            @response = RestClient.get(url, postData)
        
            @responseCode = @response.code

        rescue => e
            
            @responseCode = e.response.code
 
        end
    end

    end
