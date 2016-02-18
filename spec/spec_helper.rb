require 'bundler/setup'
Bundler.setup

require 'dougie'

RSpec.configure do |config|
  config.before do
    FileUtils.cd File.dirname(__FILE__)
  end

  config.after do
    %w(./_stores.yml ./config.yml).each { |path| clean_file(path) }
  end
end

def clean_file path
  FileUtils.rm(path) if File.exists?(path)
end
