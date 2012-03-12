require 'rspec'
require 'active_support/time'
require 'better_date_to_s'

describe Date do
  it 'formats dates correctly' do
    date = Date.new(2005, 2, 1)
    date.to_s.should == "2005-02-01"
    date.to_s(:short).should == "1 Feb" 
    date.to_s(:long).should == "February 1, 2005"
    date.to_s(:long_ordinal).should == "February 1st, 2005"
    date.to_s(:db).should == "2005-02-01"
    date.to_s(:rfc822).should == " 1 Feb 2005"
  end
end