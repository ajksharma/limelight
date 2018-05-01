class ApplicantsController < ApplicationController
  skip_before_action :ensure_signed_in, only: [:new, :show, :create, :thank_you]
  before_action :set_applicant, only: [:show, :destroy, :thank_you, :contact, :email]
  before_action :set_job_posting
  before_action :set_company, only: [:contact, :email]

  # GET /applicants
  # GET /applicants.json
  def index
    @applicants = Applicant.all
  end

  # GET /applicants/1
  # GET /applicants/1.json
  def show
  end
  # GET /applicants/new
  def new
    @applicant = Applicant.new
  end

  # POST /applicants
  # POST /applicants.json
  def create
    @applicant = Applicant.new(applicant_params)

    if @applicant.save
      ResumeParser.perform_async(@job_posting.id, @applicant.id)
      redirect_to job_posting_applicant_thank_you_path(@job_posting, @applicant)
    else
      render :new
    end
  end

  def contact
    @email = Email.new
  end

  def email
    @email = Email.new email_params

    if @email.valid?
      ApplicantMailer.contact(current_user, @applicant, @email.subject, @email.body).deliver
      redirect_to company_job_posting_path(@company, @job_posting), notice: "Email sent to #{@applicant.email}!"
    else
      render :contact
    end
  end

  # DELETE /applicants/1
  # DELETE /applicants/1.json
  def destroy
    @applicant.destroy
    respond_to do |format|
      format.html { redirect_to applicants_url, notice: 'Applicant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def thank_you
  end

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def strong_params
    params.require(:applicant).permit(
      :first_name,
      :last_name,
      :email,
      :resume,
      :website_url,
      :linkedin_url,
      :phone_number
    )
  end

  def applicant_params
    strong_params.merge( job_posting_id: @job_posting.id.to_s )
  end

  def email_params
    params.require(:email).permit(:subject, :body)
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_applicant
    @applicant = Applicant.friendly.find(params[:applicant_id])
  end

  def set_job_posting
    @job_posting = JobPosting.find(params[:job_posting_id])
  end

  def set_company
    @company = Company.friendly.find(params[:company_id])
  end
end
