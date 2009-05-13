# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_perchee_session',
  :secret      => 'e9c5d905ef864a39b9fdc4efc26020fbf80ad88ecf731a57520f216312362196e265112b041203de5e3ad655c2c2a25a416e9108ca4eaee671f2e1db285995f1'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
