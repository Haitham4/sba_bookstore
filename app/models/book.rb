require 'elasticsearch/model'

class Book < ActiveRecord::Base
  searchkick autocomplete: ['title']

  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks

end