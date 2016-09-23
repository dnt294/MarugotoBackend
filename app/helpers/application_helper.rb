module ApplicationHelper

    include CacheHelper

    def current_controller_is name
        controller_name == name
    end

end
