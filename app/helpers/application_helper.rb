module ApplicationHelper
  def year_current
    Date.current.year
  end

  def github_url(author, repo)
    link_to 'Trusov Pavel, TestGuru', "https://github.com/#{author}/#{repo}/", target: '_blank'
  end
end
