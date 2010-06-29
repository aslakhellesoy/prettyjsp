require 'rubygems'
require 'rspec/autorun'
require 'prettyjsp'

module PrettyJSPHelper
  def verify_pretty(source)
    golden = "#{source}.golden"

    pretty = PrettyJSP::Pretty.new.pretty(IO.read(source))
    pretty.should == IO.read(golden)
  end
end

RSpec.configure do |c|
  c.include(PrettyJSPHelper)
end