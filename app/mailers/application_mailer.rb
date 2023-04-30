# frozen_string_literal: true

# Mailings are set up here
class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'
end
