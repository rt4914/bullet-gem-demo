class HomeController < ApplicationController
  def index
    # TODO(01): <READ-ONLY> : This code fetchs all users from users-table.
    @users = User.all
    # TODO(08): Update your query from 'User.all' to 'User.all.includes([:hobbies])'
    # TODO(10): Now restart the server and your errors should be gone.
    # TODO(11): Step 10 solves the problem because we have written optimised query.
  end
end
