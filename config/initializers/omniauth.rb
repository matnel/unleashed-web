Rails.application.config.middleware.use OmniAuth::Builder do
  ## provider :facebook, ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET']
  provider :facebook, '655695551209844', '6a3c1c8e8f6235503357900816f45f03'
end
