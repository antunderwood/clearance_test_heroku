# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_clearance-test_session',
  :secret      => '0a774a61f837f1c224e4f7c48c7dc80d976218fc3194463ac8cefcdda2010f67b781ac2e2779c158af64a7c0750867984918e4ec6e224711b1d8363cb06af67a'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
