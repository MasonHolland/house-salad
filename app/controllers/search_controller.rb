class SearchController < ApplicationController
  def index
    conn = Faraday.new(:url => 'https://projects.propublica.org/api-docs/congress-api/endpoints/#get-current-members-by-statedistrict')
    response = conn.get do |req|
      req.url '/search'
      req.headers['X-API-Key'] = 'ENV["Pro-Publica-Key"]'
    end
  end
end
