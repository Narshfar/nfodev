module Berkshelf
	module Webserver
		module Chef
			class << self
				# Returns the version of the loaded cookbook
				#
				# @param [Chef::RunContext] context
				#
				# @return [String]
				def cookbook_version(context)
					context.cookbook_collection["web-server"].version
				end
			end
		end
	end

end