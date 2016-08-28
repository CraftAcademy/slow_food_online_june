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
    it { is_expected.to have_db_column :city }
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_presence_of :address }
    it { is_expected.to validate_presence_of :zip_code }
    it { is_expected.to validate_presence_of :city }
    it { is_expected.to validate_presence_of :delivery_radius }
    it { is_expected.to validate_presence_of :phone_number }
    it { is_expected.to validate_presence_of :email_address }
    it { is_expected.to validate_presence_of :description }
    it { is_expected.to validate_presence_of :cuisine }
  end

  describe 'Relations' do
    it { is_expected.to belong_to :user }
    it { is_expected.to have_many :menus }
  end

  describe 'Geocoder methods' do
    subject { FactoryGirl.create(:restaurant,
                                 address: 'Holtermansgatan 10',
                                 zip_code: '411 29',
                                 city: 'Gothenburg') }

    it { is_expected.to respond_to :full_address }
    it { is_expected.to respond_to :geocode }

    it '#full_address returns formatted string' do
      expected_string = 'Holtermansgatan 10, 411 29, Gothenburg'
      expect(subject.full_address).to eq expected_string
    end

    it 'sets latitude after save' do
      expect(subject.latitude).to eq 57.6914445
    end

    it 'sets longitude after save' do
      expect(subject.longitude).to eq 11.9731215
    end
  end
end
