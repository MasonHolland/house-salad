class SearchController < ApplicationController
  def index
    conn = Faraday.new(:url => 'https://projects.propublica.org/api-docs/congress-api/endpoints/#get-current-members-by-statedistrict')
    response = conn.get do |req|
      req.url '/search'
      req.headers['API-Key'] = ''
  end
end
