# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
VDS::Application.config.secret_key_base = 'abc6b726c5dac142c05bdf792f89b04e4238d15db32e8927683eb2ef77291a2bf6ac1c3a998e6f160c464cbef07355ab5adf3cbd099595e271824dfcebfa8da7'
