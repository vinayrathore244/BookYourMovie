Rails.configuration.stripe = {
  :publishable_key => 'pk_test_51IcYWfSIfGWoc1nGRbJYoZXBPyoEF6qyKZbCgbfWfd1rmEhR5u5k5FMQlC4k6JiGwXZhf0ag0rXfuJXNk8RFXpgY008jIehu8v',
  :secret_key      => 'sk_test_51IcYWfSIfGWoc1nG9tX57BvpEI3GyQyU44HO1dtnDVAwH3wnQCfObGfxgICq2t34ydkZhvLOP6bArQm0kBzWi5G0009vODTURR'
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]