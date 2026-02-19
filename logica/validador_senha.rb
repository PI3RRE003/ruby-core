def password_valid?(password)
  if password.length >= 8
    return true
  else
    return false
  end 
end

p password_valid?("vitor1234")