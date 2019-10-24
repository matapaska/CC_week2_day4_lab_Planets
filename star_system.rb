class StarSystem
  attr_reader :name, :planets

  def initialize(name, planets)
    @name = name
    @planets = planets
  end

  def planet_names
   @planets.map{|planet| planet.name}
  end

  def get_planet_by_name(name)
    @planets.find{|planet| planet.name == name}
  end

  def get_largest_planet
    diameters = @planets.map{|planet| planet.diameter}
    largest = diameters.sort.reverse.first
    @planets.find{|planet| planet.diameter == largest}
  end

  def get_smallest_planet
    diameters = @planets.map{|planet| planet.diameter}
    smallest = diameters.sort.first
    @planets.find{|planet| planet.diameter == smallest}
  end

  def get_planets_with_no_moons
    no_moons = []
    for planet in @planets
      if planet.number_of_moons == 0
       no_moons.push(planet)
      end

    end
    return no_moons
 end

def get_planets_with_more_moons(number)
  moons = []
  for planet in @planets
    if planet.number_of_moons > number
     moons.push(planet.name)
    end

  end
  return moons
end

def get_number_of_planets_closer_than(distance)
  planets = []
  for planet in @planets
    if planet.distance_from_sun < distance
      planets.push(planet.name)
    end

  end
  return planets.length
end




end
