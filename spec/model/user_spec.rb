require 'rails_helper'
require 'spec_helper'

RSpec.describe User, type: :model do
    describe 'DB table' do
        it {is_expected.to have_db_column :name}
        it {is_expected.to have_db_column :email}
        it {is_expected.to have_db_column :password}
        it {is_expected.to have_db_column :password_confirmation}
    end

    describe "Validations" do
        it {is_expected.to validate_presence_of :name}
        it {is_expected.to validate_presence_of :email}
        it {is_expected.to validate_presence_of :password}        
        it {is_expected.to validate_presence_of :password_confirmation}
    end

    describe "Factory" do
        it 'should have valid Factory' do
            expect(FactoryBot.create(:user)).to be_valid
        end
    end
end