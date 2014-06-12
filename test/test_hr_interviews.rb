$:.unshift 'lib'
$LOAD_PATH << File.dirname(__FILE__)

require 'helper'
require 'odesk/api/routers/hr/interviews'
require 'test/unit'
require 'mocha/test_unit'

class HrInterviewsTest < Test::Unit::TestCase
  include TestHelper
  
  def test_invite
    api = Odesk::Api::Routers::Hr::Interviews.new(get_client_mock)
    assert api.invite('key', {})
  end
end