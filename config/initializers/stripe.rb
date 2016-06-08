Rails.configuration.stripe = {
  :publishable_key => ENV['STRIPE_PUBLISHABLE_KEY'],
  :secret_key      => ENV['STRIPE_SECRET_KEY']
}
# these keys should be coded in the gitignored file of application.yml
Stripe.api_key = Rails.configuration.stripe[:secret_key]