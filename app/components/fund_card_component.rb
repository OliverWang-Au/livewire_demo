# frozen_string_literal: true

class FundCardComponent < ViewComponent::Base

  with_content_areas :avatar, :m_fund, :fund_name, :shares, :mi, :mf, :gsi, :year, :month_1, :year_1, :years_3, :years_5, :si, :mf_2, :ap, :tcr, :date_


  def initialize(id:)
    @id = id
  end

end
