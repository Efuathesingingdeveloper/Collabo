class Collabo < ApplicationRecord
    belongs_to :requestor_user, :class_name =>"User"
    belongs_to :responder_user, :class_name =>"User", :optional => true

end

# p = Collabo.new
# p.responder_user_id =1
# p.requestor_user_id =2
# p.save
