```ruby
# mermaid_spec.rb
require 'rspec'
# Write code in a file named mermaid in a directory named lib
require './lib/mermaid'

describe Mermaid do
  it 'is an instance of mermaid' do
#  Since a mermaid object is being created from a mermaid class, write a class named student
# Since an argument is being passed to mermaid, the initialize method needs to accept one
    mermaid = Mermaid.new('Sereia')
    expect(mermaid).to be_a Mermaid
  end

  it 'has a name' do
    mermaid = Mermaid.new('Sereia')
# Since we need to call the name attribute and get back the string that was passed in, we need an attr_reader for the name attribute
    expect(mermaid.name).to eq 'Sereia'
  end
  
  it 'has an age' do
    mermaid = Mermaid.new('Sereia')
# Since we need to call the age attribute and get back the integer 22, we need an attribute named age set to 22, and an attr_reader to go with it
    expect(mermaid.age).to eq 22
  end
  
  it 'has can get older' do
    mermaid = Mermaid.new('Sereia')
# since a method is being called on the mermaid instance, we need a class method get_older for the Mermaid class
    mermaid.get_older
# Because the mermaid age was previously 22, we need the class method get_older to change the age attribute from 22 to 23
    expect(mermaid.age).to eq 23
  end
end
```