namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    make_users
 
  end
end

def make_users
  admin = User.create!(name:     "Josh Baxter",
                       email:    "joshbaxter13@googlemail.com",
                       password: "josh1588",
                       password_confirmation: "josh1588")
  admin.toggle!(:admin)
 
  end


