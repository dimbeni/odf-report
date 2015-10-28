module ODFReport

  class Text < Field

    attr_accessor :parser

    def replace!(doc, data_item = nil)

      return unless node = find_text_node(doc)

      text_value = get_value(data_item)

      #@parser = Parser::Default.new(text_value, node)

      #@parser.paragraphs.each do |p|
      #  node.before(p)
      #end

      #node.remove
      node.content = text_value

    end

    private

    def find_text_node(doc)
      puts "find_text_node #{to_placeholder}\n"
      #texts = doc.xpath(".//text:text-input[text()='#{to_placeholder}']")
      texts = doc.xpath(".//text:text-input[@text:description='#{to_placeholder}']")
      if texts.empty?
        nil
      else
        texts.first
      end

      #texts = doc.xpath(".//text:p[text()='#{to_placeholder}']")
      #if texts.empty?
      #  texts = doc.xpath(".//text:p/text:span[text()='#{to_placeholder}']")
      #  if texts.empty?
      #    texts = nil
      #  else
      #    texts = texts.first.parent
      #  end
      #else
      #  texts = texts.first
      #end

      #texts


    end

  end

end
