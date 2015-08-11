class Link
  include DataMapper::Resource

  property :id,     Serial # Serial means that it will be auto-incremented for every record
  property :title,  String
  property :url,    String
  has n, :tags, through: Resource

end
