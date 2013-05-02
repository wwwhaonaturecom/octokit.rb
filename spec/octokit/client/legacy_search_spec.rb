require 'helper'

describe "Legacy search" do

  describe ".legacy_search_issues" do
    xit "returns matching issues" do
      stub_get("https://api.github.com/legacy/issues/search/sferik/rails_admin/open/activerecord").
      to_return(json_response("legacy/issues.json"))
      issues = @client.search_issues("sferik/rails_admin", "activerecord")
      expect(issues.first.number).to eq(105)
    end
  end # .search_issues

  describe ".legacy_search_users" do
    xit "returns matching username" do
      stub_get("https://api.github.com/legacy/user/search/sferik").
        to_return(json_response("legacy/users.json"))
      users = @client.search_users("sferik")
      expect(users.first.username).to eq("sferik")
    end
  end # .legacy_searcy_users

  describe ".legacy_search_repos" do
    xit "returns matching repositories" do
      stub_get("https://api.github.com/legacy/repos/search/One40Proof").
        to_return(json_response("legacy/repositories.json"))
      repositories = @client.search_repositories("One40Proof")
      expect(repositories.first.name).to eq("One40Proof")
    end
  end # .legacy_search_repos
end
