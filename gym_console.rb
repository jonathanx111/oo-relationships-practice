require_relative './app/models/gym/client'
require_relative './app/models/gym/location_trainer'
require_relative './app/models/gym/location'
require_relative './app/models/gym/trainer'
require 'pry'

location1  = Location.new("location1")
location2  = Location.new("location2")
location3  = Location.new("location3")
location4  = Location.new("location4")
location5  = Location.new("location5")
location6  = Location.new("location6")

trainer1 = Trainer.new("trainer1")
trainer2 = Trainer.new("trainer2")
trainer3 = Trainer.new("trainer3")
trainer4 = Trainer.new("trainer4")
trainer5 = Trainer.new("trainer5")
trainer6 = Trainer.new("trainer6")
trainer7 = Trainer.new("trainer7")

client1 = Client.new("client1", trainer1)
client2 = Client.new("client2", trainer2)
client3 = Client.new("client3", trainer2)
client4 = Client.new("client4", trainer3)
client5 = Client.new("client5", trainer3)
client6 = Client.new("client6", trainer3)
client7 = Client.new("client7", trainer4)
client8 = Client.new("client8", trainer4)

lt1 = LocationTrainer.new(location1, trainer1)
lt2 = LocationTrainer.new(location2, trainer1)
lt3 = LocationTrainer.new(location3, trainer1)
lt4 = LocationTrainer.new(location2, trainer1)
lt5 = LocationTrainer.new(location2, trainer2)
lt6 = LocationTrainer.new(location2, trainer3)
lt7 = LocationTrainer.new(location1, trainer4)
binding.pry
