module ApplicationHelper

    def get_content(component)
        begin
            value = I18n.translate("#{component}", :raise => I18n::MissingTranslationData)
            return value if value
        rescue I18n::MissingTranslationData
            return "https://actualize8storage.s3.ca-central-1.amazonaws.com/Library/dan-ROJFuWCsfmA-unsplash.jpg"
        end
    end

end
