require 'rspec'
require_relative 'spec_helper'

describe 'Address Search' do
  context 'on the royal mail website' do
    it 'should show search results' do
      expect @site.homepage.open.goto_search.search_address('EC4Y 0HQ').search_results?
    end
  end
end