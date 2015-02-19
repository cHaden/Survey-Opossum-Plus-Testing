require 'test_helper'

class AuthorsControllerTest < ActionController::TestCase

  #5. that a get request returns a success response (e.g. that a page loads successfully)
  test "authors get new correctly" do
    get :new
    assert_response :success
  end
end
