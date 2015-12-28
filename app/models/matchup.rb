# == Schema Information
#
# Table name: matchups
#
#  id         :integer          not null, primary key
#  result     :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Matchup < ActiveRecord::Base
  has_many :players
  belongs_to :user
end
