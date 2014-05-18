json.key_format! :camelize => :lower

json.set! :categories do
  json.array!(@categories) do |category|
    json.id   category.id
    json.name category.name
  end
end
