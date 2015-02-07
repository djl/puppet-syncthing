require 'spec_helper'
describe 'syncthing' do

  context 'with defaults for all parameters' do
    it { should contain_class('syncthing') }
  end
end
