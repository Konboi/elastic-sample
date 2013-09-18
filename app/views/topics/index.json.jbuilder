json.array!(@topics) do |topic|
  json.extract! topic, :title, :body
  json.url topic_url(topic, format: :json)
end
