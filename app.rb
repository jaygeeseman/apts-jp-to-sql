require 'sequel'
require 'json'
require 'net/http'
require 'uri'
require 'bigdecimal'

api_base_url = "https://apts.jp/api/properties.json"
api_search_params = {
    "bedroom_range[min]" => 0,
    "bedroom_range[max]" => 2,
    "rent_range[max]" => 220000,
    "rent_range[min]" => 0,
    "size_min" => 35
}
API_SEARCH_URL = api_base_url + '?' + URI.encode_www_form(api_search_params)

DB = Sequel.connect('sqlite://apartments.db')
