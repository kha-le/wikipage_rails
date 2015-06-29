require 'rails_helper'

describe Business do
  it { should validate_presence_of :name }
  it { should validate_presence_of :address }
  it { should validate_presence_of :phone }
  it { should validate_presence_of :website }
  it { should validate_presence_of :hours }
end
