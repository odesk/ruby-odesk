$:.unshift 'lib'
$LOAD_PATH << File.dirname(__FILE__)

require 'helper'
require 'odesk/api/routers/reports/time'
require 'test/unit'
require 'mocha/test_unit'

class ReportsTimeTest < Test::Unit::TestCase
  include TestHelper
  
  def test_get_by_team_full
    api = Odesk::Api::Routers::Reports::Time.new(get_client_mock)
    assert api.get_by_team_full('company', 'team', {})
  end
  
  def test_get_by_team_limited
    api = Odesk::Api::Routers::Reports::Time.new(get_client_mock)
    assert api.get_by_team_limited('company', 'team', {})
  end
  
  def test_get_by_agency
    api = Odesk::Api::Routers::Reports::Time.new(get_client_mock)
    assert api.get_by_agency('company', 'agency', {})
  end
  
  def test_get_by_company
    api = Odesk::Api::Routers::Reports::Time.new(get_client_mock)
    assert api.get_by_company('company', {})
  end
  
  def test_get_by_freelancer_limited
    api = Odesk::Api::Routers::Reports::Time.new(get_client_mock)
    assert api.get_by_freelancer_limited('freelancer_id', {})
  end
  
  def test_get_by_freelancer_full
    api = Odesk::Api::Routers::Reports::Time.new(get_client_mock)
    assert api.get_by_freelancer_full('freelancer_id', {})
  end
end