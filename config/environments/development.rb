Finks::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb

  # Amazon s3
  Refinery.s3_backend = true
  ENV['S3_KEY']='AKIAIOL3STOCQEONPM6A'
  ENV['S3_SECRET']='GMCi6fBe5ABiqWjmk3A2e0H8S6BQHfP/HsyoSqvU'
  ENV['S3_BUCKET']='finks_production'
  
  # In the development environment your application's code is reloaded on
  # every request.  This slows down response time but is perfect for development
  # since you don't have to restart the webserver when you make code changes.
  config.cache_classes = false

  # Log error messages when you accidentally call methods on nil.
  config.whiny_nils = true

  # Show full error reports and disable caching
  config.consider_all_requests_local       = true
  config.action_view.debug_rjs             = true
  config.action_controller.perform_caching = false

  # Don't care if the mailer can't send
  config.action_mailer.raise_delivery_errors = false

  # Print deprecation notices to the Rails logger
  config.active_support.deprecation = :log

  # Only use best-standards-support built into browsers
  config.action_dispatch.best_standards_support = :builtin
end

Refinery.rescue_not_found = false