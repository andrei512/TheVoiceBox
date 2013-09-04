json.array!(@votes) do |vote|
  json.extract! vote, :user_id, :post_id, :value
  json.url vote_url(vote, format: :json)
end
