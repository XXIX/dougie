require 'yaml'

module Dougie
  class Configuration
    attr_accessor :shopify_config, :environment, :config

    def initialize params={}
      self.environment = (params[:environment] || DEFAULT_ENVIRONMENT).to_sym
      self.config = File.exists?(CONFIG_FILE) ? YAML.load(File.read(CONFIG_FILE)) || {} : {}
      self.shopify_config = File.exists?(SHOPIFY_CONFIG_FILE) ? YAML.load(File.read(SHOPIFY_CONFIG_FILE)) || {} : {}
      Dougie.logger.info "Configured #{environment} store #{store}"
      save_shopify_config
    end

    def config_file key
      config[key.to_s].to_s.chomp("/").reverse.chomp("/").reverse if config.has_key?(key.to_s)
    end

    def api_key
      config[environment][:api_key]
    end

    def password
      config[environment][:password]
    end

    def store
      config[environment][:store]
    end

    def ignore_files
      (shopify_config[:ignore_files] || []).compact.map { |r| Regexp.new(r) }
    end

    def last_sync_at
      config[environment][:last_sync_at] ||= Time.parse('2000-01-01 00:00:00')
    end

    def last_sync_at= last_sync_at
      config[environment][:last_sync_at] = last_sync_at
    end

    def save
      File.open(CONFIG_FILE, 'w') {|f| f.write config.to_yaml }
    end

    def save_shopify_config
      shopify_config[:api_key] = api_key
      shopify_config[:password] = password
      shopify_config[:store] = store
      File.open(SHOPIFY_CONFIG_FILE, 'w') {|f| f.write shopify_config.to_yaml }
    end
  end
end
