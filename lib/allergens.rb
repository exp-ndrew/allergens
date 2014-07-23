def allergens(score)
  allergen_scores = {'cats' => 128, 'pollen' => 64, 'chocolate' => 32,
                   'tomatoes' => 16, 'strawberries' => 8, 'shellfish' => 4,
                    'peanuts' => 2, 'eggs' => 1}

  allergen_list = []

  allergen_scores.each do |allergen, allergen_score|
    if score >= allergen_score
      allergen_list.push allergen
      score -= allergen_score
    end
  end

  allergen_list
end
