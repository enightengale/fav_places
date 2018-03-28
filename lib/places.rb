require("pry")

class Place
  @@places = []

  attr_reader :id
  attr_accessor :places

  def initialize(places)
    @places = places
    @id = @@places.length + 1
  end

  def self.all()
    @@places
  end

  def save()
    @@places.push(self)
  end

  def self.clear()
    @@places = []
  end

  def self.find(id)
    place_id = id.to_i()
    @@places.each do |place|
      if place.id == place_id
        return place
      end
    end
  end

end

binding.pry
