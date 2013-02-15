require File.expand_path('../boot', __FILE__)

# Pick the frameworks you want:
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "active_resource/railtie"
require "sprockets/railtie"
# require "rails/test_unit/railtie"

if defined?(Bundler)
  Bundler.require(*Rails.groups(:assets => %w(development test)))
end

module Marketem
  class Application < Rails::Application
    config.active_record.whitelist_attributes = true
    config.active_support.escape_html_entities_in_json = true
    config.assets.enabled = true
    config.assets.version = '1.0'
    config.autoload_paths += %W(#{Rails.root}/lib)
    config.encoding = "utf-8"
    config.filter_parameters += [:password]
  end
end
