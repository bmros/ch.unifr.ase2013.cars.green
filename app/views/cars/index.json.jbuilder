json.array!(@cars) do |car|
  json.extract! car, :title, :brand, :model, :mileage, :color, :startprize, :buyoutprize, :duration, :description
  json.url car_url(car, format: :json)
end
