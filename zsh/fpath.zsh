#add each topic folder to fpath so that they can add functions and completion scripts
for topic_folder ($ZSHDOT/*) if [ -d $topic_folder ]; then  fpath=($topic_folder $fpath); fi;


# Run only if directory exists and brew is installed
if command -v brew &> /dev/null; then
    fpath+=("$(brew --prefix)/share/zsh/site-functions")
fi