require "rails_helper"


RSpec.describe "App", :type => :request do

  it "create news not auth user redirected" do
  	get new_news_path
    expect(response).to have_http_status(302)
  end
  
end