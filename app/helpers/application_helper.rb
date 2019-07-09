module ApplicationHelper

    def get_content(component)
        I18n.t "#{component}"
    end


end
