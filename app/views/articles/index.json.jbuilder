json.key_format! :camelize => :lower

json.set! :entries do
  json.array!(@articles) do |entry|
    json.title entry.title
    json.link  entry.url
    json.time  entry.posted_at
  end
end
