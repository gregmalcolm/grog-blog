module PostsHelper
  def published_date(time)
    if time
      presentation_date = "#{time.day} #{time.strftime('%b')}"
      if time.year != Time.now.year
        presentation_date = "#{presentation_date} #{time.year}"
      end
      presentation_date
    end
  end

  def markdown(text)
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, :autolink => true, :space_after_headers => true)
    markdown.render(text).html_safe
  end
end
