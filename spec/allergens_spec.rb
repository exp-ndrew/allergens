require('rspec')
require('allergens')

describe('allergens') do
  it("returns ['cats'] for 128") do
    allergens(128).should(eq(['cats']))
  end

  it("returns ['pollen'] for 64") do
    allergens(64).should(eq(['pollen']))
  end

  it("returns ['chocolate'] for 32") do
    allergens(32).should(eq(['chocolate']))
  end

  it("returns ['tomatoes'] for 16") do
    allergens(16).should(eq(['tomatoes']))
  end

  it("returns ['strawberries'] for 8") do
    allergens(8).should(eq(['strawberries']))
  end

  it("returns ['shellfish'] for 4") do
    allergens(4).should(eq(['shellfish']))
  end

  it("returns ['peanuts'] for 2") do
    allergens(2).should(eq(['peanuts']))
  end

  it("returns ['eggs'] for 1") do
    allergens(1).should(eq(['eggs']))
  end

  it("returns ['peanuts, eggs'] for 3") do
    allergens(3).should(eq(['peanuts','eggs']))
  end

  it("returns ['pollen', 'chocolate', 'eggs' for 97") do
    allergens(97).should(eq(['pollen', 'chocolate', 'eggs']))
  end

  it("returns all allergens in an array for 255") do
    allergens(255).should(eq(['cats', 'pollen', 'chocolate', 'tomatoes',
                              'strawberries', 'shellfish', 'peanuts', 'eggs']))
  end
end
