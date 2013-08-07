module ApplicationHelper
  def page_title(project)
    if project  
      "#{project.name} - Perfect Search Design | Ativa"
    else
      "Perfect Search Design | Ativa"
    end
  end
end
