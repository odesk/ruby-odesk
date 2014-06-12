$:.unshift 'lib'
$LOAD_PATH << File.dirname(__FILE__)

require 'helper'
require 'odesk/api/routers/activities/user'
require 'test/unit'
require 'mocha/test_unit'

class ActivitiesUserTest < Test::Unit::TestCase
  include TestHelper
  
  def test_get_list
    api = Odesk::Api::Routers::Activities::User.new(get_client_mock)
    assert api.get_list('company', 'team', 'user')
  end
  
  def test_get_full_list
    api = Odesk::Api::Routers::Activities::User.new(get_client_mock)
    assert api.get_full_list('company', 'team', 'user')
  end
  
  def test_get_specific_list
    api = Odesk::Api::Routers::Activities::User.new(get_client_mock)
    assert api.get_specific_list('company', 'team', 'user', 'code')
  end
    
  def test_add_activity
    api = Odesk::Api::Routers::Activities::User.new(get_client_mock)
    assert api.add_activity('company', 'team', 'user', {})
  end
    
  def test_update_activities
    api = Odesk::Api::Routers::Activities::User.new(get_client_mock)
    assert api.update_activities('company', 'team', 'user', 'code', {})
  end
    
  def test_delete_activities
    api = Odesk::Api::Routers::Activities::User.new(get_client_mock)
    assert api.delete_activities('company', 'team', 'user', 'code')
  end
    
  def test_delete_all_activities
    api = Odesk::Api::Routers::Activities::User.new(get_client_mock)
    assert api.delete_all_activities('company', 'team', 'user')
  end
end