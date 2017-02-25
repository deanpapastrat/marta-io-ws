
This README will guide you through the process of setting up a development environment.

If you are a Windows user, follow the instructions here (http://linux.about.com/od/LinuxNewbieDesktopGuide/ss/The-Ultimate-Windows-81-And-Ubuntu-Dual-Boot-Guide.htm)
to set up a dual-boot for Ubuntu and then follow the remaining instructions for linux


# 1. Install Dependencies

#### Install homebrew (Mac-only)
```sh
ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"
```

Detailed instructions can be found here: <http://mxcl.github.com/homebrew/>

#### Install XCode (Mac-only)
Install XCode using the Mac App Store.

Be sure to run `xcode-select --install` in terminal after xcode installs, otherwise some gems won't be able to be installed!

#### Install Git
```sh
(Mac)   brew install git
(Linux) sudo apt-get install git
```

#### Install Redis

```
(Mac)   brew install redis
(Linux) sudo apt-get install redis-server
```

#### Install RVM
Mac:
```sh
curl -L https://get.rvm.io | bash
```
Linux:
```sh
gpg --keyserver hkp://keys.gnupg.net --recv-keys409B6B1796C275462A1703113804BB82D39DC0E3
sudo apt-get install curl
curl -L https://get.rvm.io | bash -s stable
rvm requirements
```

Make sure to close all terminal windows after installing, or your terminal will not recognize RVM commands.

Detailed instructions can be found here: <https://rvm.io/rvm/install>

#### Setup GitHub
If you haven't already, setup your GitHub account and upload public keys. GitHub has a [Mac Setup Guide](http://help.github.com/mac-set-up-git/) to guide you through this.

#### GitHub Privileges
Once you have a GitHub account setup, someone needs to give you access to the project. You can verify you have access by navigating to the [project page](https://github.com/deanpapastrat/marta-io-ws).

#### Clone project
Clone (as SSH NOT HTTPS) into your preferred project directory (e.g. ~/projects)

```sh
git clone git@github.com:deanpapastrat/marta-io-ws.git
```

#### Install project's Ruby version
Change to the sideqik subdirectory in the project you just cloned.
```sh
cd marta-io-ws
```

Ruby may take a long time to install because of dependencies:
```sh
rvm use `cat .ruby-version | sed -e 's/ruby-//'` --install --default
```

#### Install bundler and needed gems

```sh
gem install bundler
bundle install
```

#### Setup project database
Run rake task to create and seed the database:

```sh
rake db:setup
```

In the future, if you want to reset the database to its defaults:

```sh
rake db:drop db:setup
```

#### Start Sideqik

To run this you need to ensure the following are running:

1. Redis (for instructions on starting type `brew info redis`)
2. Sideqik Application (run `rails s`)

#### Test It!
Navigate to <http://localhost:3000> to see if the app is working.

Great job, you did it!
