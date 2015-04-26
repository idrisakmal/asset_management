json.array!(@assets) do |asset|
  json.extract! asset, :id, :name, :serial, :tag, :specs, :staff_id
  json.url asset_url(asset, format: :json)
end
