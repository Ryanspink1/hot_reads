require 'rails_helper'

RSpec.describe Link, type: :model do
  context "validations" do
      it {should validate_uniqueness_of(:url)}
  end
end
