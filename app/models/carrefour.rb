require 'uri'
require 'openssl'
require 'net/http'

url = URI("https://api.fr.carrefour.io/v1/openapi/items/REPLACE_GTIN")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_PEER

request = Net::HTTP::Get.new(url)
request["x-ibm-client-id"] = 'REPLACE_THIS_KEY'
request["x-ibm-client-secret"] = 'REPLACE_THIS_KEY'
request["accept"] = 'application/json'

response = http.request(request)
puts response.read_body
