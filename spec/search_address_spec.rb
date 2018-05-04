require 'rspec'
require_relative 'spec_helper'

describe 'Address Search' do
  context 'on the royal mail website' do
    it 'should show address on map' do
      expect @site.homepage.open.goto_search.search_address.address_on_map?
    end
  end
end