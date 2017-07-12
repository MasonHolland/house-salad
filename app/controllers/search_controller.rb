class SearchController < ApplicationController
  def index
    key = {"X-API-Key" => ENV["Pro-Publica-Key"]}
    conn = Faraday.new(:url => "https://api.propublica.org/congress/v1/members/house/#{params[:state]}/current.json")
    conn.headers = conn.headers.merge(key)
    response = conn.get '/search'
  end
end
