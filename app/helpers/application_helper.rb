module ApplicationHelper
  
  def action_present?(action)
    if action.is_a?(Hash) && action.key?(:except)
      !action[:except].include?(params[:action])
    else
      action.include?(params[:action])
    end
  end
  
  def active_current_page?(controller, action = nil, src = nil)
    src == params[:src] && params[:controller] == controller && (!action || action_present?(action))
  end

  def active_menu(menu)
    active_menu = case menu
    when :home
      active_current_page?('landing', ['index'])
    when :about_us
      active_current_page?('statics', ['about_us'])
    when :admin
      active_current_page?('dashboard', ['admin_dashboard'])
    when :contact_us
      active_current_page?('statics', ['contact_us'])
    end
    'active' if active_menu
  end

  def menu_link(link, text, path, id = '')
    content_tag :li, link_to(text, path, id: id), class: active_menu(link)
  end
end
