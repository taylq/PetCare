class Conversation < ApplicationRecord
  has_many :messages, dependent: :destroy
  belongs_to :sender, foreign_key: :sender_id, class_name: User.name
  belongs_to :recipient, foreign_key: :recipient_id, class_name: User.name

  validates :sender_id, uniqueness: { scope: :recipient_id }

  scope :between, -> (sender_id, recipient_id) do
    where(sender_id: sender_id, recipient_id: recipient_id).or(
      where(sender_id: recipient_id, recipient_id: sender_id)
    )
  end

  scope :newest_messege, -> do
    sql = "(select c.* from( "\
      "select m.conversation_id as c_id, max(m.created_at) c_cre "\
      "from PetCare_development.messages m "\
      "group by m.conversation_id) as tb "\
      "inner join PetCare_development.conversations as c on c.id = tb.c_id "\
      "where c.sender_id = 2 or c.recipient_id = 2 "\
      "order by tb.c_cre desc) as conversations"
    query = connection.unprepared_statement{sql}
    from(query)
  end

  def self.get(sender_id, recipient_id)
    conversation = between(sender_id, recipient_id).first
    return conversation if conversation.present?

    create(sender_id: sender_id, recipient_id: recipient_id)
  end

  def opposed_user(user)
    user == recipient ? sender : recipient
  end
end
