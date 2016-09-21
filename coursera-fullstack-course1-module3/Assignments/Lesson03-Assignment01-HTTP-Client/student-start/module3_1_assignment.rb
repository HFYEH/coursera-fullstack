require 'httparty'
# gmail 010407
# a218dcdde4ac0e9b80ee585cca2707a1

class Recipe
  include HTTParty
  base_uri 'http://food2fork.com/api'
  default_params key: ENV["FOOD2FORK_KEY"]
  format :json

  def self.for keyword
    get("/search", query: {q: keyword})["recipes"]
  end

end
