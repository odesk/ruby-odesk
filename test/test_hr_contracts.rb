$:.unshift 'lib'
$LOAD_PATH << File.dirname(__FILE__)

require 'helper'
require 'odesk/api/routers/hr/contracts'
require 'test/unit'
require 'mocha/test_unit'

class HrContractsTest < Test::Unit::TestCase
  include TestHelper
  
  def test_end_contract
    api = Odesk::Api::Routers::Hr::Contracts.new(get_client_mock)
    assert api.end_contract('12', {})
  end
end