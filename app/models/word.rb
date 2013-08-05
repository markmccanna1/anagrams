
class Word < ActiveRecord::Base
  # Remember to create a migration!


  def self.anagrams(word)
    sorted_word = word.downcase.split(//).sort.join
    Word.where(sorted_word: sorted_word)
  end

end


