require 'rails_helper'

describe Project do
  it { should have_many :comments }
  it { should belong_to :user }
end
