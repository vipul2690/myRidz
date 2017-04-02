class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :sales_head

  def sales_head
    sales_head = object.sales_head.try(:email)
  end
end
