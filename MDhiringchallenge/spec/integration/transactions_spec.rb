require 'spec_helper'

feature 'transactions page' do 

  it 'has a failed transactions table' do
  	visit '/'
  	page.should have_selector('table#failed')
  end

  it 'has a disputed transactions table' do
  	visit '/'
  	page.should have_selector('table#disputed')
  end

  it 'has a successful transactions table' do
  	visit '/'
  	page.should have_selector('table#successful')
  end

  it 'does not have a broken transactions table' do
  	visit '/'
  	page.should_not have_selector('table#broken')
  end

  it 'has the correct number of rows in the failed transaction table' do
  	visit '/'
  	#page.all('table#failed tr').count.should == 5
  	page.has_css?("table.failed tr", :count => 5)
  end

  it 'has the correct number of rows in the disputed transaction table' do
  	visit '/'
  	#page.all('table#failed tr').count.should == 5
  	page.has_css?("table.disputed tr", :count => 5)
  end

  it 'has the correct number of rows in the successful transaction table' do
  	visit '/'
  	#page.all('table#failed tr').count.should == 5
  	page.has_css?("table.successful tr", :count => 10)
  end


end