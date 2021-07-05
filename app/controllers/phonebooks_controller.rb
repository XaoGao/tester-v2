class PhonebooksController < ApplicationController
  def index
    @phonebook = Department.includes(users: [:position, :phone]).except_default.enabled
  end
end
