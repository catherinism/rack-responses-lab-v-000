class Application
 
  def call(env)
    resp = Rack::Response.new
 
    time_1 = Kernel.rand(1..12)
    time_2 = Kernel.rand(12..24)
 
    if time_1
      resp.write "Good morning"
    else
      resp.write "Good afternoon"
    end
 
    resp.finish
  end
 
end