module UsersHelper
@small = 25
@med = 100
@lrg = 220

# Returns the Gravatar for the given user.

def gravatar_for(user, options = { size: 128 })
sizer = options[:size]
@small = 25
@med = 100
@lrg = 220
gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
image_tag(gravatar_url, alt: user.name, class: 'gravatar')
end

end
