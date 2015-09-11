# See → fishshell.com/docs/current/commands.html#complete
function __fish_pod_needs_command
  set cmd (commandline -opc)
  if [ (count $cmd) -eq 1 ]
    return 0
  end
  return 1
end

function __fish_pod_using_command
  set cmd (commandline -opc)
  if [ (count $cmd) -gt 1 ]
    if [ $argv[1] = $cmd[2] ]
      return 0
    end
  end
  return 1
end


############
# commands #
############

# cache
complete -f -c pod -n '__fish_pod_needs_command' -a cache -d 'Manipulate the CocoaPods cache'
complete -f -c pod -n '__fish_pod_using_command cache' -l 'silent' -d 'Show nothing'
complete -f -c pod -n '__fish_pod_using_command cache' -l 'verbose' -d 'Show more debugging information'
complete -f -c pod -n '__fish_pod_using_command cache' -l 'no-ansi' -d 'Show output without ANSI codes'
complete -f -c pod -n '__fish_pod_using_command cache' -l 'help' -d 'Show help banner of specified command'


# init
complete -f -c pod -n '__fish_pod_needs_command' -a init -d 'Generate a Podfile for the current directory.'
complete -f -c pod -n '__fish_pod_using_command init' -l 'silent' -d 'Show nothing'
complete -f -c pod -n '__fish_pod_using_command init' -l 'verbose' -d 'Show more debugging information'
complete -f -c pod -n '__fish_pod_using_command init' -l 'no-ansi' -d 'Show output without ANSI codes'
complete -f -c pod -n '__fish_pod_using_command init' -l 'help' -d 'Show help banner of specified command'


# install
complete -f -c pod -n '__fish_pod_needs_command' -a install -d 'Install project dependencies to Podfile.lock versions'
complete -f -c pod -n '__fish_pod_using_command install' -l 'project-directory' -d 'The path to the root of the project directory'
complete -f -c pod -n '__fish_pod_using_command install' -l 'no-integrate' -d 'Skip integration of the Pods libraries in theXcode project(s)'
complete -f -c pod -n '__fish_pod_using_command install' -l 'no-repo-update' -d 'Skip running `pod repo update` before install'
complete -f -c pod -n '__fish_pod_using_command install' -l 'silent' -d 'Show nothing'
complete -f -c pod -n '__fish_pod_using_command install' -l 'verbose' -d 'Show more debugging information'
complete -f -c pod -n '__fish_pod_using_command install' -l 'no-ansi' -d 'Show output without ANSI codes'
complete -f -c pod -n '__fish_pod_using_command install' -l 'help' -d 'Show help banner of specified command'


# ipc
complete -f -c pod -n '__fish_pod_needs_command' -a ipc -d 'Inter-process communication'
complete -f -c pod -n '__fish_pod_using_command ipc' -a list -d 'Lists the specifications known to CocoaPods'


complete -f -c pod -n '__fish_pod_using_command ipc' -a podfile -d 'Converts a Podfile to YAML'
complete -f -c pod -n '__fish_pod_using_command ipc' -a repl -d 'The repl listens to commands on standard input'
complete -f -c pod -n '__fish_pod_using_command ipc' -a spec -d 'Converts a podspec to JSON'
complete -f -c pod -n '__fish_pod_using_command ipc' -a pdate-date-search-index -d 'Updates the search index'
complete -f -c pod -n '__fish_pod_using_command ipc' -l 'silent' -d 'Show nothing'
complete -f -c pod -n '__fish_pod_using_command ipc' -l 'verbose' -d 'Show more debugging information'
complete -f -c pod -n '__fish_pod_using_command ipc' -l 'no-ansi' -d 'Show output without ANSI codes'
complete -f -c pod -n '__fish_pod_using_command ipc' -l 'help' -d 'Show help banner of specified command'


# lib
complete -f -c pod -n '__fish_pod_needs_command' -a lib -d 'Develop pods'
complete -f -c pod -n '__fish_pod_using_command lib' -a create -d 'Creates a new Pod'
complete -f -c pod -n '__fish_pod_using_command lib' -a lint -d 'Validates a Pod'
complete -f -c pod -n '__fish_pod_using_command lib' -l 'silent' -d 'Show nothing'
complete -f -c pod -n '__fish_pod_using_command lib' -l 'verbose' -d 'Show more debugging information'
complete -f -c pod -n '__fish_pod_using_command lib' -l 'no-ansi' -d 'Show output without ANSI codes'
complete -f -c pod -n '__fish_pod_using_command lib' -l 'help' -d 'Show help banner of specified command'


# list
complete -f -c pod -n '__fish_pod_needs_command' -a list -d 'List pods'
complete -f -c pod -n '__fish_pod_using_command list' -l 'update' -d 'Run `pod repo update` before listing'
complete -f -c pod -n '__fish_pod_using_command list' -l 'stats' -d 'Show additional stats (like GitHub watchers and forks)'
complete -f -c pod -n '__fish_pod_using_command list' -l 'silent' -d 'Show nothing'
complete -f -c pod -n '__fish_pod_using_command list' -l 'verbose' -d 'Show more debugging information'
complete -f -c pod -n '__fish_pod_using_command list' -l 'no-ansi' -d 'Show output without ANSI codes'
complete -f -c pod -n '__fish_pod_using_command list' -l 'help' -d 'Show help banner of specified command'


