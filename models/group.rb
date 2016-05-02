class Group

include DataMapper::Resource 

	property :id, Serial
	property :name, String, required: true, unique: true

has n, :users
end