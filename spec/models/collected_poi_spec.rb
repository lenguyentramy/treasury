require 'spec_helper'

describe CollectedPoi do
  describe 'associations' do
     it { should belong_to(:poi) }
     it { should belong_to(:user)}
  end
end
