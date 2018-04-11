class Asteroid
  attr_reader :name, :neo_reference_id,
  :is_potentially_hazardous_asteroid, :close_approach_data

  def initialize(attrs)
    require "pry"; binding.pry
    @date = attrs["date"]
    @name = attrs["name"]
    @neo_reference_id = attrs["neo_reference_id"]
    @is_potentially_hazardous_asteroid = attrs["is_potentially_hazardous_asteroid"]
    @close_approach_data = attrs["close_approach_data"]
  end

  # def get_name(attrs)
  #   attrs.map do |x|
  #     x["name"]
  #   end
  # end
end

#
# [{"links"=>
#   {"self"=>"https://api.nasa.gov/neo/rest/v1/neo/3017307?api_key=rzemllHsSyIA3cy6rsMRYd9gUaTGMIaMIySZ8LbJ"},
#   "neo_reference_id"=>"3017307",
#   "name"=>"(1999 AF4)", "nasa_jpl_url"=>"http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3017307",
#   "absolute_magnitude_h"=>18.5, "estimated_diameter"=>{"kilometers"=>
#     {"estimated_diameter_min"=>0.5303407233, "estimated_diameter_max"=>1.1858779086},
#     "meters"=>{"estimated_diameter_min"=>530.3407233187, "estimated_diameter_max"=>1185.8779085771},
#     "miles"=>{"estimated_diameter_min"=>0.3295383456, "estimated_diameter_max"=>0.7368701419}, "feet"=>
#     {"estimated_diameter_min"=>1739.963058693, "estimated_diameter_max"=>3890.675677576}},
#     "is_potentially_hazardous_asteroid"=>false, "close_approach_data"=>[{"close_approach_date"=>"2018-01-03",
#       "epoch_date_close_approach"=>1514966400000, "relative_velocity"=>
#       {"kilometers_per_second"=>"9.6628580052", "kilometers_per_hour"=>"34786.288818573",
#          "miles_per_hour"=>"21614.8470717406"}, "miss_distance"=>{"astronomical"=>"0.1139552821",
#            "lunar"=>"44.3286056519", "kilometers"=>"17047468", "miles"=>"10592805"}, "orbiting_body"=>"Earth"}]}
