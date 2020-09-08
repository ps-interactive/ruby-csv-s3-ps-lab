require "uri"
require "net/http"
require "json"
require "csv"

endpoint = ""

def read_from_api(endpoint)
  uri = URI(endpoint)

  # Add code here
  
end

def write_to_csv(file_name, data) 
  CSV.open(file_name, "wb") do |csv|
    # Add code here
  end  
end

winners = read_from_api(endpoint)
write_to_csv("winners.csv", winners)
