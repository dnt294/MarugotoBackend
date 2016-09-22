namespace :reset_count_cache do
    desc "Reset counter cache from counter culture tables"
    task reset: :environment do
        Grammar.counter_culture_fix_counts
        NewWord.counter_culture_fix_counts
        Kanji.counter_culture_fix_counts
    end

end
