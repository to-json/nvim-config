if ! command -v brew &> /dev/null
then
	echo "homebrew is not installed, get it and try again"
	exit
fi

brew install tree-sitter rg fd
