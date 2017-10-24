require 'rubygems'
require 'sinatra'
require 'slim'

get '/' do
  slim :index
end


post '/login' do
	if 'admin'==params[:user] && 'admin'==params[:pass]
		redirect '/home'
	else
		slim :index
	end
end

post '/message' do
	subject = params[:subject]
	cours = params[:cours]
	redirect "/hola/#{subject}/#{cours}"
end

get '/home' do
	slim :home
end

get '/hola/:subject/:cours' do
	@subject = params[:subject]
	@cours = params[:cours]
	slim :hola
end



