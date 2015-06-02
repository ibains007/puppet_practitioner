require 'spec_helper'
describe 'ordering' do

  context 'with defaults for all parameters' do
    it { should contain_class('ordering') }
  end
end
