require 'elasticsearch/model'

class Book < ActiveRecord::Base
  searchkick

  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks

end


@books = Book.search('Test').records