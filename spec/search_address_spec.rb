require 'rspec'
require_relative 'spec_helper'

describe "Address Search" do
  context "on the royal mail website" do
    it "should show address on map with view options: Road, Aerial, Bird's eye, Streetside, Ordnance Survey" do
      @site.homepage.open.search_address
    end
  end
end