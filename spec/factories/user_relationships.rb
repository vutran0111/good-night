# == Schema Information
#
# Table name: user_relationships
#
#  id          :bigint           not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  followee_id :bigint
#  follower_id :bigint
#
# Indexes
#
#  index_user_relationships_on_followee_id  (followee_id)
#  index_user_relationships_on_follower_id  (follower_id)
#
# Foreign Keys
#
#  fk_rails_...  (followee_id => users.id)
#  fk_rails_...  (follower_id => users.id)
#
FactoryBot.define do
  factory :user_relationship do
    follower { FactoryBot.create(:user) }
    followee { FactoryBot.create(:user) }
  end
end
