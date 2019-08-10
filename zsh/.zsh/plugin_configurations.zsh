# Adds Git-like prompt for the SVN plugin
prompt_svn() {
    local rev branch
    if in_svn; then
        rev=$(svn_get_rev_nr)
        branch=$(svn_get_branch_name)
        if [ `svn_dirty_choose_pwd 1 0` -eq 1 ]; then
            prompt_segment yellow black
            echo -n "$rev@$branch"
            echo -n "Â±"
        else
            prompt_segment white black
            echo -n "$rev@$branch"
        fi
    fi
}

# svn plugin extension for agnoster theme
build_prompt() {
  RETVAL=$?
  prompt_status
  prompt_virtualenv
  prompt_aws
  prompt_context
  prompt_dir
  prompt_git
  prompt_svn
  prompt_bzr
  prompt_hg
  prompt_end
}
