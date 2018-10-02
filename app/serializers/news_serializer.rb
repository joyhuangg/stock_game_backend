class NewsSerializer < ActiveModel::Serializer
  attributes :id, :datetime, :headline, :url, :source, :summary, :image, :company_id
end
