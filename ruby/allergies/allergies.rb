class Allergies
  ALLERGENS = {
    'cats'         => 128,
    'pollen'       => 64,
    'chocolate'    => 32,
    'tomatoes'     => 16,
    'strawberries' => 8,
    'shellfish'    => 4,
    'peanuts'      => 2,
    'eggs'         => 1
  }
  def initialize score
    max_score, score_sum = ALLERGENS.values.max, ALLERGENS.values.sum
    score -= max_score until score <= score_sum
    @score = score
  end

  def list
    @list ||= convert_score
  end

  def allergic_to? item
    list.include? item
  end

  private
  def convert_score
    score, list = @score, []

    until score == 0
      allergen = ALLERGENS.find { |a, s| score >= s}
      list     << allergen[0]
      score    -= allergen[1]
    end
    list.reverse
  end
end
