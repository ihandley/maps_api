require 'rest-client'
require 'json'

class NearbySearch
  @@url = 'https://maps.googleapis.com/maps/api/place/nearbysearch'
  @@key = 'AIzaSyA643Eds2GoEsMzdM8P2oydD3Bq10O9Bxk'

  def createRequest(location, radius, output='json', sensor='false')
    url = @@url + output

    postData = {
      :location => location,
      :radius => radius,
      :sensor => sensor
    }
    postRequest(url, postData)
  end

  def postRequest(url, postData)
    begin
      @response = RestClient.post(
        url,
        postData.to_json
      )  

      @responseCode = @responseCode
    rescue => e
      @responseCode = e.response.code
    end
  end

end
