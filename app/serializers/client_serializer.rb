class ClientSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :total_membership_amount

  def total_membership_amount
    charges = self.object.memberships.map { |membership| membership.charge }
    charges.sum
  end

end
