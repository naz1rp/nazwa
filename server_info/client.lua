-- أمر يكتبه اللاعب في الشات لعرض القوانين
RegisterCommand('rules', function()
    TriggerEvent('chat:addMessage', {
        color = {255, 50, 50},
        multiline = true,
        args = {"📜 قوانين السيرفر", "1- يمنع التخريب | 2- احترام الجميع | 3- التمثيل الواقعي"}
    })
end, false)

-- رسالة للتأكيد في الكونسل
print('^2[server_info] ^7السكربت جاهز للعمل!')