# outdated
complete -f -c pod -n '__fish_pod_needs_command' -a outdated -d 'Show outdated project dependencies'
complete -f -c pod -n '__fish_pod_using_command outdated' -l 'project-directory' -d 'The path to the root of the project directory'
complete -f -c pod -n '__fish_pod_using_command outdated' -l 'no-integrate' -d 'Skip integration of the Pods libraries in theXcode project(s)'
complete -f -c pod -n '__fish_pod_using_command outdated' -l 'no-repo-update' -d 'Skip running `pod repo update` before install'
complete -f -c pod -n '__fish_pod_using_command outdated' -l 'no-clean' -d 'Leave SCM dirs like `.git` and `.svn` intact after downloading'
complete -f -c pod -n '__fish_pod_using_command outdated' -l 'silent' -d 'Show nothing'
complete -f -c pod -n '__fish_pod_using_command outdated' -l 'verbose' -d 'Show more debugging information'
complete -f -c pod -n '__fish_pod_using_command outdated' -l 'no-ansi' -d 'Show output without ANSI codes'
complete -f -c pod -n '__fish_pod_using_command outdated' -l 'help' -d 'Show help banner of specified command'


# plugins
complete -f -c pod -n '__fish_pod_needs_command' -a plugins -d 'Show available CocoaPods plugins'
complete -f -c pod -n '__fish_pod_using_command plugins' -a create -d 'Creates a new plugin'
complete -f -c pod -n '__fish_pod_using_command plugins' -a installed -d 'List plugins installed on your machine'
complete -f -c pod -n '__fish_pod_using_command plugins' -a list -d 'List all known plugins'
complete -f -c pod -n '__fish_pod_using_command plugins' -a publish -d 'Request to add the plugin to the official plugins list'
complete -f -c pod -n '__fish_pod_using_command plugins' -a search -d 'Search for known plugins'
complete -f -c pod -n '__fish_pod_using_command plugins' -l 'silent' -d 'Show nothing'
complete -f -c pod -n '__fish_pod_using_command plugins' -l 'verbose' -d 'Show more debugging information'
complete -f -c pod -n '__fish_pod_using_command plugins' -l 'no-ansi' -d 'Show output without ANSI codes'
complete -f -c pod -n '__fish_pod_using_command plugins' -l 'help' -d 'Show help banner of specified command'


# repo
complete -f -c pod -n '__fish_pod_needs_command' -a repo -d 'Manage spec-repositories'
complete -f -c pod -n '__fish_pod_using_command repo' -a add -d 'Add a spec repo'
complete -f -c pod -n '__fish_pod_using_command repo' -a lint -d 'Validates all specs in a repo'
complete -f -c pod -n '__fish_pod_using_command repo' -a list -d 'List repos'
complete -f -c pod -n '__fish_pod_using_command repo' -a push -d 'Push new specifications to a spec-repo'
complete -f -c pod -n '__fish_pod_using_command repo' -a remove -d 'Remove a spec repo'
complete -f -c pod -n '__fish_pod_using_command repo' -a update -d 'Update a spec repo'
complete -f -c pod -n '__fish_pod_using_command repo' -l 'silent' -d 'Show nothing'
complete -f -c pod -n '__fish_pod_using_command repo' -l 'verbose' -d 'Show more debugging information'
complete -f -c pod -n '__fish_pod_using_command repo' -l 'no-ansi' -d 'Show output without ANSI codes'
complete -f -c pod -n '__fish_pod_using_command repo' -l 'help' -d 'Show help banner of specified command'


# search
complete -f -c pod -n '__fish_pod_needs_command' -a search -d 'Searches for pods'
complete -f -c pod -n '__fish_pod_using_command search' -l 'regex' -d 'Interpret the `QUERY` as a regular expression'
complete -f -c pod -n '__fish_pod_using_command search' -l 'full' -d 'Search by name, summary, and description'
complete -f -c pod -n '__fish_pod_using_command search' -l 'stats' -d 'Show additional stats (like GitHub watchers and forks)'
complete -f -c pod -n '__fish_pod_using_command search' -l 'ios' -d 'Restricts the search to Pods supported on iOS'
complete -f -c pod -n '__fish_pod_using_command search' -l 'osx' -d 'Restricts the search to Pods supported on OS X'
complete -f -c pod -n '__fish_pod_using_command search' -l 'web' -d 'Searches on cocoapods.org'
complete -f -c pod -n '__fish_pod_using_command search' -l 'verbose' -d 'Show more debugging information'
complete -f -c pod -n '__fish_pod_using_command search' -l 'no-ansi' -d 'Show output without ANSI codes'
complete -f -c pod -n '__fish_pod_using_command search' -l 'help' -d 'Show help banner of specified command'


