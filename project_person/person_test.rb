require 'minitest/autorun'

class TestPerson < MiniTest::Unit::TestCase
    
  def test_full_name
    first_name = 'John'
    last_name = 'Snow'
    full_name = first_name + last_name
    assert_equal('John Snow', full_name)
  end
  
end
