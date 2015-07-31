# Samples from https://github.com/darkskyapp/forecast-ruby


# use gem
require 'forecast_io'

# set your personal API key to make HTTP request of developer.forecast.io site

ForecastIO.api_key = 'YOUR KEY HERE'

# populate forecast array with Los Angeles (Longitude, Lattitude)
# forecast = ForecastIO.forecast(37.8267, -122.423)

# populate forecast array with Pittsford (Longitude, Lattitude)
# forecast = ForecastIO.forecast(43.0897, -77.6114)

# print entire array
# puts forecast

# print only current temperature (F) out of array - think Hashie Mash
# print has no line feed - puts does

# print 'The temperature in LA is '
# puts forecast.currently.temperature

# now lets make 3 location placeholders

forecastpittsford = ForecastIO.forecast(43.0897, -77.6114)
forecastrochester = ForecastIO.forecast(43.1656, -77.5167)
forecastwebster = ForecastIO.forecast(43.21229, -77.42999)

# now lets print the temperature on our drive in

print 'The temperature in Pittsford is '
puts forecastpittsford.currently.temperature

print 'The temperature in Rochester is '
puts forecastrochester.currently.temperature

print 'The temperature in Webster is '
puts forecastwebster.currently.temperature
