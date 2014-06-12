$:.unshift 'lib'
$LOAD_PATH << File.dirname(__FILE__)

require 'helper'
require 'odesk/api/routers/organization/companies'
require 'test/unit'
require 'mocha/test_unit'

class OrganizationCompaniesTest < Test::Unit::TestCase
  include TestHelper
  
  def test_get_list
    api = Odesk::Api::Routers::Organization::Companies.new(get_client_mock)
    assert api.get_list
  end
  
  def test_get_specific
    api = Odesk::Api::Routers::Organization::Companies.new(get_client_mock)
    assert api.get_specific('12')
  end
  
  def test_get_teams
    api = Odesk::Api::Routers::Organization::Companies.new(get_client_mock)
    assert api.get_teams('12')
  end
  
  def test_get_users
    api = Odesk::Api::Routers::Organization::Companies.new(get_client_mock)
    assert api.get_users('12')
  end
end