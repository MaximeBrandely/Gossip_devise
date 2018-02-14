require 'rails_helper'

RSpec.describe Gossip, type: :model do
  it "validates content presence" do
  	user = Moussaillon.create!(email:"test@test.fr", password:"yoyoyo", id:"1", invite:"GOSSIP_2017").save
  	#gossip = Gossip.new(content:"", id: '1').save
  	expect(user).to eq(false)
 		end

 	it "validates association to moussaillon" do
  	user = Moussaillon.create!(email:"test2@test.fr", password:"yoyoyo", id:"1", invite:"GOSSIP_2017").save
  	#gossip = Gossip.new(content:"Coucou", user_id: '').save
  	expect(user).to eq(false)
 	end
end
