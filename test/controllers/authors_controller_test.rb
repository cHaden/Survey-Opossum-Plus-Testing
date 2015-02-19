require 'test_helper'

class AuthorsControllerTest < ActionController::TestCase

  #5. that a get request returns a success response (e.g. that a page loads successfully)
  # see 1:30 in video
  #6. that the right number of a certain element exists on a page (perhaps test that the right number of questions show up when attempting to take a survey)
  test "authors get new correctly" do
    get :new
    assert_response :success
    assert_select("div.button", 1)

  end


end
