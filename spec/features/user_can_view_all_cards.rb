RSpec.feature "When visiting card index" do
	scenario "a user can see all cards" do
		Card.create

		visit cards_path
	end
end
