class Post < ActiveRecord::Base
  default_scope order('published_on DESC')
end
