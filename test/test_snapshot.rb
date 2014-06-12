$:.unshift 'lib'
$LOAD_PATH << File.dirname(__FILE__)

require 'helper'
require 'odesk/api/routers/snapshot'
require 'test/unit'
require 'mocha/test_unit'

class SnapshotTest < Test::Unit::TestCase
  include TestHelper
  
  def test_get
    api = Odesk::Api::Routers::Snapshot.new(get_client_mock)
    assert api.get('company', 'username', '20140101')
  end
  
  def test_update
    api = Odesk::Api::Routers::Snapshot.new(get_client_mock)
    assert api.update('company', 'username', '20140101', {})
  end
    
  def test_delete
    api = Odesk::Api::Routers::Snapshot.new(get_client_mock)
    assert api.delete('company', 'username', '20140101')
  end
end