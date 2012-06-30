Installation: Clone the repository in your home directory

    cd ~ && git clone git://github.com/tispratik/dotfiles.git

Backup your existing bashrc and symlink to the one in the repository

    mv ~/.bashrc ~/.bashrc_bak && ln -s ~/dotfiles/bashrc ~/.bashrc

Where possible, Vim plugins are installed as git submodules. Check these out by running the commands:

    cd dotfiles
    git submodule init
    git submodule update

### Adding Plugin Bundles for Vim ###

Plugins that are published on github can be installed as submodules. For example, to install the [JavaScript bundle][jsbun], follow these steps:

    cd ~/dotfiles
    git submodule add http://github.com/pangloss/vim-javascript.git vim/bundle/vim-javascript

This will update the `.gitmodules` file by appending something like:

    [submodule "vim/bundle/vim-javascript"]
        path = vim/bundle/vim-javascript
        url = http://github.com/pangloss/vim-javascript.git

As well as checkout out the git repo into the
`vim/bundle/vim-javascript` directory. You can then commit these changes as follows:

    git add .
    git ci -m "Added the javascript bundle"
