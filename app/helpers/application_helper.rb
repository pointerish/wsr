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

  def is_current_user_applicant?
    if job_applicant_signed_in?
      link_to 'MY PROFILE', job_applicant_hashid_path(current_job_applicant), class: 'actions-link hover:underline block'
    else
      link_to 'JOB SEEKERS', new_job_applicant_registration_url, class: 'actions-link hover:underline block'
    end
  end
end
