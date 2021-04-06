module ApplicationHelper
  def greet(request)
    if request.path.include?("") && !request.path.include?("/jobs") && !request.path.include?("new")
      render 'layouts/greet'
    end
  end
end
