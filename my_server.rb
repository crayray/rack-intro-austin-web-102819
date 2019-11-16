#How most Rack applications are built: 
# the server setup code lives in the ``rackup`` file and 
# our application logic lives in a class that's referenced by 
# the run command in the rackup file.
class MyServer 
    # Create a #call method that Rack can use to configure the HTTP server
    def call(env) # What is the ENV we pass in here?  
        # Return 200 status, HTML content, and whatever is done in the pretty_response method:
      return [ 200, {'Content-Type' => 'text/html'}, pretty_response ]

    end
   
    def pretty_response # This is the actual thing we want to display on the internet
      (Time.now.to_i % 2).zero? ?  ["<em>Hello, my name is</em>"] : ["<strong>Hello, my name is</strong>"]
    end
  end