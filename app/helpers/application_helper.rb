module ApplicationHelper
  def greet
    if current_page?(root_path)
      render 'layouts/greet'
    end
  end

  def what_nav
    if current_page?(root_path) || current_page?(jobs_path)
      render 'layouts/default-nav'
    else
      render 'layouts/poster-nav'
    end
  end
end
