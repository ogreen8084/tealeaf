def execute(&block)
	block  #should print Hello from inside teh execute method
end

execute {puts "Hello from inside the execute method!" }
