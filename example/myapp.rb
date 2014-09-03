#!/usr/bin/ruby

$:.unshift '../lib'

$LOAD_PATH << File.dirname(__FILE__)

require 'odesk/api'
require 'odesk/api/routers/auth'
require 'odesk/api/routers/mc'
require 'odesk/api/routers/reports/time'
require 'odesk/api/routers/freelancers/search'
#require 'pry'

# initiate config
config = Odesk::Api::Config.new({
  'consumer_key'    => 'xxxxxxxx',
  'consumer_secret' => 'xxxxxxxx',
  'access_token'    => 'xxxxxxxx',# assign if known
  'access_secret'   => 'xxxxxxxx',# assign if known
  #'debug'           => false
})

# setup client
client = Odesk::Api::Client.new(config)

# run authorization in case we haven't done it yet
# and do not have an access token-secret pair
if !config.access_token and !config.access_secret
  authz_url = client.get_authorization_url

  puts "Visit the authorization url and provide oauth_verifier for further authorization"
  puts authz_url
  verifier = gets.strip
  @token = client.get_access_token(verifier)
  # store access token data in safe place!
end

# get my auth data
auth = Odesk::Api::Routers::Auth.new(client)
info = auth.get_user_info

# work with mc
mc = Odesk::Api::Routers::Mc.new(client)
mc_response = mc.get_trays
 
# mark the thread
#response = mc.mark_thread 'username', '88888', {'read' => 'false'}

report = Odesk::Api::Routers::Reports::Time.new(client)
report_response = report.get_by_freelancer_limited('mnovozhilov', {'tqx' => 'out:json', 'tq' => "select task where worked_on >= '2014-06-01' AND worked_on <= '2014-06-03' order by worked_on"})

p info['info']['portrait_32_img'], mc_response['trays'], report_response

params = {'q' => 'python'}
freelancers = Odesk::Api::Routers::Freelancers::Search.new(client)
p freelancers.find(params)

# Start REPL session
#binding.pry
