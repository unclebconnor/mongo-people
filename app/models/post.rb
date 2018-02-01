class Post
  include Mongoid::Document

  field :title, type: String
  field :body, type: String
  field :author, type: String
  field :created_at, type: Time
  field :updated_at, type: Time

  validates_presence_of :title
  validates_uniqueness_of :title
  validates_presence_of :author
  validates_presence_of :body

  belongs_to :user
end
