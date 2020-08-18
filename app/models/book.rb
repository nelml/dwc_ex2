class Book < ApplicationRecord
	belongs_to :user
	#バリデーションは該当するモデルに設定する。エラーにする条件を設定できる。
	#presence trueは空欄の場合を意味する。
	has_many :book_comments, dependent: :destroy
	has_many :favorites, dependent: :destory
	validates :title, presence: true
	validates :body, presence: true, length: {maximum: 200}
end
