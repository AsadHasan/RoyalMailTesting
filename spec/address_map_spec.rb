require 'rspec'
require_relative '../spec/spec_helper'

describe 'View on map' do
  context 'Address selected from search results' do
    it 'should have option to view address on map' do
      expect @site.homepage.open.goto_search.search_address('EC4Y 0HQ').address_on_map?
    end
  end
end