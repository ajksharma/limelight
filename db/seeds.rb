# make sure you log into the app before you run rails db:seed
user = User.last
company = user.company

teams = 10.times.map do
  Team.create(company_id: company.id, name: Faker::Job.field)
end

description = "<p style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; -webkit-font-smoothing: antialiased; font-size: 13.3333px;\">This position is assigned to a team providing 7x24x365 support in diagnosing operational issues with applications, operating systems and hardware, leveraging industry standard tools and techniques to identify solutions to technology related issues in Protective Life Corporation’s Network Operations Center.</p><p style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; -webkit-font-smoothing: antialiased; font-size: 13.3333px;\"><b style=\"unicode-bidi: embed; -webkit-font-smoothing: antialiased;\">Primary Job Functions:</b></p><p style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; -webkit-font-smoothing: antialiased; font-size: 13.3333px;\"><b style=\"unicode-bidi: embed; -webkit-font-smoothing: antialiased;\">Mainframe Operator Responsibilities</b></p><ul style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; -webkit-font-smoothing: antialiased; font-size: 13.3333px;\"><li style=\"-webkit-font-smoothing: antialiased;\">Executes manual cycles and jobs using IBM z/OS mainframe and AS400 to ensure timely service level agreements (SLA) in support of corporate business operations</li></ul><p style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; -webkit-font-smoothing: antialiased; font-size: 13.3333px;\"><b style=\"unicode-bidi: embed; -webkit-font-smoothing: antialiased;\">Mainframe/Distributed System/Network/Environmental Monitoring</b></p><ul style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; -webkit-font-smoothing: antialiased; font-size: 13.3333px;\"><li style=\"-webkit-font-smoothing: antialiased;\">Ensures mainframe and distributed system availability and production scheduling.</li><li style=\"-webkit-font-smoothing: antialiased;\">Monitors mainframe and AS400 operations for operator alerts, messages and/or error indicators.</li><li style=\"-webkit-font-smoothing: antialiased;\">Monitors servers and applications utilizing WebNM, SCOM and available resources.</li><li style=\"-webkit-font-smoothing: antialiased;\">Monitors network and facility infrastructure using SolarWinds, EnviroNet and available resources.</li></ul><p style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; -webkit-font-smoothing: antialiased; font-size: 13.3333px;\"><b style=\"unicode-bidi: embed; -webkit-font-smoothing: antialiased;\">Customer Support</b></p><ul style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; -webkit-font-smoothing: antialiased; font-size: 13.3333px;\"><li style=\"-webkit-font-smoothing: antialiased;\">Receives and responds to all customer inquiries/requests promptly and appropriately</li><li style=\"-webkit-font-smoothing: antialiased;\">Strives to achieve a high degree of customer satisfaction</li></ul><p style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; -webkit-font-smoothing: antialiased; font-size: 13.3333px;\"><b style=\"unicode-bidi: embed; -webkit-font-smoothing: antialiased;\">Print Operator Responsibilties</b></p><ul style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; -webkit-font-smoothing: antialiased; font-size: 13.3333px;\"><li style=\"-webkit-font-smoothing: antialiased;\">Perform mainframe and network production printing to ensure service level agreement timeliness.</li><li style=\"-webkit-font-smoothing: antialiased;\">Ensures quality of print products, including: MICR print, customer policies and statements, and reports</li><li style=\"-webkit-font-smoothing: antialiased;\">Ensures timely distribution of print products to meet SLAs for walk-in customers and the mailroom</li></ul><p style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; -webkit-font-smoothing: antialiased; font-size: 13.3333px;\"><b style=\"unicode-bidi: embed; -webkit-font-smoothing: antialiased;\">Incident/Problem Management</b></p><ul style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; -webkit-font-smoothing: antialiased; font-size: 13.3333px;\"><li style=\"-webkit-font-smoothing: antialiased;\">Analyze, Identify and diagnose faults and symptoms utilizing the appropriate tools according to established processes and procedures.</li><li style=\"-webkit-font-smoothing: antialiased;\">Uses incident management software to log, document and close customer requests and system problems in accordance with established procedures.</li><li style=\"-webkit-font-smoothing: antialiased;\">Performs incident triaging and troubleshooting problem analysis.</li></ul><p style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; -webkit-font-smoothing: antialiased; font-size: 13.3333px;\"><b style=\"unicode-bidi: embed; -webkit-font-smoothing: antialiased;\">Work Experience, Education, Certification / Training Required:</b></p><ul style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; -webkit-font-smoothing: antialiased; font-size: 13.3333px;\"><li style=\"-webkit-font-smoothing: antialiased;\"><p style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; -webkit-font-smoothing: antialiased;\">Bachelors degree in a technical field preferred but not required. Minimum of 2-3 years of technical school training or equivalent work experience in a related field required.</p></li><li style=\"-webkit-font-smoothing: antialiased;\"><p style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; -webkit-font-smoothing: antialiased;\">Minimum of 6 years experience in a 24x7x365 mainframe production or network operations systems environment. Mainframe print experience is a plus. Ability to work various hours, shifts, holidays and overtime as required.</p></li><li style=\"-webkit-font-smoothing: antialiased;\"><p style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; -webkit-font-smoothing: antialiased;\">Minimum of 3-4 years of professional, technical, or customer support experience in a corporate environment supporting at least 1000 users.</p></li></ul><p style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; -webkit-font-smoothing: antialiased; font-size: 13.3333px;\"><b style=\"unicode-bidi: embed; -webkit-font-smoothing: antialiased;\">Knowledge, Skills and Abilities Required:</b></p><ul style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; -webkit-font-smoothing: antialiased; font-size: 13.3333px;\"><li style=\"-webkit-font-smoothing: antialiased;\"><p style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; -webkit-font-smoothing: antialiased;\">Projects a positive attitude.</p></li><li style=\"-webkit-font-smoothing: antialiased;\"><p style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; -webkit-font-smoothing: antialiased;\">Accepts change in a productive manner and contributes to efficient implementation.</p></li><li style=\"-webkit-font-smoothing: antialiased;\"><p style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; -webkit-font-smoothing: antialiased;\">Demonstrated effective time management skills.</p></li><li style=\"-webkit-font-smoothing: antialiased;\"><p style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; -webkit-font-smoothing: antialiased;\">Strong attention to detail and ability to multi-task.</p></li><li style=\"-webkit-font-smoothing: antialiased;\"><p style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; -webkit-font-smoothing: antialiased;\">Strong interpersonal skills.</p></li><li style=\"-webkit-font-smoothing: antialiased;\"><p style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; -webkit-font-smoothing: antialiased;\">Strong oral and written communications skills.</p></li><li style=\"-webkit-font-smoothing: antialiased;\"><p style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; -webkit-font-smoothing: antialiased;\">Strong customer service skills.</p></li><li style=\"-webkit-font-smoothing: antialiased;\"><p style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; -webkit-font-smoothing: antialiased;\">Flexible and reliable.</p></li><li style=\"-webkit-font-smoothing: antialiased;\"><p style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; -webkit-font-smoothing: antialiased;\">Strong customer service orientation and desire to embrace technology as a means of improving service.</p></li><li style=\"-webkit-font-smoothing: antialiased;\"><p style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; -webkit-font-smoothing: antialiased;\">Must be a team player.</p></li><li style=\"-webkit-font-smoothing: antialiased;\"><p style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; -webkit-font-smoothing: antialiased;\">Working knowledge of Microsoft Windows operating systems and Microsoft Office.</p></li><li style=\"-webkit-font-smoothing: antialiased;\"><p style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; -webkit-font-smoothing: antialiased;\">Understanding of LAN, WAN and Citrix environments.</p></li><li style=\"-webkit-font-smoothing: antialiased;\"><p style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; -webkit-font-smoothing: antialiased;\">Understanding of TCP/IP, Routers, Switches, Hubs, Firewalls, Domains, DNS, DHCP and Subnets.</p></li><li style=\"-webkit-font-smoothing: antialiased;\"><p style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; -webkit-font-smoothing: antialiased;\">Good analytical, problem solving and technical troubleshooting skills.</p></li><li style=\"-webkit-font-smoothing: antialiased;\"><p style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; -webkit-font-smoothing: antialiased;\">Ability to complete job requirements work with minimal supervision.</p></li><li style=\"-webkit-font-smoothing: antialiased;\"><p style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; -webkit-font-smoothing: antialiased;\">Lifting and transporting moderately heavy objects, such as computers and peripherals. Ability to lift 30 pounds regularly and 50 pounds occasionally.</p></li></ul>"

