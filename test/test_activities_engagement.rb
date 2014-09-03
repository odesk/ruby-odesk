$:.unshift 'lib'
$LOAD_PATH << File.dirname(__FILE__)

require 'helper'
require 'odesk/api/routers/activities/engagement'
require 'test/unit'
require 'mocha/test_unit'

class ActivitiesEngagementTest < Test::Unit::TestCase
  include TestHelper
  
  def test_get_specific
    api = Odesk::Api::Routers::Activities::Engagement.new(get_client_mock)
    assert api.get_specific('1234')
  end
  
  def test_assign
    api = Odesk::Api::Routers::Activities::Engagement.new(get_client_mock)
    assert api.assign('company', 'team', '1234', {})
  end
end
