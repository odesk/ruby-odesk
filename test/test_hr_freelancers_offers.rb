$:.unshift 'lib'
$LOAD_PATH << File.dirname(__FILE__)

require 'helper'
require 'odesk/api/routers/hr/freelancers/offers'
require 'test/unit'
require 'mocha/test_unit'

class HrFreelancersOffersTest < Test::Unit::TestCase
  include TestHelper
  
  def test_get_list
    api = Odesk::Api::Routers::Hr::Freelancers::Offers.new(get_client_mock)
    assert api.get_list({})
  end
  
  def test_get_specific
    api = Odesk::Api::Routers::Hr::Freelancers::Offers.new(get_client_mock)
    assert api.get_specific('12')
  end
  
  def test_actions
    api = Odesk::Api::Routers::Hr::Freelancers::Offers.new(get_client_mock)
    assert api.actions('12', {})
  end
end
