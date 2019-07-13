namespace :users do
  desc "create users using whenever gem"
  task create_user: :environment do 
	  	["users4", "users2", "users3"].each do |user_name|
	  		user = User.create!(name: user_name)
	    end
    end
end