# frozen_string_literal: true

class UserMailer < Devise::Mailer
  helper :application
  include Devise::Controllers::UrlHelpers
  require 'rest-client'
  default template_path: 'users/mailer'

  def news_digest
  	dateDelta = (params[:everyDay]?86400:604800)
  	@u = User.where("feedback": params[:everyDay])
  	@n = News.where("date_create BETWEEN ? AND ?", Time.now.to_i-dateDelta, Time.now.to_i)
  	@u.each do |user|
		mail(to: user.email, subject: 'Новостной дайджест!')
	end
  end

end

