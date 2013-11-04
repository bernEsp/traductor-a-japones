 $LOAD_PATH.unshift("#{File.dirname(__FILE__)}/lib")
  Dir.glob("#{File.dirname(__FILE__)}/lib/*.rb") { |lib| 
    require File.basename(lib, '.*') 
  }
require 'sinatra/base'
class Translator < Sinatra::Base
  get "/" do
    haml "%form{action: '/', method: 'post'}
            %label Traduce tu nombre:
            %input{type: 'text', name: 'name', id: 'spanish_name'}
            %input{type: 'submit'}"
  end

  get "/translate/:name" do |name|
    @language = Japanese.new
    @japanese = @language.whats_my_name name
    haml "%div.title 
            Hola #{name} tu nombre en japones es: \ 
            %h2 #{@japanese} 
            segun SANDRA CHAPOY" 
  end

  post "/" do 
    name = params[:name]
    @language = Japanese.new
    @japanese = @language.whats_my_name name
    haml "%div.title 
            Hola #{name} tu nombre en japones es: \ 
            %h2 #{@japanese} 
            segun SANDRA CHAPOY"
  end
end

