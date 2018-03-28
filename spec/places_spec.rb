require("rspec")
require("places")

describe("Place") do
  describe(".all") do
    it("returns empty the first time") do
      expect(Place.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("pushes your place into an array") do
      vacation1 = Place.new("Tenneessee")
      vacation1.save()
      expect(Place.all()).to(eq([vacation1]))
    end
  end

  describe(".clear") do
    it("emptys your places") do
      place = Place.new("michigan")
      place.save()
      Place.clear()
      expect(Place.all()).to(eq([]))
    end
  end

  describe("#id") do
    it("increments id by 1") do
      vacation = Place.new("kentucky")
      vacation.save()
      vacation2 = Place.new("Tenneessee")
      vacation2.save()
      expect(vacation.id()).to(eq(1))
      expect(vacation2.id()).to(eq(2))
    end
  end

  describe(".find") do
    it("finds a place based on its id") do
      Place.clear()
      item = Place.new("tacos")
      item.save()
      item2 = Place.new("pizza")
      item2.save()
      expect(Place.find(1)).to(eq(item))
      expect(Place.find(2)).to(eq(item2))
    end
  end
end
