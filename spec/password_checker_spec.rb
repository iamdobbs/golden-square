require 'password_checker'

RSpec.describe PasswordChecker do
  it 'returns true when password greater than or equal to 8 chars' do
    first = PasswordChecker.new
    expect(first.check('password')).to eq true
  end
  
  context "when password is too short" do
    it 'fails' do
      second = PasswordChecker.new
      expect { second.check('word') }.to raise_error "Invalid password, must be 8+ characters."
    end  
  end  
end  