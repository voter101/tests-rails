require 'spec_helper'

describe User do
  context 'validations' do
    it 'should validate presence of name' do
      expect{ User.create! }.to raise_error(ActiveRecord::RecordInvalid, "Validation failed: Name can't be blank")
    end
  end
end
