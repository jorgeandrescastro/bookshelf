module ApplicationHelper
  def nav_link(link_text, link_path, authentication=false)
    if (!authentication || (authentication && current_user)) 
      class_name = current_page?(link_path) ? 'active' : ''

      content_tag(:li, :class => class_name) do
        link_to link_text, link_path
      end
    end
  end
end