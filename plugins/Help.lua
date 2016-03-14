local triggers = {
	'^/help[@'..bot.username..']*',
	'^/start[@'..bot.username..']*',
        '^/about[@'..bot.username..']*'
}

local action = function(msg)
    
    print('\n/help or /start or /about', msg.from.first_name..' ['..msg.from.id..']')
    
    
    local text = ''
    if msg.chat.type == 'private' then
        text = text..'Hey, *'..msg.from.first_name..'*!\n'
        ..'\n*WELCOME TO S.H.O.S PV!*\n[Developer](http://telegram.me/shayan123hacker)\n _Send Pm With_ \n `/a YourPm!` \n'
    end
    
    sendMessage(msg.from.id, text, true, false, true)
end

return {
	action = action,
	triggers = triggers
}
