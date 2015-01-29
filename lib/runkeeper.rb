require 'httparty'
require 'json'

class Runkeeper
	require 'runkeeper/version'

	autoload 'Connection', 'runkeeper/connection'
	autoload 'User', 'runkeeper/user'
	autoload 'Activity', 'runkeeper/activity'
	autoload 'Sleep', 'runkeeper/sleep'
	autoload 'Configuration', 'runkeeper/configuration'

	private :initialize

	def self.new(token)
		Runkeeper::User.new(token)
	end

	def self.configure
		yield Configuration
	end

end
