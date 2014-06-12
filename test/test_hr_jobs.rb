$:.unshift 'lib'
$LOAD_PATH << File.dirname(__FILE__)

require 'helper'
require 'odesk/api/routers/hr/jobs'
require 'test/unit'
require 'mocha/test_unit'

class HrJobsTest < Test::Unit::TestCase
  include TestHelper
  
  def test_list
    api = Odesk::Api::Routers::Hr::Jobs.new(get_client_mock)
    assert api.get_list({})
  end
  
  def test_
    api = Odesk::Api::Routers::Hr::Jobs.new(get_client_mock)
    assert api.get_specific('key')
  end
  
  def test_post_job
    api = Odesk::Api::Routers::Hr::Jobs.new(get_client_mock)
    assert api.post_job({})
  end
  
  def test_edit_job
    api = Odesk::Api::Routers::Hr::Jobs.new(get_client_mock)
    assert api.edit_job('key', {})
  end
  
  def test_delete_job
    api = Odesk::Api::Routers::Hr::Jobs.new(get_client_mock)
    assert api.delete_job('key', {})
  end
end