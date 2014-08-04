$:.unshift 'lib'
$LOAD_PATH << File.dirname(__FILE__)

require 'helper'
require 'odesk/api/routers/hr/clients/offers'
require 'test/unit'
require 'mocha/test_unit'

class HrClientsOffersTest < Test::Unit::TestCase
  include TestHelper
  
  def test_get_list
    api = Odesk::Api::Routers::Hr::Clients::Offers.new(get_client_mock)
    assert api.get_list({})
  end
  
  def test_get_specific
    api = Odesk::Api::Routers::Hr::Clients::Offers.new(get_client_mock)
    assert api.get_specific('12', {})
  end
  
  def test_make_offer
    api = Odesk::Api::Routers::Hr::Clients::Offers.new(get_client_mock)
    assert api.make_offer({})
  end
end
