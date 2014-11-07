ActionMailer::Base.smtp_settings = {
  :address        => 'smtp.gmail.com',
  :port           => '587',
  :authentication => :plain,
  :user_name      => 'shrikant.khandare@tudip.com',
  :password       => 'khandare41',
  :domain         => 'tudip.com',
  :enable_starttls_auto => true
}

ActionMailer::Base.delivery_method = :smtp