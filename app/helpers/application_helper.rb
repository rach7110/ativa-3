module ApplicationHelper
  def page_title(project)
    if project  
      "#{project.name} - Perfect Search Design | Ativa"
    else
      "Perfect Search Design | Ativa"
    end
  end

  def if_admin(&block)
    if current_user.admin?
      content_tag(:div, capture(&block))
    end
  end

end
