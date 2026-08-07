require 'webrick'
port = (ENV['PORT'] || '3000').to_i
s = WEBrick::HTTPServer.new(:Port => port, :BindAddress => '0.0.0.0')
s.mount_proc '/' do |req, res|
  res['Content-Type'] = 'text/html'
  res.body = '<!doctype html><title>DCMS fixture</title><h1>dcms-stack-ruby OK</h1>'
end
trap('INT') { s.shutdown }
s.start
