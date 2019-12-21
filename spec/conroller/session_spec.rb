require "rails_helper"


RSpec.describe Users::SessionsController, :type => :controller do

  let(:params) { { email: 'test@example.com', password: 'password', password_confirmation: 'password', isAdmin: true } }

  it "Create new user" do
    @user = User.new(params)
    @user.save
    session = sign_in @user
    @userId = session[0][0]
    #ap User.all
  end 

  it "Create new news" do
    @news = News.new(title: 'Example news title', content: 'Example news content', user_id: @userId, editCount: 0)
    @news.save
    #ap News.all
  end
end