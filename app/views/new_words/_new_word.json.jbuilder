json.extract! new_word, :id, :word, :kanji_version, :meaning, :note, :lesson, :created_at, :updated_at
json.url new_word_url(new_word, format: :json)