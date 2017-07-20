require 'redd'

start = Time.now

## Get a Reddit developer API key
session = Redd.it(
  user_agent: '',
  client_id:  '',
  secret:     '',
  username:   '',
  password:   ''
)

comments = session.me.comments(limit: 100)
@comments = comments.to_ary
after = comments.after

while after
  comments = session.me.comments(after: after, limit: 100)
  @comments += comments.to_ary

  after = comments.after
  puts '.'
end

@comments.each(&:delete)

posts = session.me.submitted(limit: 100)
@posts = posts.to_ary
after = posts.after

while after
  posts = session.me.submitted(after: after, limit: 100)
  @posts += posts.to_ary

  after = posts.after
  puts '.'
end

@posts.each(&:delete)

finish = Time.now

duration = (finish - start).round(2)

puts "duration: #{duration}"
