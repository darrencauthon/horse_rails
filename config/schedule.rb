set :job_template, ". $HOME/.profile; PATH=\"/usr/local/bin:/usr/bin:/bin\" /bin/bash -l -i -c ':job'"
set :output, { :standard => "cron.log", :error => "cron.errors.log" }

every :weekday, :at => '12pm' do
  rake "tweet_something"
end