50.times.each do |t|
  posting = JobPosting.create(
    title: Faker::Job.title,
    employment_type: JobPosting.employment_types.keys.sample,
    description: description,
    min_salary: Faker::Number.decimal(5, 2),
    years_of_experience: Faker::Number.between(0, 20),
    applicants_count: 0,
    team_id: teams.sample.id,
    company_id: company.id,
    created_at: Faker::Number.between(0, 180).days.ago
  )
end

fake_resume = File.new(Rails.root.join('public', 'resumes', 'resume3.pdf'))

JobPosting.all.each do |posting|
  posting_date = Faker::Number.between(0, 180)

  25.times do
    Applicant.create(
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      email: Faker::Internet.email,
      status: Applicant.statuses.keys.sample,
      rank: Faker::Number.between(0, 100),
      resume: ActionDispatch::Http::UploadedFile.new(
        filename: File.basename(fake_resume),
        tempfile: fake_resume,
        type: 'application/pdf'
      ),
      phone_number: Faker::PhoneNumber.cell_phone,
      website_url: Faker::Avatar.image,
      linkedin_url: Faker::Avatar.image,
      job_posting_id: posting.id,
      created_at: posting_date.days.ago
    )
  end

  300.times do
    posting.views.create(created_at: Faker::Number.between(posting_date, 0).days.ago)
  end
end
