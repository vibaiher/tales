json.array!(@tales) do |tale|
  json.extract! tale, :id, :title, :body, :author, :published
  json.url tale_url(tale, format: :json)
end
