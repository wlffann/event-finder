class Event 
  attr_reader :name, :date, :venue_name, :venue_url, :venue_address, :description

  def initialize(event_params)
    @name = event_params[:name]
    @date = event_params[:date]
    @venue_name = event_params[:venue_name]
    @venue_url = event_params[:venue_url]
    @venue_address = event_params[:venue_address]
    @description = shorten(event_params[:description])
  end

  def shorten(description)
    return nil if description.nil?
    if description.length >= 140
      description[1..140]
    else 
      description
    end
  end
end
