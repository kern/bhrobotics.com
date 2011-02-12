class MembersController < ApplicationController
  def index
    authorize! :index, Member
    @students = Member.students
    @alumni = Member.alumni
    @mentors = Member.mentors
  end
  
  def new
    @member = Member.new
    authorize! :new, @member
  end
  
  def create
    @member = Member.new params[:member]
    authorize! :create, @member
    
    if @member.save
      expire_fragment 'all_members'
      redirect_to @member
    else
      render :action => :new
    end
  end
  
  def edit
    @member = Member.find params[:id]
    authorize! :edit, @member
  end
  
  def update
    @member = Member.find params[:id]
    @member.attributes = params[:member]
    authorize! :update, @member
    
    if @member.save
      expire_fragment 'all_members'
      redirect_to @member
    else
      render :action => :edit
    end
  end
  
  def show
    @member = Member.find params[:id]
    authorize! :show, @member
  end
  
  def destroy
    @member = Member.find params[:id]
    authorize! :destroy, @member
    
    @member.destroy
    expire_fragment 'all_members'
    redirect_to :action => :index
  end
end