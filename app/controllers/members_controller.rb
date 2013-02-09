class MembersController < ApplicationController
  before_filter :require_sign_in, :except => [:index, :show, :sign_in, :check_sign_in]

  def index
    #:category => "student" && 
   # @member = Member.find#(params[:id]) <- no sense in this context
    @students = Member.where("graduation_year > ?", Time.now.year).order("name ASC") 
    @alumni = Member.where("graduation_year < ?", Time.now.year).order("name ASC")   
    @mentors = Member.where(:category => "mentor").order("name ASC")    
  end

  def show
    @member = Member.find(params[:id])
  end

  def new
    @member = Member.new
  end

  def edit
    @member = Member.find(params[:id])
  end
 
  def create
    @member = Member.new(params[:member])

    if @member.save
      redirect_to @member, notice: 'Member was successfully created.'
    else
      render action: "new"
    end
  end

  def update
    @member = Member.find(params[:id])

    if @member.update_attributes(params[:member])
      redirect_to @member, notice: 'Member was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @member = Member.find(params[:id])
    @member.destroy
    redirect_to members_url
  end

  def require_sign_in
    redirect_to sign_in_path unless signed_in?
  end

  helper_method :signed_in?
  def signed_in?
    !!session[:signed_in?]
  end

  def sign_out
    session[:signed_in?] = false
    redirect_to members_path
  end

  def sign_in
    redirect_to members_path if signed_in?
  end

  def check_sign_in
    if MemberPassword.valid?(params[:password])
      session[:signed_in?] = true
      redirect_to members_path
    else
      render :sign_in
    end
  end
end
