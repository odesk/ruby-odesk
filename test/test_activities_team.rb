$:.unshift 'lib'
$LOAD_PATH << File.dirname(__FILE__)

require 'helper'
require 'odesk/api/routers/activities/team'
require 'test/unit'
require 'mocha/test_unit'

class ActivitiesTeamTest < Test::Unit::TestCase
  include TestHelper
  
  def test_get_list
    api = Odesk::Api::Routers::Activities::Team.new(get_client_mock)
    assert api.get_list('company', 'team')
  end
  
  def test_get_full_list
    api = Odesk::Api::Routers::Activities::Team.new(get_client_mock)
    assert api.get_full_list('company', 'team')
  end
  
  def test_get_specific_list
    api = Odesk::Api::Routers::Activities::Team.new(get_client_mock)
    assert api.get_specific_list('company', 'team', 'code')
  end
    
  def test_add_activity
    api = Odesk::Api::Routers::Activities::Team.new(get_client_mock)
    assert api.add_activity('company', 'team', {})
  end
    
  def test_update_activities
    api = Odesk::Api::Routers::Activities::Team.new(get_client_mock)
    assert api.update_activities('company', 'team', 'code', {})
  end
    
  def test_archive_activities
    api = Odesk::Api::Routers::Activities::Team.new(get_client_mock)
    assert api.archive_activities('company', 'team', 'code')
  end
    
  def test_unarchive_activities
    api = Odesk::Api::Routers::Activities::Team.new(get_client_mock)
    assert api.unarchive_activities('company', 'team', 'code')
  end
    
  def test_delete_activities
    api = Odesk::Api::Routers::Activities::Team.new(get_client_mock)
    assert api.delete_activities('company', 'team', 'code')
  end
    
  def test_delete_all_activities
    api = Odesk::Api::Routers::Activities::Team.new(get_client_mock)
    assert api.delete_all_activities('company', 'team')
  end
end
