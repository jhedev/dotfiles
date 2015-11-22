DOT_DIR=${PWD}

all: zsh_files bash_files git_files vim_files other_files

git_files: $(addsuffix .link,gitconfig gitignore_global)
bash_files: $(addsuffix .link,bashrc bash_aliases bash_functions profile)
zsh_files: $(addsuffix .link,zshrc zshenv zsh_functions zsh_functions_mac)
vim_files: $(addsuffix .link,vimrc vim)
other_files: $(addsuffix .link,spacemacs)

%.link: .%
	if [ -e "${HOME}/$<" ] ; \
	then \
		if [ -L "${HOME}/$<" ] ; \
		then \
			ln -sf ${DOT_DIR}/$< ${HOME}/$< ; \
		else \
			mv ${HOME}/$< ${HOME}/$<.bak ; \
			ln -s ${DOT_DIR}/$< ${HOME}/$< ; \
		fi \
	else \
		ln -s ${DOT_DIR}/$< ${HOME}/$< ; \
	fi
