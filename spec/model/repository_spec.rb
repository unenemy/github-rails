require "rails_helper"

RSpec.describe Repository, :type => :model do
  it "finds count of repositories" do
    user = User.new(github_username: 'unenemy')
    # yep I know it's kinda stupid to write so dependent tests
    expect(Repository.new(user).count).to eq(27)
  end
end
