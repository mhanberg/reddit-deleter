# Reddit Deleter

A simple ruby script to delete all of your Reddit posts and comments.

### Installation

* Download script
* Install ruby (tested on 2.4.0, probably works on earlier versions)
* Install Redd (https://github.com/avinashbot/redd)
  * If Bundler is installed, run `bundle install`
  * else, `gem install redd`

### Usage

Log in to Reddit and get an API key.

Edit the script to include the API key, your client id, your username, and password

Run the script via `ruby deleter.rb`

---

Reddit limits to 60 requests/minute, so it might take a while if you are a frequent poster.