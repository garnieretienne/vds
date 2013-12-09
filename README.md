# Description

This rails app is the new website for the French band 'Les Voleurs de Swing'. It's a crafted blog engine with primary goal to share media and information on upcomming events.

# Installation (development)

_I assume you already have a host with a working ruby stack (ruby >= 1.9, gem and bundler).
If not, you can take a look to [rbenv](https://github.com/sstephenson/rbenv#readme) and [ruby build](https://github.com/sstephenson/ruby-build#readme) to setup your development environment._

```
# Install gems
bundle install --path vendor/bundle --without production

# Run the database migration (using sqlite)
bundle exec rake db:migrate

# Start the app
bundle exec foreman start
```

# Configuring Dropbox (production)

In production, Paperclip is configured to use a Dropbox account to store its files.

You must [create a Dropbox app](https://www.dropbox.com/developers/apps) as an **Apps Folder**. 
Grab your **App Key** and **App Secret**, run the following command and follow instructions:

`rake dropbox:authorize APP_KEY=your_app_key APP_SECRET=your_app_secret ACCESS_TYPE=app_folder`

Once completed, you must set the following ENV variables to link the app with your Dropbox account:

```
DROPBOX_KEY=xxxxxxxx
DROPBOX_SECRET=xxxxxxxx
DROPBOX_TOKEN=xxxxxxxx
DROPBOX_TOKEN_SECRET=xxxxxxxx
DROPBOX_USER_ID=xxxxxxxx
```