class SearchController < ApplicationController

  def index
    response = EventfulService.search_by_zipcode(params[:q])
    @results = ResultsPresenter.new(response['events']['event'])
  end

end
