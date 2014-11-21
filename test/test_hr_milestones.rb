$:.unshift 'lib'
$LOAD_PATH << File.dirname(__FILE__)

require 'helper'
require 'odesk/api/routers/hr/milestones'
require 'test/unit'
require 'mocha/test_unit'

class HrMilestonesTest < Test::Unit::TestCase
  include TestHelper
  
  def test_get_active_milestone
    api = Odesk::Api::Routers::Hr::Milestones.new(get_client_mock)
    assert api.get_active_milestone('1234')
  end
  
  def test_get_submissions
    api = Odesk::Api::Routers::Hr::Milestones.new(get_client_mock)
    assert api.get_submissions('1234')
  end
  
  def test_create
    api = Odesk::Api::Routers::Hr::Milestones.new(get_client_mock)
    assert api.create({})
  end
  
  def test_edit
    api = Odesk::Api::Routers::Hr::Milestones.new(get_client_mock)
    assert api.edit('1234', {})
  end
  
  def test_activate
    api = Odesk::Api::Routers::Hr::Milestones.new(get_client_mock)
    assert api.activate('1234', {})
  end
  
  def test_approve
    api = Odesk::Api::Routers::Hr::Milestones.new(get_client_mock)
    assert api.approve('1234', {})
  end
  
  def test_delete
    api = Odesk::Api::Routers::Hr::Milestones.new(get_client_mock)
    assert api.delete('1234')
  end
end
