require 'spec_helper'

describe Dougie do
  let(:configuration) { Dougie::Configuration.new }

  context 'with config file' do
    before do
      FileUtils.cp('fixtures/_stores.yml', './')
    end

    it 'defaults to development environment' do
      expect(configuration.environment).to eq :development
    end

    it 'loads development api key' do
      expect(configuration.api_key).to eq 'dev-api-key'
    end

    it 'loads development password' do
      expect(configuration.password).to eq 'dev-password'
    end

    it 'loads development store' do
      expect(configuration.store).to eq 'dev-store'
    end

    context 'with shopify config file' do
      before do
        FileUtils.cp('fixtures/config.yml', './')
      end

      it 'sets api key' do
        expect(configuration.shopify_config[:api_key]).to eq configuration.api_key
      end

      it 'sets password' do
        expect(configuration.shopify_config[:password]).to eq configuration.password
      end

      it 'sets store' do
        expect(configuration.shopify_config[:store]).to eq configuration.store
      end
    end

    context 'for production' do
      let(:production_configuration) { Dougie::Configuration.new environment: :production }

      it 'defaults to development environment' do
        expect(production_configuration.environment).to eq :production
      end

      it 'loads production api key' do
        expect(production_configuration.api_key).to eq 'prod-api-key'
      end

      it 'loads production password' do
        expect(production_configuration.password).to eq 'prod-password'
      end

      it 'loads production store' do
        expect(production_configuration.store).to eq 'prod-store'
      end
    end
  end
end
