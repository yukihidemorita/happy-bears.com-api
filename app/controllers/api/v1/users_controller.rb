class Api::V1::UsersController < ApplicationController
  require 'redis'

  def index
    @users = []
  end

  def show
    @users = []
  end
end
