json.array!(@checks) do |check|
  json.extract! check, :id, :table_id, :delivered
  json.url check_url(check, format: :json)
end
