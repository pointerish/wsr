module ApplicationHelper
  def greet(request)
    if !request.path.include?("new")
      render 'layouts/greet'
    end
  end
end
