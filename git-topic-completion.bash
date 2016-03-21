_git_topic()
{
	local subcommands="init branches sanity rebase push delete"
	local subcommand="$(__git_find_on_cmdline "$subcommands")"

	if [ -z "$subcommand" ]; then
		__gitcomp "$subcommands"
		return
	fi

	case "$subcommand" in
		init)
			__gitcomp_nl "$(__git_refs)"
			;;

		branches)
			;;

		sanity)
			;;

		rebase)
			__gitcomp_nl "$(__git_refs)"
			;;

		push)
			__gitcomp_nl "$(__git_remotes)"
			;;

		delete)
			__gitcomp_nl "$(__git_remotes)"
			;;
	esac
}
