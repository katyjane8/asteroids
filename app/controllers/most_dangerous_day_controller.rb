class MostDangerousDayController < ApplicationController
  def index
    @sd = params["start_date"].to_date
    @start_date = @sd.strftime("%B %e, %Y")
    @ed = params["end_date"].to_date
    @end_date = @ed.strftime("%B %e, %Y")

    response = Faraday.get("https://api.nasa.gov/neo/rest/v1/feed?start_date=2018-01-01&end_date=2018-01-07&api_key=rzemllHsSyIA3cy6rsMRYd9gUaTGMIaMIySZ8LbJ")
    raw_data = JSON.parse(response.body)
    asties = raw_data["near_earth_objects"].map do |dates, values|
      @asteroids = values.map do |value|
        value.select{["is_potentially_hazardous_asteroid"] == true}
      end
    end
  end
end
