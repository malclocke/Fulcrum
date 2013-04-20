module IntegrationHelpers

  def sign_in(user, password = 'password')
    visit root_path
    fill_in "user_email",    :with => user.email
    fill_in "user_password", :with => password
    click_button 'Sign in'
  end
  
  def send_keys keys, options = {}
    keycode = case keys
      when '?'
        63
      when 'B'
        66
      when 'C'
        67
      when 'D'
        68
      when 'P'
        80
      when 'a'
        97
      when :pause
        19
      else
        keys
    end
    element = options[:element] ? options.delete(:element) : 'body'
    keypress_script = "var e = jQuery.Event('keypress', { keyCode: #{keycode} }); jQuery('#{element}').trigger(e);"
    page.driver.browser.execute_script(keypress_script)
  end
end
