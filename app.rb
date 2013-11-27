require "sinatra"
#require "sinatra/activerecord"

#set :database, "sqlite3:///crm.db"

#class Patron < ActiveRecord::Base
#end

helpers do
	def xisbn_fetch(xisbn)
	end
end


get '/' do
	haml :"xisbn/index"
end

post '/render' do
	@xisbn = params[:xisbn]
	haml :"xisbn/render"
end
