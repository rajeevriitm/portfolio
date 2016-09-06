desc "Pings PING_URL to keep a dyno alive"
task :dyno_ping do
  require "net/http"
  PING_URL = ["http://secure-gorge-6009.herokuapp.com/","http://quickthoughts.herokuapp.com/","https://settleitnow.herokuapp.com/","http://rajeevr.herokuapp.com"]
  PING_URL.each do |url|
    uri = URI(url)
    resp=Net::HTTP.get_response(uri)
    puts resp
  end
end