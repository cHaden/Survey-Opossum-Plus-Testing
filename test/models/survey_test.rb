require 'test_helper'

class SurveyTest < ActiveSupport::TestCase
  setup do
    # setup instance variables and such for subsequent tests in this file
    # around 37:00 in video
  end
  # test "the truth" do
  #   assert true
  # end


  #1. that your fixtures ran (this will require you to write at least one fixture).
  test "some surveys exist" do
    assert Survey.count > 0
  end

  test "like this one specifically" do
    assert_equal "It's Super Awesome", surveys(:survey_thing).description
  end

  #2. that an unsatisfied validation will prevent a record from saving.
  test "surveys gotta have titles" do
    nameless_survey = Survey.new(description: "What am I?", author_id: 1)
    refute nameless_survey.save
  end

  test "this one's okay though" do
    okay_survey = Survey.new(title: "That's MISTER Survey to you", description: "bore", author_id: 1)
    assert okay_survey.save
  end

  #3. that a successful save changes the number of records in the database.
  test "room for one more" do
    prior_count = Survey.count
    arbitrary_survey = Survey.new(title: "I am a survey that will never be taken", description: "mine is a futile existence")
    arbitrary_survey.save
    assert_equal Survey.count, prior_count + 1
  end


end
