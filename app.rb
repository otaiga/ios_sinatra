require 'rubygems'
require 'sinatra'
require 'json'

# Simple app to demonstrate api.

get "/openning_times.json" do
  content_type :json
  return {monday_to_friday: "08:30 - 16:30", saturday: "10:00 - 14:00", sunday: "closed"}.to_json
end

get "/food_menu.json" do
  content_type :json
  return {panninis: ["chicken", "tuna", "cheese"], jacket_pots: ["beans", "cheese"]}.to_json
end

get "/drinks_menu.json" do
  content_type :json
  return {hot_drinks: ["Latte", "Mocha", "Tea's"], cold_drinks: ["Cans", "Children's drinks"]}.to_json
end
