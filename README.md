Objective
=========

Learn to use chef. I used the tutorial [here](http://nathenharvey.com/blog/2012/12/06/learning-chef-part-1/). Play list of all videos [here](http://www.youtube.com/watch?v=l7-nAHdplD4&list=PLKK5zTDXqzFM53J6-rikDrqbbY0Pu-9SP).

Pre-Requisites
==============

* Registered accounts at opscode and github
* vagrant installed. Refer to [documentation](http://vagrantup.com)
* Install rbenv - `brew install rbenv ruby-build`
* Add rbenv to path - `echo 'eval "$(rbenv init -)"' >> ~/.bash_profile && source ~/.bash_profile`
* Install ruby and chef

		rbenv rehash
		rbenv install 1.9.3-p385
		rbenv shell 1.9.3-p385
		rbenv global 1.9.3-p385
		gem install chef
		rbenv rehash

Notes
=====

These are some notes I made based on the videos.

* Configure Knife
	* The way it does that is via 3 files `knife.rb`, `app-validator.pem` and `username.pem`.
	* knife looks for these 3 files in these locations - `.chef/` in your project directory or in your home or `/etc/chef`
* Update Vagrantfile to include chef_client, locations to keys and node name
* vagrant up - you will see the node get registered on opscode.com
* Now you need to get cookbooks
	* Can use knife to download - `knife cookbook site download apt`
	* Extract and move to cookbooks - `tar xzvf apt*.tar.gz -C cookbooks && rm apt*.tar.gz`
	* Upload cookbook - `knife cookbook upload apt`
	* Upload multiple cookbooks - `knife cookbook upload -a`
* Go to opscode.com and select the recipes you want to the runlist
	* the video tells you to drag omnibus-updater but the new cookbook does now work with chef 10.x. I added `config.omnibus.chef_version = :latest` to my Vagrantfile to get the latest chef
* vagrant provision
* Can also use knife to add a recipe to the run list - `knife node edit ubuntu`
