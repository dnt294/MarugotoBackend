module ApplicationHelper

    include CacheHelper

    def current_controller_is name
        controller_name == name
    end

    def flash_class(level)
        case level
        when 'success'
            'green'
        when 'error'
            'red'
        when 'notice'
            'blue'
        end
    end

    def default_marugoto_lesson
        cookies[:marugoto_lesson] || nil
    end

    def cache_marugoto_lesson(lesson_id)
        cookies.permanent[:marugoto_lesson] = lesson_id
    end

    def default_kanji_lesson
        cookies[:kanji_lesson] || nil
    end

    def cache_kanji_lesson(lesson_id)
        cookies.permanent[:kanji_lesson] = lesson_id
    end
end
