require 'nokogiri'

module PrettyJSP
  class Pretty
    def pretty(source)
      source = source.escape_jsp_tags.escape_colons
      doc = Nokogiri::XML(source) do |x| 
        x.noblanks
      end
      raise doc.errors.join("\n") + "\n\n#{source}" if doc.errors.any?

      source = doc.to_xml(:indent => 2, :encoding => 'UTF-8')
      source.unescape_colons.unescape_jsp_tags.strip_xml.fix_labels
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

  def escape_colons
    gsub(/(\w+):(\w+)/, '\1___\2')
  end

  def unescape_colons
    gsub(/(\w+)___(\w+)/, '\1:\2')
  end

  def fix_labels
    gsub(/\s*(<\/\w*:?label>)/, '\1')
  end

  def strip_xml
    gsub(/<\?xml version="1.0" encoding="UTF-8"\?>\n/, '')
  end
end