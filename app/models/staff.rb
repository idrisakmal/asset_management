class Staff < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :trackable, :validatable

  has_many :assets
  has_and_belongs_to_many :roles

  def has_role?(name)
    roles.include?(Role.find_by_code(name))
  end

  def add_role(role)
    if  the_role = Role.find_by_code(role)
        roles.push(the_role)
    end
  end
  
  def delete_role(role)
    if  the_role = Role.find_by_code(role)
        roles.delete(the_role)
    end
  end

  def list_roles
    roles.map(&:name)
  end
end
