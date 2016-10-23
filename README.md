# RSpecMethodGrouping

This gem manages supporting methods that are used in rspec example.

# Installation

```ruby
gem 'rspec_method_grouping'
```

# Usage

## before

In defining methods, we need long different names. They are not readable.

```ruby
def registration_page_submit_button
  find('button', text: 'Register Now!')
end

def mail_page_submit_button
  find('button', text: 'Send Now!')
end

describe 'registration' do
  it do
    visit '/resistration'
    
    # input data to some form
    
    registration_page_submit_button.click

    visit '/contact'
    
    # input data to some form
    
    mail_page_submit_button.click
  end
end
```

## After

In defining methods, we need some steps. But, They are readable and easy to detect names.

```ruby
class RegistrationPage < RSpecMethodGrouping::Base
  def submit_button
   find('button', text: 'Register Now!')
  end
end

class ContactPage < RSpecMethodGrouping::Base
  def submit_button
   find('button', text: 'Send Now!')
  end
end

describe 'registration' do
  it do
    visit '/resistration'
    
    # input data to some form
    
    RegistrationPage.submit_button.click
    
    visit '/contact'
    
    # input data to some form
    
    ContactPage.submit_button.click
  end
end
```
