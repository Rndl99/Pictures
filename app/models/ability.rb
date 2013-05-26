class Ability
	include CanCan::Ability

	def initialize(user)
		user ||= User.new # guest user

		if user.role? :Admin
			can :manage, :all
			can :publish, Picture
		elsif user.role? :Member
			can :read, :all
			can :create, Comment
			#can [:edit, :update], Comment
		end
	end
		
end