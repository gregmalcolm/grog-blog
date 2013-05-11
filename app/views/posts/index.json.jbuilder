json.array!(@posts) do |post|
  json.extract! post, :title, :article, :published_on, :tags, :properties
  json.url post_url(post, format: :json)
end