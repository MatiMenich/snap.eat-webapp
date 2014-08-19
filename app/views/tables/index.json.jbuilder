json.array!(@tables) do |table|
  json.extract! table, :id, :number, :place, :uid
  json.url table_url(table, format: :json)
end
