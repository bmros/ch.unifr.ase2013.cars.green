json.array!(@bids) do |bid|
  json.extract! bid, :bidder, :amount, :car_id
  json.url bid_url(bid, format: :json)
end
