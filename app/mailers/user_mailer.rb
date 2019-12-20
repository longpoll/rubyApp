# frozen_string_literal: true

class UserMailer < Devise::Mailer
  helper :application
  include Devise::Controllers::UrlHelpers
  require 'rest-client'
  default template_path: 'users/mailer'

  def send_simple_message
	
  end

end

