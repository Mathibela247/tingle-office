json.extract! document, :id, :title, :content, :docs, :created_at, :updated_at
json.url document_url(document, format: :json)
json.docs do
  json.array!(document.docs) do |doc|
    json.id doc.id
    json.url url_for(doc)
  end
end
