-- git wrapper
nGitPath = vim.cmd('pwd')

function git_init(path)
	-- creates a new git repo based on the current pwd
	if path == nil
		vim.cmd('!git init')
	else
		vim.cmd('!cd ' .. path .. ' && git init') -- go to path and create a git repo
	end
end

function git_add_all()
	-- adds all new git files in project
	vim.cmd('!git add .')
end

function git_add(file)
	-- add file to git
	vim.cmd('!git add ' .. file)
end

function git_status()
	-- git status
	vim.cmd('!git status')
end

function git_graph()
	-- git graph
	vim.cmd('!git log --graph')
end

function git_branch(branchName)
	-- create new git branch
	vim.cmd('!git branch')
end

function git_switch_branch(branchName)
	-- switch to branch
	vim.cmd('!git switch ' .. branchName)
end

function git_show_current_branch()
	--shows current branch
	vim.cmd('!git branch --show-current')
end

function git_branch_rename(branchName, newBranchName)
	-- changes the name of branch to something else
	vim.cmd('!git branch ' .. branchName .. ' ' .. newBranchName)
end
	
function git_merge_branches(main, branchToMerge)
	-- switches to branch main and merges branchToMerge to main
	vim.cmd(
