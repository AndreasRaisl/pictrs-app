require 'rails_helper'

RSpec.describe StaticPagesController, type: :controller do
  describe "#home" do
    subject do
      get :home
    end

    it { is_expected.to have_http_status :success }
  end

  describe "#help" do
    subject do
      get :help
    end

    it { is_expected.to have_http_status :success }
  end

  describe "#about" do
    subject do
      get :about
    end

    it { is_expected.to have_http_status :success }
  end

  describe "#contact" do
    subject do
      get :contact
    end

    it { is_expected.to have_http_status :success }

  end

  # describe "#mumu" do
  #   subject do
  #     get :mumu
  #   end

  #   it { is_expected.to have_http_status :success }
  # end
end
