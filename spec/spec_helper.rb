require 'rubygems'
require 'rspec/autorun'
require 'prettyjsp'

module PrettyJSPHelper
  def verify_pretty(file)
    source = File.dirname(__FILE__) + "/fixtures/" + file
    golden = "#{source}.golden"

    pretty = PrettyJSP::Pretty.new.pretty(IO.read(source))
    pretty.should == IO.read(golden)
  end
end

RSpec.configure do |c|
  c.include(PrettyJSPHelper)
end