module ApplicationHelper

  # Display errors for the given instance
  def errors_for(instance)
    html = '<ul class="error_messages">'
    @publication.errors.full_messages.each do |error_message|
      html += "<li>#{error_message}</li>"
    end
    html += '</ul>'
    return html.html_safe
  end
end
