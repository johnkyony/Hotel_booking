class TripsController < ApplicationController
  def index
    client = Uber::Client.new do |config|
      config.server_token = "KJgXBaPlcEu_gAy9wZZJRRpEnALjqDGsXuwX08NS"
      config.client_id = "iZZ8e_2DBo4goAiDEO7bth8x5IrD1m9Q"
      config.client_secret = "ZaJLEyZu0-zka9qAcGNuASdG7dNK4iyd3UKh-v2d"
      config.sandbox = true
    end
    guesthouse = Guesthouse.first
    @uber_info = client.products(latitude: guesthouse.latitude , longitude: guesthouse.longitude)
  end

  def new
  end
end
