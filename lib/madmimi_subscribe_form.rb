require 'application_helper'
require 'madmimi'

module MadmimiSubscribeForm
  class Engine < Rails::Engine
    if Rails.env != "production"
      initializer "static assets" do |app|
        app.middleware.use ::ActionDispatch::Static, "#{root}/public"
      end
    end
  end

  # Config block (to use with initializers)
  def self.config(&block)
    @@config ||= MadmimiSubscribeForm::Engine::Configuration.new

    yield @@config if block

    return @@config
  end

end