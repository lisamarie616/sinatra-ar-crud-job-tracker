applicants_list = {
 "user123" => {
  :password_digest => "flowers",
  :first_name => "Rose",
  :last_name => "Red"
 },
 "scottybuttons" => {
  :password_digest => "bones",
  :first_name => "Scotty",
  :last_name => "Smith"
 },
 "teddybear" => {
  :password_digest => "kennel",
  :first_name => "Teddy",
  :last_name => "Thomas"
 }
}

applicants_list.each do |username, applicant_hash|
  a = Applicant.new
  a.username = username
  applicant_hash.each do |attribute, value|
    a[attribute] = value
  end
  a.save
end

companies_list = {
  "Uber" => {
    :website => "www.uber.com",
    :headquarters => "New York, NY"
  },
  "Via" => {
    :website => "www.ridewithvia.com",
    :headquarters => "New York, NY"
  },
  "Lyft" => {
    :website => "www.lyft.com",
    :headquarters => "Los Angeles, CA"
  }
}

companies_list.each do |name, companies_hash|
  c = Company.new
  c.name = name
  companies_hash.each do |attribute, value|
    c[attribute] = value
  end
  c.save
end

jobs_list = {
  "Human Resources Coordinator" => {
    :location => "Santa Monica, CA",
    :salary => 90000,
    :link => "http://jobview.monster.com/Human-Resources-Coordinator-Job-Los-Angeles-CA-US-162609334.aspx?mescoid=1300081001001&jobPosition=3",
    :company_id => 1
  },
  "Sales Representative" => {
    :location => "Pasadena, CA",
    :salary => 70000,
    :link => "http://jobview.monster.com/Sales-Representative-Job-Pasadena-CA-US-162904449.aspx?mescoid=4100683001001&jobPosition=6",
    :company_id => 2
  },
  "Director of Post Production" => {
    :location => "Los Angeles, CA",
    :salary => 100000,
    :link => "http://jobview.monster.com/Director-of-Post-Production-Job-Los-Angeles-CA-US-162297189.aspx?mescoid=1100055001001&jobPosition=7",
    :company_id => 3
  },
  "Junior Marketing Associate" => {
    :location => "Los Angeles, CA",
    :salary => 50000,
    :link => "http://jobview.monster.com/Junior-Marketing-Associate-Entry-Level-Marketing-Job-Los-Angeles-CA-US-162277072.aspx?mescoid=1300092001001&jobPosition=10",
    :company_id => 3
  }
}

jobs_list.each do |title, jobs_hash|
  j = Job.new
  j.title = title
  jobs_hash.each do |attribute, value|
    j[attribute] = value
  end
  j.save
end

applications_list = [
  {
    :status => "not started",
    :cover_letter => "https://drive.google.com/open?id=130EUSztAalH8WROFiyaNVc6hORhkgXI4NXkqwErOvUk",
    :resume => "https://drive.google.com/open?id=116PtOzztZKv3pbPYzQFIZsaMkRGLHsYObhtC6ruCFhA",
    :applicant_id => 1,
    :job_id => 3
  },
  {
    :status => "in progress",
    :cover_letter => "https://drive.google.com/open?id=130EUSztAalH8WROFiyaNVc6hORhkgXI4NXkqwErOvUk",
    :resume => "https://drive.google.com/open?id=116PtOzztZKv3pbPYzQFIZsaMkRGLHsYObhtC6ruCFhA",
    :applicant_id => 2,
    :job_id => 3
  },
  {
    :status => "in progress",
    :cover_letter => "https://drive.google.com/open?id=1xx-3l1A5GBVyznDX-eYteZKOFS2bwQlwoHexjaO9eBM",
    :resume => "https://drive.google.com/open?id=1ScKCK2TJPBkQXQJjZxhyI8UJIfjZQ8oQGIuihkCiTkQ",
    :applicant_id => 3,
    :job_id => 4
  },
  {
    :status => "completed",
    :cover_letter => "https://drive.google.com/open?id=1xx-3l1A5GBVyznDX-eYteZKOFS2bwQlwoHexjaO9eBM",
    :resume => "https://drive.google.com/open?id=1ScKCK2TJPBkQXQJjZxhyI8UJIfjZQ8oQGIuihkCiTkQ",
    :applicant_id => 2,
    :job_id => 1
  },
  {
    :status => "completed",
    :cover_letter => "https://drive.google.com/open?id=1xx-3l1A5GBVyznDX-eYteZKOFS2bwQlwoHexjaO9eBM",
    :resume => "https://drive.google.com/open?id=1ScKCK2TJPBkQXQJjZxhyI8UJIfjZQ8oQGIuihkCiTkQ",
    :applicant_id => 3,
    :job_id => 2
  }
]

applications_list.each do |application_hash|
  a = Application.new
  application_hash.each do |attribute, value|
    a[attribute] = value
  end
  a.save
end