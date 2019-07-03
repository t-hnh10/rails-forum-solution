require 'rails_helper'

RSpec.describe Question, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  it "creates new questions with correct fields" do
    Question.create(email:'tester@testing.com',body:'This is test question')
    expect(Question.first.email).to eq('tester@testing.com')
    expect(Question.first.body).to eq('This is test question')
  end
end
