#-*- coding: utf-8 -*-
Plugin.create :following_users_color do
  UserConfig[:following_users_background_color] ||= [0x0000,0x0000,0xffff]

  filter_message_background_color do | mp, array |
    if mp.to_message.user[:following] == true
      array = UserConfig[:following_users_background_color]
    end
    [mp, array]
  end
  
  settings("自分をフォローしてるユーザの背景色") do
    color("自分をフォローしてるユーザの背景色",:following_users_background_color)
  end
end
