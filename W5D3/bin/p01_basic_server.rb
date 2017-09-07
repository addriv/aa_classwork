require 'rack'

Rack::Server.start(
  app: app =
    Proc.new do |env|
      req = Rack::Request.new(env)
      res = Rack::Response.new
      res['Content-Type'] = 'text/html'
      # res.write("Hello world!")
      res.write(req.path)
      res.finish
    end,
  Port: 3000
)