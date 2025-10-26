class User < ApplicationRecord
  has_one :credential, class_name: "UserCredential", dependent: :destroy
end
