json.array!(@steps) do |step|
  json.extract! step, :id, :user_id, :steps
  json.url step_url(step, format: :json)
end
