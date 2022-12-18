local spooder = require 'spooder'

spooder.task "test" {
	description = "Runs tests";
	'rm -f luacov.stats.out',
	'luacheck src',
	'busted --coverage',
	'luacov -r html arbiter.lua',
}

spooder.task "documentation" {
	description = "Builds and pushes the documentation";
	depends = "test";
	[[
		hash=$(git log -1 --format=%h)
		mkdir -p doc/coverage
		cp -r luacov-html/* doc/coverage
		ldoc .
		cd doc
			find . | treh -c
			git add --all
			if git log -1 --format=%s | grep "$hash$"
			then git commit --amend --no-edit
			else git commit -m "Update documentation to $hash"
			fi
			git push --force origin documentation
		cd ../
		git stash pop || true
	]]
}
