class Repository
  API = Github.repos
  def initialize(user)
    @user = user.github_username
  end

  def count
    API.list(user: @user).count
  end

  def fetch(per_page: 10, page: 1)
    API.list(user: @user, per_page: per_page, page: page)
  end
end
