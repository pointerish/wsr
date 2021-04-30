module ApplicationHelper
  def greet
    if current_page?(root_path)
      render 'layouts/greet'
    end
  end

  def what_nav
    if poster_signed_in?
      render 'layouts/poster-nav'
    else
      render 'layouts/default-nav'
    end
  end
end
