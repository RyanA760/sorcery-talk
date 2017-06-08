# README

# Stripped down authentication library to allow for customized authentication flow with a few goals in mind:
	- Less is more - less than 20 public methods to remember for the entire feature-set make the lib easy to 'get'.

	- No built-in or generated code - use the library's methods inside your own MVC structures, and don't fight to fix someone else's.

	- Magic yes, Voodoo no - the lib should be easy to hack for most developers.

	- Configuration over Confusion - Centralized (1 file), Simple & short configuration as possible, not drowning in syntactic sugar.

	- Keep MVC cleanly separated - DB is for models, sessions are for controllers. Models stay unaware of sessions.

# Some of the available methods or helpers:

	- require_login # This is a before action

	- login(email, password, remember_me = false)

	- auto_login(user) # Login without credentials

	- logout

	- logged_in? # Available in views

	- current_user # Available in views

	- redirect_back_or_to # Use when a user tries to access a page while logged out, is asked to login, and we want to return him back to the page he originally wanted

	- @user.external? # Users who signed up using Facebook, Twitter, etc.

	- @user.active_for_authentication? # Add this method to define behaviour that will prevent selected users from signing in

	- @user.valid_password?('secret') # Compares 'secret' with the actual user's password, returns true if they match
	
	- User.authenticates_with_sorcery!