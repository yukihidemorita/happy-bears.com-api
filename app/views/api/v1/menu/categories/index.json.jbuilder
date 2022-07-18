json.data do
  json.services do
    json.array! @categories do |category|
      json.id category.id
      json.label category.name
    end
  end
end


