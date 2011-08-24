require 'spec_helper'

describe Collectible do
  describe 'associations' do
     it { should belong_to(:poi) }
     it { should belong_to(:user)}
  end
end
