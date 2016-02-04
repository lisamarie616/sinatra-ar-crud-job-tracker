companies_list = {
  "Uber" => {
    :website => "https://www.uber.com/",
    :headquarters => "New York, NY"
  },
  "Via" => {
    :website => "http://ridewithvia.com/",
    :headquarters => "New York, NY"
  },
  "Lyft" => {
    :website => "https://lyft.com/",
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

applications_list = [
  {
    :title => "Human Resources Coordinator",
    :location => "Santa Monica, CA",
    :salary => "90000",
    :link => "http://jobview.monster.com/Human-Resources-Coordinator-Job-Los-Angeles-CA-US-162609334.aspx?mescoid=1300081001001&jobPosition=3",
    :cover_letter => "https://drive.google.com/open?id=130EUSztAalH8WROFiyaNVc6hORhkgXI4NXkqwErOvUk",
    :resume => "https://drive.google.com/open?id=116PtOzztZKv3pbPYzQFIZsaMkRGLHsYObhtC6ruCFhA",
    :applicant_id => 1,
    :company_id => 1
  },
  {
    :title => "Sales Representative",
    :location => "Pasadena, CA",
    :salary => "70000",
    :link => "http://jobview.monster.com/Sales-Representative-Job-Pasadena-CA-US-162904449.aspx?mescoid=4100683001001&jobPosition=6",
    :cover_letter => "https://drive.google.com/open?id=130EUSztAalH8WROFiyaNVc6hORhkgXI4NXkqwErOvUk",
    :resume => "https://drive.google.com/open?id=116PtOzztZKv3pbPYzQFIZsaMkRGLHsYObhtC6ruCFhA",
    :applicant_id => 2,
    :company_id => 2
  },
  {
    :title => "Director of Post Production",
    :location => "Los Angeles, CA",
    :salary => "100000",
    :link => "http://jobview.monster.com/Director-of-Post-Production-Job-Los-Angeles-CA-US-162297189.aspx?mescoid=1100055001001&jobPosition=7",
    :cover_letter => "https://drive.google.com/open?id=1xx-3l1A5GBVyznDX-eYteZKOFS2bwQlwoHexjaO9eBM",
    :resume => "https://drive.google.com/open?id=1ScKCK2TJPBkQXQJjZxhyI8UJIfjZQ8oQGIuihkCiTkQ",
    :applicant_id => 3,
    :company_id => 3
  },
  {
    :title => "Junior Marketing Associate",
    :location => "Los Angeles, CA",
    :salary => "50000",
    :link => "http://jobview.monster.com/Junior-Marketing-Associate-Entry-Level-Marketing-Job-Los-Angeles-CA-US-162277072.aspx?mescoid=1300092001001&jobPosition=10",
    :cover_letter => "https://drive.google.com/open?id=1xx-3l1A5GBVyznDX-eYteZKOFS2bwQlwoHexjaO9eBM",
    :resume => "https://drive.google.com/open?id=1ScKCK2TJPBkQXQJjZxhyI8UJIfjZQ8oQGIuihkCiTkQ",
    :applicant_id => 2,
    :company_id => 2
  },
  {
    :title => "Retail Sales Associate",
    :location => "Raleigh, NC",
    :salary => "45000",
    :link => "http://jobs.verizon.com/jobs/4813926-retail-sales-associate?tm_job=418138-1E&tm_event=view&tm_company=781&bid=0&aasi=5&bid=453&cid=pje&ss=paid",
    :cover_letter => "https://drive.google.com/open?id=1xx-3l1A5GBVyznDX-eYteZKOFS2bwQlwoHexjaO9eBM",
    :resume => "https://drive.google.com/open?id=1ScKCK2TJPBkQXQJjZxhyI8UJIfjZQ8oQGIuihkCiTkQ",
    :applicant_id => 3,
    :company_id => 3
  }
]

applications_list.each do |application_hash|
  a = Application.new
  application_hash.each do |attribute, value|
    a[attribute] = value
  end
  a.save
end