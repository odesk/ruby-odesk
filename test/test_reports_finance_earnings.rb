$:.unshift 'lib'
$LOAD_PATH << File.dirname(__FILE__)

require 'helper'
require 'odesk/api/routers/reports/finance/earnings'
require 'test/unit'
require 'mocha/test_unit'

class ReportsFinanceEarningsTest < Test::Unit::TestCase
  include TestHelper
  
  def test_get_by_freelancer
    api = Odesk::Api::Routers::Reports::Finance::Earnings.new(get_client_mock)
    assert api.get_by_freelancer('12', {})
  end
  
  def test_get_by_freelancers_team
    api = Odesk::Api::Routers::Reports::Finance::Earnings.new(get_client_mock)
    assert api.get_by_freelancers_team('12', {})
  end
  
  def test_get_by_freelancers_company
    api = Odesk::Api::Routers::Reports::Finance::Earnings.new(get_client_mock)
    assert api.get_by_freelancers_company('12', {})
  end
  
  def test_get_by_buyers_team
    api = Odesk::Api::Routers::Reports::Finance::Earnings.new(get_client_mock)
    assert api.get_by_buyers_team('12', {})
  end
  
  def test_get_by_buyers_company
    api = Odesk::Api::Routers::Reports::Finance::Earnings.new(get_client_mock)
    assert api.get_by_buyers_company('12', {})
  end
end