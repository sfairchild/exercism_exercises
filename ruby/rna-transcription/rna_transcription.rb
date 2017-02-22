 module BookKeeping
    VERSION = 4
  end

class Complement
  TRANSLATION = {
    'G' => 'C',
    'C' => 'G',
    'T' => 'A',
    'A' => 'U'
  }

  def self.of_dna dna
    return '' unless dna.match(/^[#{dna_values}]+$/)
    dna.tr(dna_values, rna_values)
  end

  def self.dna_values
    @dna_values ||= TRANSLATION.keys.join
  end

  def self.rna_values
    @rna_values ||= TRANSLATION.values.join
  end
end
