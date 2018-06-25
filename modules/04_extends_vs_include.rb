module HeadingHelper
  def top_level(content)
    "<h1>#{content}</h1>"
  end
end

class Page
  include HeadingHelper

  def initialize(title, body)
    @title = title
    @body = body
  end

  def render
    page_content = <<~EOL
      #{top_level(@title)}

      <p>
        #{@body}
      </p>
    EOL
  end
end

page = Page.new('My cool page', 'Some amazing content')
puts page.render

module AccountingHelper
  def tax_rate
    0.08
  end
end

class Invoice
  extend AccountingHelper
end

Invoice.tax_rate
