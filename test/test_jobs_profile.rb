$:.unshift 'lib'
$LOAD_PATH << File.dirname(__FILE__)

require 'helper'
require 'odesk/api/routers/jobs/profile'
require 'test/unit'
require 'mocha/test_unit'

class JobsProfileTest < Test::Unit::TestCase
  include TestHelper
  
  def test_get_specific
    api = Odesk::Api::Routers::Jobs::Profile.new(get_client_mock)
    assert api.get_specific('~key')
  end
end