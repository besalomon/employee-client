class EmployeesController < ApplicationController
def show
  @employee = Unirest.get("http://localhost:3000/employees/#{params[:id]}.json").body
end

def index
  @employees = Unirest.get("http://localhost:3000/employees.json").body
end

def create
  @employee = Unirest.post("http://localhost:3000/employees.json", :headers => {"Accept"=> "application/json"}, :parameters => {:first_name => params[:first_name], :last_name => params[:last_name], :email=> params[:email], :birthdate => params[:birthdate], :ssn => params[:ssn]}).body

  redirect_to :index
end

def new

end

end