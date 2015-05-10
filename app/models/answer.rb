class Answer
  include Mongoid::Document
  include Mongoid::Timestamps
  field :content, type: String
  field :votes, type: Integer
  
  embedded_in :problem

end
