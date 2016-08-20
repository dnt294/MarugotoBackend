json.extract! kanji, :id, :kanji, :meaning, :onyomi, :kunyomi, :hint, :image, :kanji_part, :lesson, :created_at, :updated_at
json.url kanji_url(kanji, format: :json)