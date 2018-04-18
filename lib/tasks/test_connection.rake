require 'net/https'
require 'net/http'
require 'open-uri'
require 'openssl'
namespace :spree_p24 do
  desc "Test if the connection with Przelewy24 is correct"
  task :test_connection => :environment do
    url = URI.parse(SpreeP24.test_connection_url)
    req = Net::HTTP::Post.new(url.path,{"User-Agent" => "Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.2.10) Gecko/20100915 Ubuntu/10.04 (lucid) Firefox/3.6.10"})
    req.form_data = SpreeP24.test_connection_params
    con = Net::HTTP.new(url.host, 443)
    con.use_ssl = true
    con.verify_mode = OpenSSL::SSL::VERIFY_NONE
    response = con.start {|http| http.request(req)}
    puts SpreeP24.parse_response response.body
  end

end
