require 'spec_helper'

describe UsersController do
  let(:valid_attributes) { {name: "Stefan"} }
  let(:invalid_attributes) { {a: 2} }

  specify 'example path of creating' do
    check_index

    invalid_create
    user = valid_create
    expect(User.count).to eq(1)

    delete_user(user.id.to_s)
    expect(User.count).to be(0)
  end
end

def check_index
  get '/users'
  expect(response).to render_template('users/index')
end

def invalid_create
  post '/users', user: invalid_attributes
  expect(response).to render_template('users/new')
  user = assigns(:user)
  expect(response).to_not redirect_to(user)
end

def valid_create
  post '/users', user: valid_attributes
  user = assigns(:user)
  expect(response).to redirect_to(user)
  follow_redirect!
  expect(response).to render_template('users/show')
  user
end

def delete_user(id)
  delete '/users/' + id
  expect(response.status).to eq(302)
  follow_redirect!
  expect(response).to render_template('users/index')
end