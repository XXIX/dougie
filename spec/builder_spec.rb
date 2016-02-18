require 'spec_helper'

describe Dougie do
  let(:builder) { Dougie::Builder.new }

  context 'with folder' do
    it 'sets up default files' do
      builder.setup 'spec/fixtures/new'
      expect(File.exists?('fixtures/new/_stores.yml')).to eq true
      expect(File.exists?('fixtures/new/config.yml')).to eq true
    end

    after do
      %w(fixtures/new/_stores.yml fixtures/new/config.yml).each { |path| clean_file(path) }
    end
  end
end
