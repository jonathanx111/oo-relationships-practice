class Location
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def location_trainer_instances
        LocationTrainer.all.select{|lt| lt.location == self}
    end

    def trainers
        self.location_trainer_instances.map{|lt| lt.trainer}
    end

    def clients
        self.trainers.map{|t| t.clients}.flatten
    end

    def client_amount
          self.trainers.map{|t| t.clients}.flatten.length
    end

    def self.least_clients
        Location.all.group_by{|location| location.clients.count}.min.last
    end

    def self.most_clients
        Location.all.group_by{|location| location.clients.count}.max.last
    end



    
end