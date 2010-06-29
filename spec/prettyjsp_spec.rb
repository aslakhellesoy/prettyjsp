require 'spec_helper'

describe "Prettyjsp" do
  it "should prettify a pure HTML file" do
    verify_pretty('pure.html')
  end
end
