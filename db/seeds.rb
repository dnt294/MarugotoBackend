# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Lesson.create(book: 'None', lesson: '0')

(1..32).each do |lesson|
    Lesson.create(book: 'Kanji', lesson: lesson)
end

(1..18).each do |lesson|
    Lesson.create(book: 'A1', lesson: lesson)
    Lesson.create(book: 'A2/1', lesson: lesson)
    Lesson.create(book: 'A2/2', lesson: lesson)
    Lesson.create(book: 'A2B1', lesson: lesson)
end

KANJI = ["一","二","三","四","五","六","七","八","九","十","日","月","火","水","木","金","蒔"]

case Rails.env
when 'development'
    (1..15).each do |grammar|
        Grammar.create(title: "grammar #{grammar}", explanation: 'dummy', lesson: Lesson.marugoto_books.sample)
    end
    KANJI.each do |kanji|
        Kanji.create(kanji: kanji, meaning: 'dummy', stroke_count: 1, lesson: Lesson.kanji_books.first)
        Kanji.create(kanji: kanji, meaning: 'dummy', stroke_count: 1, lesson: Lesson.kanji_books.second)
    end
end
