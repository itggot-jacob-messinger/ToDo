class App < Sinatra::Base
  enable :sessions

  	get '/' do
        @groups = Group.all
        erb :index
    end

	get '/group/:name' do |name|
	    @group = group.first(name: name)
	    unless @group
	    	status 418
	    end
    end
end