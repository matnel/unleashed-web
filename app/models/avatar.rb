class Avatar < ActiveRecord::Base

  belongs_to :user

  def choose_avatar

    ## select nice stepcounts
    steps = self.user.steps.where( 'created_at > ?', Time.now - 3.days ).sum( :steps )

    ## choose avatar type
    if steps < 100:
      return {:foo => 500}
    end

    return {:foo => 500}

  end

end
