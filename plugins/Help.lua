local triggers = {
	'^/help[@'..bot.username..']*',
	'^/start[@'..bot.username..']*'
}

local action = function(msg)
    
    print('\n/help or /start', msg.from.first_name..' ['..msg.from.id..']')
    local text = ''
    if msg.chat.type == 'group' or msg.chat.type == 'supergroup' then
        if is_owner(msg) then
        text = text..'*WELCOME TO ARMAN PV!*\n[GitHub](github.com/thisisarman)\n_Send Pm With_\n/`/a YourPm!`\n'  --You Can Replace WELCOME TO ARMAN PV!
        end
        sendReply(msg, '_I\'ve sent you the requested information in_ *private*.\n_If you have never used me before, please *start* me and ask for help here *again*._', true)
    end
    
    if msg.chat.type == 'private' then
        text = text..'*WELCOME TO ARMAN PV!*\n[GitHub](github.com/thisisarman)\n_Send Pm With_\n`/a YourPm!`\nthis bot is open sourced* [source](https://github.com/ThisIsArman/TelegramLuaBot)\n' --You Can Replace WELCOME TO ARMAN PV!
    end
    
    sendMessage(msg.from.id, text, true, false, true)
end

return {
	action = action,
	triggers = triggers
}
