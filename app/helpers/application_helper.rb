module ApplicationHelper
    include Pagy::Frontend
    
    def flash_class(key)
        case key
            when 'notice' then 'is-success'
            when 'alert' then 'is-danger'
        end
    end

    def show_errors(object, field_name)
        if object.errors.any?
            if !object.errors.messages[field_name].blank?
                object.errors.messages[field_name].join(", ")
            end
        end
    end
end
