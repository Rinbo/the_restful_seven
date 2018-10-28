class Admin::UserManagementController < ApplicationController
  def index
    @users = User.all
  end

  def show
  end

  def edit
  end
end
