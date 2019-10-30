class ExamplesController < ApplicationController
  before_action :set_variables
  layout 'auth', only: %i[login register forgot_password]

  private

  def set_variables
    @notifications = [
      OpenStruct.new(date: 'December 12, 2019', content: 'A new monthly report is ready to download!', kind: 'primary', viewed: false),
      OpenStruct.new(date: 'December 7, 2019', content: '$290.29 has been deposited into your account!', kind: 'success', viewed: true),
      OpenStruct.new(date: 'December 2, 2019', content: 'Spending Alert: We\'ve noticed unusually high spending for your account.', kind: 'warning', viewed: true)
    ]

    @messages = [
      OpenStruct.new(content: "Hi there! I am wondering if you can help me with a problem I've been having.", sender: "Emily Fowler · 58m", sender_avatar: 'https://source.unsplash.com/fn_BT9fwg_E/60x60'),
      OpenStruct.new(content: "I have the photos that you ordered last month, how would you like them sent to you?", sender: "Jae Chun · 1d", sender_avatar: 'https://source.unsplash.com/AU4VPcFN4LE/60x60'),
      OpenStruct.new(content: "Last month's report looks great, I am very happy with the progress so far, keep up the good work!", sender: "Morgan Alvarez · 2d", sender_avatar: 'https://source.unsplash.com/CS2uCrpNzJY/60x60'),
      OpenStruct.new(content: "Am I a good boy? The reason I ask is because someone told me that people say this to all dogs, even if they aren't good...", sender: "Chicken the Dog · 2w", sender_avatar: 'https://source.unsplash.com/Mv9hjnEUHR4/60x60')
    ]
  end
end
