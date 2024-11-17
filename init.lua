-- git wrapper
nGitPath = vim.cmd('pwd')

function git_init()
	-- creates a new git repo based on the current pwd
	vim.cmd('!git init')
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
	
