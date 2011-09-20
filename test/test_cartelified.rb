require 'helper'
require 'HTTParty'
require 'test/unit'
require 'cartelified'

class TestCartelified < Test::Unit::TestCase
  should "should be able to connect to big cartel" do
    asset_equal get('')
  end
    
end
