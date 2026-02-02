require 'rails_helper'
RSpec.describe Book, type: :model do
  subject { Book.new(title: "T", author: "A", price: 9.99, date: "2024-01-01")}
  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end
  it "is not valid without a date" do
    subject.date=nil
    expect(subject).to_not be_valid
  end
end