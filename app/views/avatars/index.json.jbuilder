json.array!(@avatars) do |avatar|
  json.extract! avatar, :id, :user_id
  json.url avatar_url(avatar, format: :json)
end
