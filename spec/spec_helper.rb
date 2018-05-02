require_relative '../pages/helpers/site'

RSpec.configure do |config|
  config.before(:all) do
    @site = Site.new
  end
end

