json.array!(@todos) do |todo|
  json.extract! todo, :id, :title, :task
  json.url todo_url(todo, format: :json)
end
