require 'nokogiri'

module PrettyJSP
  class Pretty
    def pretty(source)
      doc = Nokogiri::XML(source) { |x| x.noblanks } 
      source = doc.to_xml(:indent => 2, :encoding => 'UTF-8')
      strip_xml(source)
    end

  private
  
    def strip_xml(s)
      s.gsub(/<\?xml version="1.0" encoding="UTF-8"\?>\n/, '')
    end
  end
end