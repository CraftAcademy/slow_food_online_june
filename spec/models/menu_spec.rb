require 'rails_helper'

RSpec.describe Menu, type: :model do

  describe 'Factory' do
    it 'is valid' do
      expect(FactoryGirl.create(:menu)).to be_valid
    end
  end

  describe 'DB Table' do
    it { is_expected.to have_db_column :id }
    it { is_expected.to have_db_column :name }
  end

  describe 'Relationships' do
    xit { is_expected.to belong_to :restaurant }
  end


  describe 'Validations' do
    it { is_expected.to validate_presence_of :name}
  end
end
