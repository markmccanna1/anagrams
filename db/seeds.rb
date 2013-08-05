require 'csv'


CSV.foreach("words.csv") do |row|
  Word.create(word: row[0].downcase, sorted_word: row[0].downcase.split(//).sort.join)
end
