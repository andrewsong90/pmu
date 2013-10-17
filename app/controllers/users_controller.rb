class UsersController < ApplicationController
  def new
  end

  def create

    user=User.find_by_email(params[:email])

    if !user
      u=User.create(:email => params[:email])
      u.save
    end

    redirect_to root_url
  end
end
