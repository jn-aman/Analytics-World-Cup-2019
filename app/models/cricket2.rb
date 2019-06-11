class Cricket2 < ApplicationRecord
def self.tweet
	`python3 ruby_scriptV4.py`

end

def self.get_c_tweets(str)

country=['india','pakistan','sri_lanka','england','afganistan','australia','bangladesh','new_zealand','south_africa','west_indies']
i=str
@t=Hash.new()
       	for j in country do
			if i!=j
				pql="select distinct(tweet) as dt from country where "+i.to_str+" > 0 and "+j.to_str+" > 0 and tweet is not NULL order by dt desc;"
				@pql=ActiveRecord::Base.connection.execute(pql.to_str) 
				@t[j]=@pql
			end
		end

return @t

end



def self.get_ind_tweets(country)
india=['dhoni', 'virat', 'rohit_sharma', 'dhawan', 'jadhav', 'hardik_pandya', 'bhuvneshwar_kumar', 'kuldeep_yadav', 'yuzvendra_chahal', 'jasprit_bumrah', 'mohammed_shami', 'vijay_shankar', 'dinesh_karthik', 'kl_rahul', 'ravindra_jadeja']

			@t1=Hash.new()

			for i in india do

				pql="select distinct(tweet) as dt from "+ country + " where "+i.to_str+" > 0 and tweet is not NULL order by dt desc;"

				pql=ActiveRecord::Base.connection.execute(pql.to_str) 

						@t1[i]=pql

			end

return @t1
end

end
