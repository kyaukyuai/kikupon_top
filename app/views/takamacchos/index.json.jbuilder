json.array!(@takamacchos) do |takamaccho|
  json.extract! takamaccho, :id
  json.url takamaccho_url(takamaccho, format: :json)
end
