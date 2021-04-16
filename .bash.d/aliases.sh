ggrep()
{
    git ls-files -co --exclude-standard -z . | xargs -0 grep "$@"
}
