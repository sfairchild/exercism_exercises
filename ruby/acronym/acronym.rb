class Acronym
  def self.abbreviate phrase
    # regex available at http://rubular.com/r/WvAfSulUeE
    phrase.split(/[\s\-]|((?<=[a-z])(?=[A-Z]))/)
    .reduce('') { |result, word| result + word[0].to_s }
    .upcase
  end
end

module BookKeeping
  VERSION = 2
end
