class RepositoriesController < GithubBaseController
  def index
    page = params[:page] || 1
    per_page = params[:per_page] || 10
    repository = Repository.new(current_user)
    @repositories = repository.fetch(page: page, per_page: per_page)
    @repositories_paginator = Kaminari.paginate_array(@repositories, total_count: repository.count).page(page).per(per_page)
  end
end
