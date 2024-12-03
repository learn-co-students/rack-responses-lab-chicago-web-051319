class Application

    def call(env)
      resp = Rack::Response.new
      
      now = Time.now
      time = now.strftime("%H:%M")
  
      if time[0..1].to_i < 12
        resp.write "Good Morning!"
      else
        resp.write "Good Afternoon!"
      end
  
      resp.finish
    end
  
  end