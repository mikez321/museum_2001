require './lib/exhibit'
require './lib/patron'
require 'minitest/autorun'
require 'minitest/pride'

class PatronTest < Minitest::Test

  def setup
    @patron_1 = Patron.new("Bob", 20)
  end

  def test_it_exists
    assert_instance_of Patron, @patron_1
  end
end
