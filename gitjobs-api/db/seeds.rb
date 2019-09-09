require 'rest-client'
require 'json'

def createJob(title, location, company, company_logo, description, apply)
  Job.create(title: title, location: location, company: company, company_logo: company_logo, description: description, apply: apply)
end


 jobs = RestClient.get "https://jobs.github.com/positions.json?page=1&search=code&location=new+york"
 allJobs = JSON.parse(jobs)
 allJobs.each do |job|
   createJob(job["title"], job["location"], job["company"], job["company_logo"], job["description"], job["how_to_apply"])
 end
