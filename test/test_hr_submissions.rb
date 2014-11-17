$:.unshift 'lib'
$LOAD_PATH << File.dirname(__FILE__)

require 'helper'
require 'odesk/api/routers/hr/submissions'
require 'test/unit'
require 'mocha/test_unit'

class HrSubmissionsTest < Test::Unit::TestCase
  include TestHelper
  
  def test_request_approval
    api = Odesk::Api::Routers::Hr::Submissions.new(get_client_mock)
    assert api.request_approval({})
  end
  
  def test_approve
    api = Odesk::Api::Routers::Hr::Submissions.new(get_client_mock)
    assert api.approve('1234', {})
  end
  
  def test_reject
    api = Odesk::Api::Routers::Hr::Submissions.new(get_client_mock)
    assert api.reject('1234', {})
  end
end
