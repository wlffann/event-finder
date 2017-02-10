class ResultsPresenter
  attr_reader :events
  
  def initialize(raw_events)
    @events = raw_events.map do |event|
      Event.new({:name => event['title'],
                 :date => event['start_time'],
                 :description => event['description'],
                 :venue_name => event['venue_name'],
                 :venue_url => event['venue_url'],
                 :venue_address => event['venue_address']})
    end
  end

end
