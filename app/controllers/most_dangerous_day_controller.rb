class MostDangerousDayController < ApplicationController
  def index
    @sd = params["start_date"].to_date
    @start_date = @sd.strftime("%B %e, %Y")
    @ed = params["end_date"].to_date
    @end_date = @ed.strftime("%B %e, %Y")

    response = Faraday.get("https://api.nasa.gov/neo/rest/v1/feed?start_date=2018-01-01&end_date=2018-01-07&api_key=rzemllHsSyIA3cy6rsMRYd9gUaTGMIaMIySZ8LbJ")
    raw_data = JSON.parse(response.body, symbolize_headers: true)
    @date = raw_data["near_earth_objects"].each do |result|
      result.each do |values|
        values.first
      end
    end
    @asteroids = @date.map do |result|
      result.map do |values|
        values.map do |x|
          Asteroid.new(x)
        end
      end
    end
  end
end
