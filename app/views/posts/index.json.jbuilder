json.array!(@posts) do |post|
  json.extract! post, :user_id, :text, :upvotes, :downvotes
  json.url post_url(post, format: :json)
end
