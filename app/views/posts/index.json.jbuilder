json.array!(@posts) do |post|
  json.extract! post, :score, :photo_url, :text, :user_id, :workout_id
  json.url post_url(post, format: :json)
end
