class Runkeeper
	class Sleep
		attr_reader :connection, :url
		attr_accessor :total_sleep, :deep, :rem, :light, :awake, :times_woken, :uri, :post_to_facebook, :post_to_twitter, :timestamp

		def initialize(connection, attrs)
			@connection = connection
			@attrs = attrs
			attrs.each do |k,v|
				instance_variable_set("@#{k}", v)
			end
		end

		def uri
			@save_response && @save_response.headers['location']
		end

		def save
			@save_response = connection.save_sleep(to_hash)
		end

		def to_hash
			if rem
				{
					total_sleep: total_sleep,
					deep: deep,
					rem: rem,
					light: light,
					awake: awake,
					times_woken: times_woken,
					timestamp: timestamp.strftime("%a, %d %b %Y %H:%M:%S %Z")
				}
			else
				{
					total_sleep: total_sleep,
					deep: deep,
					light: light,
					awake: awake,
					times_woken: times_woken,
					timestamp: timestamp.strftime("%a, %d %b %Y %H:%M:%S %Z")
				}
			end
		end
	end
end
