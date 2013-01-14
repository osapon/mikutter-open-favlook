# -*- coding: utf-8 -*-
# ふぁぼるっく http://favlook.osa-p.net/ を開く

Plugin.create(:open_favlook) do
  command(:open_favlook_user,
          name: 'このユーザーのふぁぼるっくを見る',
          condition: Plugin::Command[:HasMessage],
          visible: true,
          role: :timeline) do |m|
    m.messages.map do |msg|
      Gtk::openurl("http://favlook.osa-p.net/new.html?user=#{msg.user.idname}&id=#{msg.user.id}")
    end
  end
  command(:open_favlook_status,
          name: 'このツイートのふぁぼるっくを見る',
          condition: Plugin::Command[:HasMessage],
          visible: true,
          role: :timeline) do |m|
    m.messages.map do |msg|
      Gtk::openurl("http://favlook.osa-p.net/new.html?status_id=#{msg.id}")
    end
  end
end