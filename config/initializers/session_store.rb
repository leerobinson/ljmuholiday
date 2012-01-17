# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_ljmuholiday_session',
  :secret      => '96d23b34a94907a35d3e3246b44ddbe6da077fa21ac413843a06c646aa6e865a1d82865e507e491e3982cbac982209a454e0be543732a2d9949dd089e935d97b'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
