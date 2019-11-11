require 'rails_helper'

RSpec.describe UsersController do
	it "should get index page" do
		get :index
		expect(response).to render_template("index")
	end
end