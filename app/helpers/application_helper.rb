module ApplicationHelper

  #return the full tile on a per-page basis
  def full_title(page_title)
      base_title="Ruby on Rails Tutorial Sample App"
      if page_titile.empty?
        base_title
      else
         "#{base_title}|#{page_title}"
      end


  end

  private

  def signed_in_user
    store_location
    redirect_to signin_url, notice: "please sign in." unless signed_in?
  end

  def correct_user
     @user=User.find(params[:id])
    redirect_to(root_path) unless current_user?(@user)
  end

  def admin_user
    redirect_to(root_path) unless current_user.admin?
  end


end
