class SearchController < ApplicationController
  def index
    render locals: {
      search_results: HouseMemberSearch.new(params[:house])
    }
    require "pry"; binding.pry
  end
end
