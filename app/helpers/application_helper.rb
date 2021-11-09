module ApplicationHelper
    # Returns the full tile on a per-page basis
    def full_title(title)
        base_title = "Event Horizon - Your number one event management solution"
        if title.empty?
            base_title
        else
            "#{title} | #{base_title}"
        end
    end
end
