require 'spec_helper'

describe UsersController do
  let(:valid_attributes) { {name: "Stefan"} }
  let(:invalid_attributes) { {a: 2} }
  context 'create action' do
    specify "successful" do
      expect {
        post :create, { user: valid_attributes }
      }.to change(User, :count).by(1)
    end

    specify "unsuccessful" do
      expect {
        post :create, { user: invalid_attributes }
      }.to_not change(User, :count)
    end
  end
end
