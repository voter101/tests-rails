class WeirdEnterpriseStuff < ActiveRecord::Base
  validate :asap_is_only_priority

  private
  def asap_is_only_priority
    errors.add(:priority, "ASAP is the only way") unless priority == "ASAP"
  end
end
