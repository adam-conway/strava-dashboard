Rails.application.config.middleware.use OmniAuth::Builder do
  provider :strava, "25453", "42f49f717eec1f57806191796a5a1bd1123c4efa"
end
