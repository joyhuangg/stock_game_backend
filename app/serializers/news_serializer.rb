class NewsSerializer < ActiveModel::Serializer
  attributes :id, :datetime, :headline, :url, :source, :summary, :image
  belongs_to :company
end
