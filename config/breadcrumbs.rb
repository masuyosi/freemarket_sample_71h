crumb :root do
  link "FURIMA", root_path
end

crumb :profile do
  link "マイページ", profile_path(current_user)
  parent :root
end

crumb :logout do
  link "ログアウト", logout_profiles_path
  parent :profile
end

crumb :CardShow do
  link "登録カード情報", card_path
  parent :profile
end


crumb :CardNew do
  link "カード登録", card_path(current_user)
  parent :profile
end



# crumb :projects do
#   link "Projects", projects_path
# end

# crumb :project do |project|
#   link project.name, project_path(project)
#   parent :projects
# end

# crumb :project_issues do |project|
#   link "Issues", project_issues_path(project)
#   parent :project, project
# end

# crumb :issue do |issue|
#   link issue.title, issue_path(issue)
#   parent :project_issues, issue.project
# end

# If you want to split your breadcrumbs configuration over multiple files, you
# can create a folder named `config/breadcrumbs` and put your configuration
# files there. All *.rb files (e.g. `frontend.rb` or `products.rb`) in that
# folder are loaded and reloaded automatically when you change them, just like
# this file (`config/breadcrumbs.rb`).