json.array!(@assets) do |asset|
  json.extract! asset, :id, :serial, :tag, :staff_id, :product_id
  json.url asset_url(asset, format: :json)
end
