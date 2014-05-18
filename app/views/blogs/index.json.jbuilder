json.key_format! :camelize => :lower

json.set! :blogs do
  json.array!(@blogs) do |blog|
    json.id   blog.id
    json.name blog.name
    json.url  blog.url
  end
end
