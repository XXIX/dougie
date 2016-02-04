require 'shopify_theme'
require 'shopify_theme/cli'

module BodegaShopify
  class Syncer
    attr_accessor :config

    def initialize params={}
      self.config = params[:config]
    end

    def cli
      @cli ||= ShopifyTheme::Cli.new
    end

    def files
      Dir["**/*"]
    end

    def modified_files
      files.select{ |file| !(config.ignore_files.any? { |ignore| file =~ /^#{ignore}/ } || File.directory?(file) || File.mtime(file).to_i < config.last_sync_at.to_time.to_i) }
    end

    def replace!
      cli.replace
      cli.upload 'config/settings_data.json'
    end

    def save_config
      config.last_sync_at = Time.now
      config.save
    end

    def sync!
      modified_files.each { |file| cli.upload file }
      save_config
    end

    def watch
      cli.watch
    end
  end
end