# setup
complete -f -c pod -n '__fish_pod_needs_command' -a setup -d 'Setup the CocoaPods environment'
complete -f -c pod -n '__fish_pod_using_command setup' -l 'no-shallow' -d 'Clone full history so push will work'
complete -f -c pod -n '__fish_pod_using_command setup' -l 'silent' -d 'Show nothing'
complete -f -c pod -n '__fish_pod_using_command setup' -l 'verbose' -d 'Show more debugging information'
complete -f -c pod -n '__fish_pod_using_command setup' -l 'no-ansi' -d 'Show output without ANSI codes'
complete -f -c pod -n '__fish_pod_using_command setup' -l 'help' -d 'Show help banner of specified command'


# spec
complete -f -c pod -n '__fish_pod_needs_command' -a spec -d 'Manage pod specs'
complete -f -c pod -n '__fish_pod_using_command spec' -a cat -d 'Prints a spec file'
complete -f -c pod -n '__fish_pod_using_command spec' -a create -d 'Create spec file stub.'
complete -f -c pod -n '__fish_pod_using_command spec' -a edit -d 'Edit a spec file'
complete -f -c pod -n '__fish_pod_using_command spec' -a lint -d 'Validates a spec file'
complete -f -c pod -n '__fish_pod_using_command spec' -a which -d 'Prints the path of the given spec'
complete -f -c pod -n '__fish_pod_using_command spec' -l 'silent' -d 'Show nothing'
complete -f -c pod -n '__fish_pod_using_command spec' -l 'verbose' -d 'Show more debugging information'
complete -f -c pod -n '__fish_pod_using_command spec' -l 'no-ansi' -d 'Show output without ANSI codes'
complete -f -c pod -n '__fish_pod_using_command spec' -l 'help' -d 'Show help banner of specified command'


# trunk
complete -f -c pod -n '__fish_pod_needs_command' -a trunk -d 'Interact with the CocoaPods API (e.g. publishing new specs)'
complete -f -c pod -n '__fish_pod_using_command trunk' -a add-owner -d 'Add an owner to a pod'
complete -f -c pod -n '__fish_pod_using_command trunk' -a info -d 'Returns information about a Pod'
complete -f -c pod -n '__fish_pod_using_command trunk' -a me -d 'Display information about your sessions'
complete -f -c pod -n '__fish_pod_using_command trunk' -a push -d 'Publish a podspec'
complete -f -c pod -n '__fish_pod_using_command trunk' -a register -d 'Manage sessions'
complete -f -c pod -n '__fish_pod_using_command trunk' -a remove-owner -d 'Remove an owner from a pod'
complete -f -c pod -n '__fish_pod_using_command trunk' -l 'silent' -d 'Show nothing'
complete -f -c pod -n '__fish_pod_using_command trunk' -l 'verbose' -d 'Show more debugging information'
complete -f -c pod -n '__fish_pod_using_command trunk' -l 'no-ansi' -d 'Show output without ANSI codes'
complete -f -c pod -n '__fish_pod_using_command trunk' -l 'help' -d 'Show help banner of specified command'


# try
complete -f -c pod -n '__fish_pod_needs_command' -a try -d 'Try a Pod!'
complete -f -c pod -n '__fish_pod_using_command try' -l 'no-repo-update' -d 'Skip running `pod repo update` before install'
complete -f -c pod -n '__fish_pod_using_command try' -l 'silent' -d 'Show nothing'
complete -f -c pod -n '__fish_pod_using_command try' -l 'verbose' -d 'Show more debugging information'
complete -f -c pod -n '__fish_pod_using_command try' -l 'no-ansi' -d 'Show output without ANSI codes'
complete -f -c pod -n '__fish_pod_using_command try' -l 'help' -d 'Show help banner of specified command'


# update
complete -f -c pod -n '__fish_pod_needs_command' -a update -d 'Update outdated project dependencies and create new Podfile.lock'
complete -f -c pod -n '__fish_pod_using_command update' -l 'project-directory' -d 'The path to the root of the project directory'
complete -f -c pod -n '__fish_pod_using_command update' -l 'no-integrate' -d 'Skip integration of the Pods libraries in theXcode project(s)'
complete -f -c pod -n '__fish_pod_using_command update' -l 'no-repo-update' -d 'Skip running `pod repo update` before install'
complete -f -c pod -n '__fish_pod_using_command update' -l 'no-clean' -d 'Leave SCM dirs like `.git` and `.svn` intact after downloading'
complete -f -c pod -n '__fish_pod_using_command update' -l 'silent' -d 'Show nothing'
complete -f -c pod -n '__fish_pod_using_command update' -l 'verbose' -d 'Show more debugging information'
complete -f -c pod -n '__fish_pod_using_command update' -l 'no-ansi' -d 'Show output without ANSI codes'
complete -f -c pod -n '__fish_pod_using_command update' -l 'help' -d 'Show help banner of specified command'