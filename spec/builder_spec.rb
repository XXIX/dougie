require 'spec_helper'

describe BodegaShopify do
  let(:builder) { BodegaShopify::Builder.new }

  context 'with folder' do
    it 'sets up default files' do
      builder.setup 'spec/fixtures/new'
      expect(File.exists?('fixtures/new/_bodega.yml')).to eq true
      expect(File.exists?('fixtures/new/config.yml')).to eq true
    end

    after do
      %w(fixtures/new/_bodega.yml fixtures/new/config.yml).each { |path| clean_file(path) }
    end
  end
end
