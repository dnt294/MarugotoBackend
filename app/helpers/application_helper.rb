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

end
