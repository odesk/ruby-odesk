$:.unshift 'lib'

require 'odesk/api/logger'
require 'test/unit'
require 'mocha/test_unit'

class LoggerTest < Test::Unit::TestCase
  def test_i
    $DEBUG = true
    @log = Odesk::Api::Logger.new
    @log.expects(:puts).with("> bar")
    @log.i "bar"
    $DEBUG = false
  end
end