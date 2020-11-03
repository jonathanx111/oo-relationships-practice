class Trainer
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def clients
        Client.all.select{|c| c.trainer == self}
    end

    def self.most_clients
        self.all.group_by{|t| t.clients.count}.max.last
    end

    def self.least_clients
        self.all.group_by{|t| t.clients.count}.min.last
    end
end