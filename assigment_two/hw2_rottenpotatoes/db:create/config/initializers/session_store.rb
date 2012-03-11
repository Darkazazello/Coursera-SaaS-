# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_db:create_session',
  :secret      => '7443735abfe9dc0e0ee153e7fd692dc400d2034f8c63b3f94c543ca524d5c3434f42dd6c8254872552624bd3f60f64f316ca37c5fe6d3b2077cb34e1825f0e1d'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
