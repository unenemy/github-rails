class GithubBaseController < ApplicationController
  before_action :check_github_account

  private
  def check_github_account
    redirect_to profile_path, flash: { error: 'Please input your github username' } and return if current_user.github_username.blank?
  end
end
