require 'nokogiri'

module PrettyJSP
  class Pretty
    def pretty(source)
      source = source.escape_jsp_tags
      doc = Nokogiri::XML(source) do |x| 
        x.noblanks
      end
      raise doc.errors.join("\n") + "\n\n#{source}" if doc.errors.any?

      source = doc.to_xml(:indent => 2, :encoding => 'UTF-8')
      source.unescape_jsp_tags.strip_xml
    end
  end
end

class String
  def escape_jsp_tags
    gsub(/(<%[^%>]+%>)/, '<!--JSP\1-->')
  end

  def unescape_jsp_tags
    gsub(/<!--JSP<%@([^%>]+)%>-->/, '<%@\1%>')
  end

  def strip_xml
    gsub(/<\?xml version="1.0" encoding="UTF-8"\?>\n/, '')
  end
end