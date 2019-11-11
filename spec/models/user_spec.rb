require 'rails_helper'

RSpec.describe User , :type => :model do

	#@user = User.new(username: "Kinjal", email: "email@email.com", password: "password")
	
	it {is_expected.to validate_presence_of(:username) }
	it {is_expected.to validate_presence_of(:email) }
	it {is_expected.to validate_presence_of(:password) }
	it {is_expected.to validate_uniqueness_of(:email) }
end