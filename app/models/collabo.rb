class Collabo < ApplicationRecord
    belongs_to :requestor_user, :class_name =>"User"
    belongs_to :responder_user, :class_name =>"User", :optional => true
    scope :by_status, ->(status) do
        case status
        when :open
            where(:responder_user => nil)
        when :accepted
            where.not(:responder_user => nil)
        end
    end

    def accepted_by(user)
       self.update(:responder_user => user)
    end

    def accepted?
        true if responder_user
    end
    
end

# p = Collabo.new
# p.responder_user_id =1
# p.requestor_user_id =2
# p.save
