require 'spec_helper'

describe "Prettyjsp" do
  Dir["#{File.dirname(__FILE__)}/fixtures/*.{jsp,html}"].each do |source|
    it "should prettify #{source}" do
      verify_pretty(source)
    end
  end
end
