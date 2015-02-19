require 'test_helper'

class AuthorTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  #4. that one of the six SQL/AREL methods we created on a model last night runs properly.
  test "SQL what are you do?" do
    assert_equal Author.email_shakespeare.length, 1
  end

end
