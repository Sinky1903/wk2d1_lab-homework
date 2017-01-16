require('minitest/autorun')
require('minitest/rg')

require_relative('../Student.rb')

class TestStudent < MiniTest::Test


  def setup
    @daniel = Student.new("Daniel", 1, "I can talk")
  end


  def test_student_get_name()
    assert_equal("Daniel", @daniel.name)
  end


  def test_student_get_cohort()
    assert_equal(1, @daniel.cohort)
  end


  def test_change_student_name()
    @daniel.name = ("Ryan")
    @daniel.cohort = 12
    assert_equal("Ryan", @daniel.name)
    assert_equal(12, @daniel.cohort)
    puts @daniel.name
    puts @daniel.cohort
  end


def test_make_student_talk()
  assert_equal("I can talk", @daniel.speech)
  puts @daniel.speech
end

end