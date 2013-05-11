module PostsHelper
  def published_date(time)
    time.strftime("%e %b").strip if time
  end
end
