require 'test_helper'

class WeirdEnterpriseStuffTest < ActiveSupport::TestCase
  test "Priority field validation" do
    priority_validation_with_bad_data
    priority_validation_with_good_data
  end

  private
  def priority_validation_with_bad_data
    exception = assert_raise ActiveRecord::RecordInvalid do
      WeirdEnterpriseStuff.create!
    end
    assert_equal exception.message, "Validation failed: Priority ASAP is the only way"
  end

  def priority_validation_with_good_data
    assert_nothing_raised do
      WeirdEnterpriseStuff.create(priority: "ASAP")
    end
  end
end
