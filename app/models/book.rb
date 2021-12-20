class Book < ApplicationRecord
    def self.search(params)
        books = all # for not existing params args
        books = books.where("fund_name_ like ?", "%#{params[:search]}%") if params[:search]
        books
      end
end
