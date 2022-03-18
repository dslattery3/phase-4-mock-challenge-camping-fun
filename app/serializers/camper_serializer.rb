class CamperSerializer < ActiveModel::Serializer
    attributes :id, :name, :age

    # has_many :activities

    # def activities
    #     object.activities
    # end
end
  