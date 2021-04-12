module ApplicationHelper
  def greet(request)
    if request.path.include?("") && !request.path.include?("/jobs") && !request.path.include?("new")
      render 'layouts/greet'
    end
  end

  def what_nav(request)
    if request.path.include?("/jobs/new")
      render 'layouts/poster-nav'
    else
      render 'layouts/default-nav'
    end
  end
end
