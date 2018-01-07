# Class Complement rna_transcription
class Complement
  DNA_TO_RNA = {
    'G' => 'C',
    'C' => 'G',
    'T' => 'A',
    'A' => 'U'
  }.freeze

  def self.of_dna(dna)
    return '' unless valid?(dna)
    dna.each_char.map { |char| DNA_TO_RNA[char] }.join
  end

  def self.valid?(dna)
    dna.each_char.all? { |char| DNA_TO_RNA.include? char }
  end

  private_class_method :valid?
end

module BookKeeping
  VERSION = 4
end
