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
  return {
    panninis: ["BBQ Chicken & Sweetcorn", "Chicken & Bacon", "Chicken Tikka", "Tuna Mayonnaise", "Cheese & Onion", "Chees & Bacon", "Cheese & Tomato", "Mozzarella & Red Pesto"],
    jacket_potatoes: ["Beans", "Cheese", "Coleslaw", "Plain/Butter", "Chicken Curry", "Chilli"],
    other_delights: ["Bacon Roll", "Beans on Toast", "Toasted Tea Cake", "Toast", "Victoria Sponge"]
    }.to_json
end

get "/drinks_menu.json" do
  content_type :json
  return {
    hot_drinks: ["Americano", "Cappucino", "Latte", "Espresso", "Mocha", "Hot Chocolate", "Tea's"],
    cold_drinks: ["Cans", "Children's Drinks"]
    }.to_json
end
