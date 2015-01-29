class Runkeeper
	class Weight
		attr_reader :connection, :url
		attr_accessor :weight, :free_mass, :fat_percent, :mass_weight, :bmi, :post_to_facebook, :post_to_twitter, :timestamp

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
			@save_response = connection.save_weight(to_hash)
		end

		def to_hash
			{
				weight: weight,
				fat_percent: fat_percent,
				bmi: bmi,
				timestamp: timestamp.strftime("%a, %d %b %Y %H:%M:%S %Z")
			}
		end
	end
end
