require 'rspec'
require_relative 'spec_helper'

describe "Address Search" do
  context "on the royal mail website" do
    it "should show address on map with view options: Road, Aerial, Bird's eye, Streetside, Ordnance Survey" do
      @site.homepage.open.goto_search
      @site.postcode_finder.search_address
      @site.postcode_finder.show_address_on_map
    end
  end
end