require_relative '../pages/helpers/Site'

RSpec.configure do |config|
  config.before(:all) do
    @site = Site.new
  end

  config.after(:all) do
    @site.close_browser
  end
end

