# spec/factories/contacts.rb
FactoryGirl.define do
  factory :reminder do
    name "test reminder"
    message_text "test reminder"
		report { FactoryGirl.create(:report) }
    program { FactoryGirl.create(:program) }
    # recipients {[FactoryGirl.create(:recipient)]}

  end
end