require 'rubygems'
require 'sinatra'
require 'json'
set :port, 3123
set :environment, :production
Dir.chdir(File.dirname(__FILE__) + "/..")

post "/" do
  system %{rake handle_update REF=#{JSON.parse(params["payload"])["ref"].inspect}}
end
