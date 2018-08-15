require 'minitest/autorun'

class NumberTest < Minitest::Test
  def setup
    @fb = Number.new
  end

  def test_absence_of_divisibility
    @fb.input = '4'
    final = @fb.output
    assert final.is_a?(Integer) && final == 4
  end

  def test_divisibility_three
    @fb.input = '3'
    final = @fb.output
    assert final.is_a?(String) && final == 'flint',
           "Numbers divisible by 3 should return 'flint'"
  end

  def test_divisibility_five
    @fb.input = '5'
    final = @fb.output
    assert final.is_a?(String) && final == 'buzz',
           "Numbers divisible by 3 should return 'buzz'"
  end

  def test_divisibility_fifteen
    @fb.input = '15'
    final = @fb.output
    assert final.is_a?(String) && final == 'flintbuzz',
           "Numbers divisible by 3 should return 'flintbuzz'"
  end
end
