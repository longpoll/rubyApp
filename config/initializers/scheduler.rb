require 'rufus-scheduler'

scheduler = Rufus::Scheduler.new

# Рассылка новостей в первый день каждой недели

#scheduler.cron '00 07 * * 01' do 
scheduler.cron '* * * * *' do 
	UserMailer.with(everyDay: 0).news_digest.deliver_later
end


# Рассылка новостей каждый день в 8 утра

scheduler.cron '* * * * *' do
	UserMailer.with(everyDay: 1).news_digest.deliver_later
end
