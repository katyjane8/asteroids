class MostDangerousDayController < ApplicationController
  def index
    @sd = params["start_date"].to_date
    @start_date = @sd.strftime("%B %e, %Y")
    @ed = params["end_date"].to_date
    @end_date = @ed.strftime("%B %e, %Y")
  end
end
