module MCollective
	module Agent
		class Command<RPC::Agent
			action "command" do
				cmd = request[:cmd]
				reply[:cmd]
				reply[:status] = run(cmd.to_s, :stdout => :out, :stderr => :err, :chomp => true)
			end
		end
	end
end