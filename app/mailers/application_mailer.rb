class ApplicationMailer < ActionMailer::Base
  default from: 'microposts@gmail.com'
  layout 'mailer'
end
