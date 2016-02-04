require 'bundler/setup'
Bundler.setup

require 'bodega-shopify'

RSpec.configure do |config|
  config.before do
    FileUtils.cd File.dirname(__FILE__)
  end

  config.after do
    %w(./_bodega.yml ./config.yml).each { |path| clean_file(path) }
  end
end

def clean_file path
  FileUtils.rm(path) if File.exists?(path)
end
