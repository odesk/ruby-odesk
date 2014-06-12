$:.unshift 'lib'
$LOAD_PATH << File.dirname(__FILE__)

require 'helper'
require 'odesk/api/logger'
require 'odesk/api/config'
require 'odesk/api/client'
require 'test/unit'
require 'mocha/test_unit'

class ConfigTest < Test::Unit::TestCase
  include TestHelper
  
  def test_config_initialization
    config = Odesk::Api::Config.new({
      'consumer_key'    => 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx',
      'consumer_secret' => 'xxxxxxxxxxxxxxxx',
      'access_token'    => 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx',
      'access_secret'   => 'xxxxxxxxxxxxxxxx',
      'debug'           => false
    })
    
    client = Odesk::Api::Client.new(config)
    client.epoint = 'gds'

    assert_equal 'https://www.odesk.com/services/api/auth',client.url_auth
    assert_equal 'https://www.odesk.com/api/auth/v1/oauth/token/request.json',client.url_rtoken
    assert_equal 'https://www.odesk.com/api/auth/v1/oauth/token/access.json',client.url_atoken
    assert_equal 'gds',client.epoint 
  end
  
  def test_get
    assert get_client_mock.get('/some/api/url')
  end
  
  def test_post
    assert get_client_mock.post('/some/api/url', {})
  end
  
  def test_put
    assert get_client_mock.put('/some/api/url', {})
  end
  
  def test_delete
    assert get_client_mock.delete('/some/api/url', {})
  end
end