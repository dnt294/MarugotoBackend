namespace :update_db do
    desc 'Add LessonOrder to Lessons Table'
    task add_lesson_order: :environment do
        lessons = Lesson.order(:book).order(:lesson)
        lessons.each_with_index do |lesson, index|
            lesson.update(lesson_order: index)
        end

    end
end
