class User < ApplicationRecord
    has_many :collabo_requests, :class_name => "Collabo", :foreign_key => "requestor_user_id"
    has_many :collabo_responses, :class_name => "Collabo", :foreign_key => "responder_user_id"
end
