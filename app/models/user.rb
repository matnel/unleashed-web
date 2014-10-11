class User < ActiveRecord::Base

  after_save :link_to_avatar

  has_one :avatar
  has_many :steps

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth['provider']
      user.uid = auth['uid']
      if auth['info']
         user.name = auth['info']['name'] || ""
      end
    end
  end

  private

  def link_to_avatar
    a = Avatar.new
    a.user = self
    a.save!
  end

end
