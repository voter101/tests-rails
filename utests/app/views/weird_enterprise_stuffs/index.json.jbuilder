json.array!(@weird_enterprise_stuffs) do |weird_enterprise_stuff|
  json.extract! weird_enterprise_stuff, :id, :priority
  json.url weird_enterprise_stuff_url(weird_enterprise_stuff, format: :json)
end
