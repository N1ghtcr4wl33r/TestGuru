module TestsHelper
  TEST_LEVELS = { 0=>:easy, 1=>:elementary, 2=>:basic, 3=>:normal, 4=>:hard, 5=>:harder }.freeze
  
  def test_level(test)
    TEST_LEVELS[test.level] || :hero
  end

end
