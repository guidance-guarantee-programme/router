require 'bundler/setup'
require 'lotus-router'

router = Lotus::Router.new do
  redirect '/register', to: 'https://www.pensionwise.gov.uk/appointments'
  redirect '/', to: 'https://www.pensionwise.gov.uk'
end

run router
