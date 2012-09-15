require 'test_helper'

class InterviewTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Interview.new.valid?
  end
end
