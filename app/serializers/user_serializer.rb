class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :sales_head

  def sales_head
    sales_head = User.find(object.sales_head_id)
    return sales_head.email
  end
end
