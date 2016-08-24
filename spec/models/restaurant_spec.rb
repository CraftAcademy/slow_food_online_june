require 'rails_helper'

RSpec.describe Restaurant, type: :model do

  describe 'Factory' do
    it 'should have valid Factory' do
      expect(FactoryGirl.create(:restaurant)).to be_valid
    end
  end

  describe 'DB table' do
    it { is_expected.to have_db_column :id }
    it { is_expected.to have_db_column :name }
  end

  describe 'Validations' do
    it { is_expected. to validate_presence_of :name }
    it { is_expected. to validate_presence_of :address }
    it { is_expected. to validate_presence_of :zip_code }
    it { is_expected. to validate_presence_of :delivery_radius }
    it { is_expected. to validate_presence_of :phone_number }
    it { is_expected. to validate_presence_of :email_address }
    it { is_expected. to validate_presence_of :description }
    it { is_expected. to validate_presence_of :cuisine }
  end

  describe 'Relations' do
    it {is_expected.to belong_to :user}
  end
end
