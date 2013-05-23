json.array!(@posts) do |post|
  json.extract! post, :title, :published_on, :article, :tags
  json.url post_url(post, format: :json)
end