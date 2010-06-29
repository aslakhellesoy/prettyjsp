require 'spec_helper'

describe "Prettyjsp" do
  it "should prettify a pure HTML file" do
    verify_pretty('pure.html')
  end

  it "should prettify a file with JSP directives" do
    verify_pretty('jsp_directives.jsp')
  end
end
