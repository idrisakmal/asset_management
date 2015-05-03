json.array!(@logs) do |log|
  json.extract! log, :id, :title, :message, :status
  json.url log_url(log, format: :json)
end
