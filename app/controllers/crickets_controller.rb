class CricketsController < ApplicationController
def home
end
def country
	
end
 def index
# `python3 ruby_scriptV4.py`

top10twitterer="select screen_name , count(*) from twitter group by screen_name order by count(screen_name) desc limit 10;"
@top10twitterer = ActiveRecord::Base.connection.execute(top10twitterer)


countryparticipation="select upper(location) ,count(*) from twitter group by location order by count(location) desc limit 10;"
@countryparticipation=ActiveRecord::Base.connection.execute(countryparticipation)


# create_at="SELECT  DATE_FORMAT(created_at, '%d ' '%M ' '%y ' '%h ' '%p ') as DP, COUNT(*) FROM twitter GROUP BY (DATE_FORMAT(created_at, '%d ' '%M ' '%y ' '%h ' '%p ')) order by DP asc; "

create_at="SELECT  CONCAT(DATE_FORMAT(created_at, '%d ' '%M ' '%y  ' '%H' ),':00') as DP, COUNT(*) FROM twitter GROUP BY DP order by DP asc; "
  @create_at=ActiveRecord::Base.connection.execute(create_at)


sentiments="select Upper(sentiment),count(*) from tweetsentiments group by sentiment;"
@sentiments=ActiveRecord::Base.connection.execute(sentiments)




end


def countystat(str)
	
country=['india','pakistan','sri_lanka','england','afganistan','australia','bangladesh','new_zealand','south_africa','west_indies']

@cc=str
i=str
		@s=[]
		@t=Hash.new()

       for j in country do

			
				if i!=j
				stri= i + " vs "+ j+"\" , count(*) "
				sql="select \""+ stri.to_str + "from country where "+i.to_str+" > 0 and "+j.to_str+" >0;"
				pql="select distinct(tweet) as dt from country where "+i.to_str+" > 0 and "+j.to_str+" > 0 and tweet is not NULL order by dt desc;"
				@sql=ActiveRecord::Base.connection.execute(sql.to_str) 
				@pql=ActiveRecord::Base.connection.execute(pql.to_str) 
					for p in @sql
					@s.push(p)
					end
					@t[j]=@pql
					


				end
		end


# @t[i]=[]


end



def india_players(country)
	
india=['dhoni', 'virat', 'rohit_sharma', 'dhawan', 'jadhav', 'hardik_pandya', 'bhuvneshwar_kumar', 'kuldeep_yadav', 'yuzvendra_chahal', 'jasprit_bumrah', 'mohammed_shami', 'vijay_shankar', 'dinesh_karthik', 'kl_rahul', 'ravindra_jadeja']
# pakistan=['shoaib_malik', 'mohammad_hafeez', 'sarfaraz_ahmed', 'wahab_riaz', 'mohammad_amir', 'haris_sohail', 'babar_azam', 'imamulhaq', 'asif_ali', 'imad_wasim', 'fakhar_zaman']
# england=['eoin_morgan', 'jason_roy', 'jonny_bairstow', 'james_vince', 'jos_buttler', 'ben_stokes', 'moeen_ali', 'chris_woakes', 'liam_dawson', 'tom_curran', 'liam_plunkett']
# afganistan=['gulbadin_naib', 'mohammad_shahzad', 'noor_ali_zadran', 'hazratullah_zazai', 'rahmat_shah', 'asghar_afghan', 'hashmatullah_shahidi', 'najibullah_zadran', 'samiullah_shinwari', 'mohammad_nabi']
# australia=['aaron_finch', 'david_warner', 'usman_khawaja', 'steven_smith', 'shaun_marsh', 'marcus_stoinis', 'alex_carey', 'nathan_coulternile', 'jason_behrendorff', 'kane_richardson']
# bangladesh=['mashrafe_mortaza', 'tamim_iqbal', 'liton_das', 'soumya_sarkar', 'mushfiqur_rahim', 'mahmudullah_riyad', 'shakib_al_hasan', 'mohammad_mithun', 'sabbir_rahman']
# new_zealand=['kane_williamson', 'tom_blundell', 'trent_boult', 'colin_de_grandhomme', 'lockie_ferguson', '_martin_guptill', 'matt_henry', 'tom_latham', 'colin_munro']
# south_africa=['faf_du_plessis', 'quinton_de_kock', 'david_miller', 'jp_duminy', 'hashim_amla', 'aiden_markram', 'rassie_van_der_dussen', 'dwaine_pretorius', 'andile_phehlukwayo']
# sri_lanka=['dimuth_karunaratne', 'angelo_mathews', 'thisara_perera', 'kusal_perera', 'dhananjaya_de_silva', 'kusal_mendis', 'isuru_udana', 'milinda_siriwardana', 'avishka_fernando']
# west_indies=['jason_holder', 'evin_lewis', 'darren_bravo', 'chris_gayle', 'andre_russell', 'carlos_brathwaite', 'nicholas_pooran', 'oshane_thomas', 'shai_hope', 'shimron_hetmyer']

			@ind=[]
			@t1=Hash.new()
			for i in india do
				stri= i + "\" ,count(*) "
				sql="select \""+ stri.to_str + "from "+ country + " where "+i.to_str+" > 0 ;"

				pql="select distinct(tweet) as dt from "+ country + " where "+i.to_str+" > 0 and tweet is not NULL order by dt desc;"
				pql=ActiveRecord::Base.connection.execute(pql.to_str) 
				@in=ActiveRecord::Base.connection.execute(sql.to_str)
						@t1[i]=pql
						for p in @in
						@ind.push(p)
						end
		end
		

end

def pakistan_players(country)
	
india=['dhoni', 'virat', 'rohit_sharma', 'dhawan', 'jadhav', 'hardik_pandya', 'bhuvneshwar_kumar', 'kuldeep_yadav', 'yuzvendra_chahal', 'jasprit_bumrah', 'mohammed_shami', 'vijay_shankar', 'dinesh_karthik', 'kl_rahul', 'ravindra_jadeja']
pakistan=['shoaib_malik', 'mohammad_hafeez', 'sarfaraz_ahmed', 'wahab_riaz', 'mohammad_amir', 'haris_sohail', 'babar_azam', 'imamulhaq', 'asif_ali', 'imad_wasim', 'fakhar_zaman']
england=['eoin_morgan', 'jason_roy', 'jonny_bairstow', 'james_vince', 'jos_buttler', 'ben_stokes', 'moeen_ali', 'chris_woakes', 'liam_dawson', 'tom_curran', 'liam_plunkett']
afganistan=['gulbadin_naib', 'mohammad_shahzad', 'noor_ali_zadran', 'hazratullah_zazai', 'rahmat_shah', 'asghar_afghan', 'hashmatullah_shahidi', 'najibullah_zadran', 'samiullah_shinwari', 'mohammad_nabi']
australia=['aaron_finch', 'david_warner', 'usman_khawaja', 'steven_smith', 'shaun_marsh', 'marcus_stoinis', 'alex_carey', 'nathan_coulternile', 'jason_behrendorff', 'kane_richardson']
bangladesh=['mashrafe_mortaza', 'tamim_iqbal', 'liton_das', 'soumya_sarkar', 'mushfiqur_rahim', 'mahmudullah_riyad', 'shakib_al_hasan', 'mohammad_mithun', 'sabbir_rahman']
new_zealand=['kane_williamson', 'tom_blundell', 'trent_boult', 'colin_de_grandhomme', 'lockie_ferguson', '_martin_guptill', 'matt_henry', 'tom_latham', 'colin_munro']
south_africa=['faf_du_plessis', 'quinton_de_kock', 'david_miller', 'jp_duminy', 'hashim_amla', 'aiden_markram', 'rassie_van_der_dussen', 'dwaine_pretorius', 'andile_phehlukwayo']
sri_lanka=['dimuth_karunaratne', 'angelo_mathews', 'thisara_perera', 'kusal_perera', 'dhananjaya_de_silva', 'kusal_mendis', 'isuru_udana', 'milinda_siriwardana', 'avishka_fernando']
west_indies=['jason_holder', 'evin_lewis', 'darren_bravo', 'chris_gayle', 'andre_russell', 'carlos_brathwaite', 'nicholas_pooran', 'oshane_thomas', 'shai_hope', 'shimron_hetmyer']

				@pak=[]
			@t2=Hash.new()
			for i in pakistan do
				stri= i + "\" ,count(*) "
				sql="select \""+ stri.to_str + "from "+ country + " where "+i.to_str+" > 0 ;"

				pql="select distinct(tweet) as dt from "+ country + " where "+i.to_str+" > 0 and tweet is not NULL order by dt desc;"
				pql=ActiveRecord::Base.connection.execute(pql.to_str) 
				@in=ActiveRecord::Base.connection.execute(sql.to_str)
						@t2[i]=pql
						for p in @in
						@pak.push(p)
						end
		end
		

end
def england_players(country)
	
india=['dhoni', 'virat', 'rohit_sharma', 'dhawan', 'jadhav', 'hardik_pandya', 'bhuvneshwar_kumar', 'kuldeep_yadav', 'yuzvendra_chahal', 'jasprit_bumrah', 'mohammed_shami', 'vijay_shankar', 'dinesh_karthik', 'kl_rahul', 'ravindra_jadeja']
pakistan=['shoaib_malik', 'mohammad_hafeez', 'sarfaraz_ahmed', 'wahab_riaz', 'mohammad_amir', 'haris_sohail', 'babar_azam', 'imamulhaq', 'asif_ali', 'imad_wasim', 'fakhar_zaman']
england=['eoin_morgan', 'jason_roy', 'jonny_bairstow', 'james_vince', 'jos_buttler', 'ben_stokes', 'moeen_ali', 'chris_woakes', 'liam_dawson', 'tom_curran', 'liam_plunkett']
afganistan=['gulbadin_naib', 'mohammad_shahzad', 'noor_ali_zadran', 'hazratullah_zazai', 'rahmat_shah', 'asghar_afghan', 'hashmatullah_shahidi', 'najibullah_zadran', 'samiullah_shinwari', 'mohammad_nabi']
australia=['aaron_finch', 'david_warner', 'usman_khawaja', 'steven_smith', 'shaun_marsh', 'marcus_stoinis', 'alex_carey', 'nathan_coulternile', 'jason_behrendorff', 'kane_richardson']
bangladesh=['mashrafe_mortaza', 'tamim_iqbal', 'liton_das', 'soumya_sarkar', 'mushfiqur_rahim', 'mahmudullah_riyad', 'shakib_al_hasan', 'mohammad_mithun', 'sabbir_rahman']
new_zealand=['kane_williamson', 'tom_blundell', 'trent_boult', 'colin_de_grandhomme', 'lockie_ferguson', '_martin_guptill', 'matt_henry', 'tom_latham', 'colin_munro']
south_africa=['faf_du_plessis', 'quinton_de_kock', 'david_miller', 'jp_duminy', 'hashim_amla', 'aiden_markram', 'rassie_van_der_dussen', 'dwaine_pretorius', 'andile_phehlukwayo']
sri_lanka=['dimuth_karunaratne', 'angelo_mathews', 'thisara_perera', 'kusal_perera', 'dhananjaya_de_silva', 'kusal_mendis', 'isuru_udana', 'milinda_siriwardana', 'avishka_fernando']
west_indies=['jason_holder', 'evin_lewis', 'darren_bravo', 'chris_gayle', 'andre_russell', 'carlos_brathwaite', 'nicholas_pooran', 'oshane_thomas', 'shai_hope', 'shimron_hetmyer']

				@eng=[]
			@t3=Hash.new()
			for i in england do
				stri= i + "\" ,count(*) "
				sql="select \""+ stri.to_str + "from "+ country + " where "+i.to_str+" > 0 ;"

				pql="select distinct(tweet) as dt from "+ country + " where "+i.to_str+" > 0 and tweet is not NULL order by dt desc;"
				pql=ActiveRecord::Base.connection.execute(pql.to_str) 
				@in=ActiveRecord::Base.connection.execute(sql.to_str)
						@t3[i]=pql
						for p in @in
						@eng.push(p)
						end
		end
		
		

end


def afganistan_players(country)
	
india=['dhoni', 'virat', 'rohit_sharma', 'dhawan', 'jadhav', 'hardik_pandya', 'bhuvneshwar_kumar', 'kuldeep_yadav', 'yuzvendra_chahal', 'jasprit_bumrah', 'mohammed_shami', 'vijay_shankar', 'dinesh_karthik', 'kl_rahul', 'ravindra_jadeja']
pakistan=['shoaib_malik', 'mohammad_hafeez', 'sarfaraz_ahmed', 'wahab_riaz', 'mohammad_amir', 'haris_sohail', 'babar_azam', 'imamulhaq', 'asif_ali', 'imad_wasim', 'fakhar_zaman']
england=['eoin_morgan', 'jason_roy', 'jonny_bairstow', 'james_vince', 'jos_buttler', 'ben_stokes', 'moeen_ali', 'chris_woakes', 'liam_dawson', 'tom_curran', 'liam_plunkett']
afganistan=['gulbadin_naib', 'mohammad_shahzad', 'noor_ali_zadran', 'hazratullah_zazai', 'rahmat_shah', 'asghar_afghan', 'hashmatullah_shahidi', 'najibullah_zadran', 'samiullah_shinwari', 'mohammad_nabi']
australia=['aaron_finch', 'david_warner', 'usman_khawaja', 'steven_smith', 'shaun_marsh', 'marcus_stoinis', 'alex_carey', 'nathan_coulternile', 'jason_behrendorff', 'kane_richardson']
bangladesh=['mashrafe_mortaza', 'tamim_iqbal', 'liton_das', 'soumya_sarkar', 'mushfiqur_rahim', 'mahmudullah_riyad', 'shakib_al_hasan', 'mohammad_mithun', 'sabbir_rahman']
new_zealand=['kane_williamson', 'tom_blundell', 'trent_boult', 'colin_de_grandhomme', 'lockie_ferguson', '_martin_guptill', 'matt_henry', 'tom_latham', 'colin_munro']
south_africa=['faf_du_plessis', 'quinton_de_kock', 'david_miller', 'jp_duminy', 'hashim_amla', 'aiden_markram', 'rassie_van_der_dussen', 'dwaine_pretorius', 'andile_phehlukwayo']
sri_lanka=['dimuth_karunaratne', 'angelo_mathews', 'thisara_perera', 'kusal_perera', 'dhananjaya_de_silva', 'kusal_mendis', 'isuru_udana', 'milinda_siriwardana', 'avishka_fernando']
west_indies=['jason_holder', 'evin_lewis', 'darren_bravo', 'chris_gayle', 'andre_russell', 'carlos_brathwaite', 'nicholas_pooran', 'oshane_thomas', 'shai_hope', 'shimron_hetmyer']

				@afg=[]
			@t4=Hash.new()
			for i in afganistan do
				stri= i + "\" ,count(*) "
				sql="select \""+ stri.to_str + "from "+ country + " where "+i.to_str+" > 0 ;"

				pql="select distinct(tweet) as dt from "+ country + " where "+i.to_str+" > 0 and tweet is not NULL order by dt desc;"
				pql=ActiveRecord::Base.connection.execute(pql.to_str) 
				@in=ActiveRecord::Base.connection.execute(sql.to_str)
						@t4[i]=pql
						for p in @in
						@afg.push(p)
						end
		end
		

end
def australia_players(country)
	
india=['dhoni', 'virat', 'rohit_sharma', 'dhawan', 'jadhav', 'hardik_pandya', 'bhuvneshwar_kumar', 'kuldeep_yadav', 'yuzvendra_chahal', 'jasprit_bumrah', 'mohammed_shami', 'vijay_shankar', 'dinesh_karthik', 'kl_rahul', 'ravindra_jadeja']
pakistan=['shoaib_malik', 'mohammad_hafeez', 'sarfaraz_ahmed', 'wahab_riaz', 'mohammad_amir', 'haris_sohail', 'babar_azam', 'imamulhaq', 'asif_ali', 'imad_wasim', 'fakhar_zaman']
england=['eoin_morgan', 'jason_roy', 'jonny_bairstow', 'james_vince', 'jos_buttler', 'ben_stokes', 'moeen_ali', 'chris_woakes', 'liam_dawson', 'tom_curran', 'liam_plunkett']
afganistan=['gulbadin_naib', 'mohammad_shahzad', 'noor_ali_zadran', 'hazratullah_zazai', 'rahmat_shah', 'asghar_afghan', 'hashmatullah_shahidi', 'najibullah_zadran', 'samiullah_shinwari', 'mohammad_nabi']
australia=['aaron_finch', 'david_warner', 'usman_khawaja', 'steven_smith', 'shaun_marsh', 'marcus_stoinis', 'alex_carey', 'nathan_coulternile', 'jason_behrendorff', 'kane_richardson']
bangladesh=['mashrafe_mortaza', 'tamim_iqbal', 'liton_das', 'soumya_sarkar', 'mushfiqur_rahim', 'mahmudullah_riyad', 'shakib_al_hasan', 'mohammad_mithun', 'sabbir_rahman']
new_zealand=['kane_williamson', 'tom_blundell', 'trent_boult', 'colin_de_grandhomme', 'lockie_ferguson', '_martin_guptill', 'matt_henry', 'tom_latham', 'colin_munro']
south_africa=['faf_du_plessis', 'quinton_de_kock', 'david_miller', 'jp_duminy', 'hashim_amla', 'aiden_markram', 'rassie_van_der_dussen', 'dwaine_pretorius', 'andile_phehlukwayo']
sri_lanka=['dimuth_karunaratne', 'angelo_mathews', 'thisara_perera', 'kusal_perera', 'dhananjaya_de_silva', 'kusal_mendis', 'isuru_udana', 'milinda_siriwardana', 'avishka_fernando']
west_indies=['jason_holder', 'evin_lewis', 'darren_bravo', 'chris_gayle', 'andre_russell', 'carlos_brathwaite', 'nicholas_pooran', 'oshane_thomas', 'shai_hope', 'shimron_hetmyer']

				@aus=[]
			@t5=Hash.new()
			for i in australia do
				stri= i + "\" ,count(*) "
				sql="select \""+ stri.to_str + "from "+ country + " where "+i.to_str+" > 0 ;"

				pql="select distinct(tweet) as dt from "+ country + " where "+i.to_str+" > 0 and tweet is not NULL order by dt desc;"
				pql=ActiveRecord::Base.connection.execute(pql.to_str) 
				@in=ActiveRecord::Base.connection.execute(sql.to_str)
						@t5[i]=pql
						for p in @in
						@aus.push(p)
						end
		end
		

end
def bangladesh_players(country)
	
india=['dhoni', 'virat', 'rohit_sharma', 'dhawan', 'jadhav', 'hardik_pandya', 'bhuvneshwar_kumar', 'kuldeep_yadav', 'yuzvendra_chahal', 'jasprit_bumrah', 'mohammed_shami', 'vijay_shankar', 'dinesh_karthik', 'kl_rahul', 'ravindra_jadeja']
pakistan=['shoaib_malik', 'mohammad_hafeez', 'sarfaraz_ahmed', 'wahab_riaz', 'mohammad_amir', 'haris_sohail', 'babar_azam', 'imamulhaq', 'asif_ali', 'imad_wasim', 'fakhar_zaman']
england=['eoin_morgan', 'jason_roy', 'jonny_bairstow', 'james_vince', 'jos_buttler', 'ben_stokes', 'moeen_ali', 'chris_woakes', 'liam_dawson', 'tom_curran', 'liam_plunkett']
afganistan=['gulbadin_naib', 'mohammad_shahzad', 'noor_ali_zadran', 'hazratullah_zazai', 'rahmat_shah', 'asghar_afghan', 'hashmatullah_shahidi', 'najibullah_zadran', 'samiullah_shinwari', 'mohammad_nabi']
australia=['aaron_finch', 'david_warner', 'usman_khawaja', 'steven_smith', 'shaun_marsh', 'marcus_stoinis', 'alex_carey', 'nathan_coulternile', 'jason_behrendorff', 'kane_richardson']
bangladesh=['mashrafe_mortaza', 'tamim_iqbal', 'liton_das', 'soumya_sarkar', 'mushfiqur_rahim', 'mahmudullah_riyad', 'shakib_al_hasan', 'mohammad_mithun', 'sabbir_rahman']
new_zealand=['kane_williamson', 'tom_blundell', 'trent_boult', 'colin_de_grandhomme', 'lockie_ferguson', '_martin_guptill', 'matt_henry', 'tom_latham', 'colin_munro']
south_africa=['faf_du_plessis', 'quinton_de_kock', 'david_miller', 'jp_duminy', 'hashim_amla', 'aiden_markram', 'rassie_van_der_dussen', 'dwaine_pretorius', 'andile_phehlukwayo']
sri_lanka=['dimuth_karunaratne', 'angelo_mathews', 'thisara_perera', 'kusal_perera', 'dhananjaya_de_silva', 'kusal_mendis', 'isuru_udana', 'milinda_siriwardana', 'avishka_fernando']
west_indies=['jason_holder', 'evin_lewis', 'darren_bravo', 'chris_gayle', 'andre_russell', 'carlos_brathwaite', 'nicholas_pooran', 'oshane_thomas', 'shai_hope', 'shimron_hetmyer']

				@ban=[]
			@t6=Hash.new()
			for i in bangladesh do
				stri= i + "\" ,count(*) "
				sql="select \""+ stri.to_str + "from "+ country + " where "+i.to_str+" > 0 ;"

				pql="select distinct(tweet) as dt from "+ country + " where "+i.to_str+" > 0 and tweet is not NULL order by dt desc;"
				pql=ActiveRecord::Base.connection.execute(pql.to_str) 
				@in=ActiveRecord::Base.connection.execute(sql.to_str)
						@t6[i]=pql
						for p in @in
						@ban.push(p)
						end
		end

end
def new_zealand_players(country)
	
india=['dhoni', 'virat', 'rohit_sharma', 'dhawan', 'jadhav', 'hardik_pandya', 'bhuvneshwar_kumar', 'kuldeep_yadav', 'yuzvendra_chahal', 'jasprit_bumrah', 'mohammed_shami', 'vijay_shankar', 'dinesh_karthik', 'kl_rahul', 'ravindra_jadeja']
pakistan=['shoaib_malik', 'mohammad_hafeez', 'sarfaraz_ahmed', 'wahab_riaz', 'mohammad_amir', 'haris_sohail', 'babar_azam', 'imamulhaq', 'asif_ali', 'imad_wasim', 'fakhar_zaman']
england=['eoin_morgan', 'jason_roy', 'jonny_bairstow', 'james_vince', 'jos_buttler', 'ben_stokes', 'moeen_ali', 'chris_woakes', 'liam_dawson', 'tom_curran', 'liam_plunkett']
afganistan=['gulbadin_naib', 'mohammad_shahzad', 'noor_ali_zadran', 'hazratullah_zazai', 'rahmat_shah', 'asghar_afghan', 'hashmatullah_shahidi', 'najibullah_zadran', 'samiullah_shinwari', 'mohammad_nabi']
australia=['aaron_finch', 'david_warner', 'usman_khawaja', 'steven_smith', 'shaun_marsh', 'marcus_stoinis', 'alex_carey', 'nathan_coulternile', 'jason_behrendorff', 'kane_richardson']
bangladesh=['mashrafe_mortaza', 'tamim_iqbal', 'liton_das', 'soumya_sarkar', 'mushfiqur_rahim', 'mahmudullah_riyad', 'shakib_al_hasan', 'mohammad_mithun', 'sabbir_rahman']
new_zealand=['kane_williamson', 'tom_blundell', 'trent_boult', 'colin_de_grandhomme', 'lockie_ferguson', '_martin_guptill', 'matt_henry', 'tom_latham', 'colin_munro']
south_africa=['faf_du_plessis', 'quinton_de_kock', 'david_miller', 'jp_duminy', 'hashim_amla', 'aiden_markram', 'rassie_van_der_dussen', 'dwaine_pretorius', 'andile_phehlukwayo']
sri_lanka=['dimuth_karunaratne', 'angelo_mathews', 'thisara_perera', 'kusal_perera', 'dhananjaya_de_silva', 'kusal_mendis', 'isuru_udana', 'milinda_siriwardana', 'avishka_fernando']
west_indies=['jason_holder', 'evin_lewis', 'darren_bravo', 'chris_gayle', 'andre_russell', 'carlos_brathwaite', 'nicholas_pooran', 'oshane_thomas', 'shai_hope', 'shimron_hetmyer']

				@new=[]
			@t7=Hash.new()
			for i in new_zealand do
				stri= i + "\" ,count(*) "
				sql="select \""+ stri.to_str + "from "+ country + " where "+i.to_str+" > 0 ;"

				pql="select distinct(tweet) as dt from "+ country + " where "+i.to_str+" > 0 and tweet is not NULL order by dt desc;"
				pql=ActiveRecord::Base.connection.execute(pql.to_str) 
				@in=ActiveRecord::Base.connection.execute(sql.to_str)
						@t7[i]=pql
						for p in @in
						@new.push(p)
						end
		
		end
		

end
def south_africa_players(country)
	
india=['dhoni', 'virat', 'rohit_sharma', 'dhawan', 'jadhav', 'hardik_pandya', 'bhuvneshwar_kumar', 'kuldeep_yadav', 'yuzvendra_chahal', 'jasprit_bumrah', 'mohammed_shami', 'vijay_shankar', 'dinesh_karthik', 'kl_rahul', 'ravindra_jadeja']
pakistan=['shoaib_malik', 'mohammad_hafeez', 'sarfaraz_ahmed', 'wahab_riaz', 'mohammad_amir', 'haris_sohail', 'babar_azam', 'imamulhaq', 'asif_ali', 'imad_wasim', 'fakhar_zaman']
england=['eoin_morgan', 'jason_roy', 'jonny_bairstow', 'james_vince', 'jos_buttler', 'ben_stokes', 'moeen_ali', 'chris_woakes', 'liam_dawson', 'tom_curran', 'liam_plunkett']
afganistan=['gulbadin_naib', 'mohammad_shahzad', 'noor_ali_zadran', 'hazratullah_zazai', 'rahmat_shah', 'asghar_afghan', 'hashmatullah_shahidi', 'najibullah_zadran', 'samiullah_shinwari', 'mohammad_nabi']
australia=['aaron_finch', 'david_warner', 'usman_khawaja', 'steven_smith', 'shaun_marsh', 'marcus_stoinis', 'alex_carey', 'nathan_coulternile', 'jason_behrendorff', 'kane_richardson']
bangladesh=['mashrafe_mortaza', 'tamim_iqbal', 'liton_das', 'soumya_sarkar', 'mushfiqur_rahim', 'mahmudullah_riyad', 'shakib_al_hasan', 'mohammad_mithun', 'sabbir_rahman']
new_zealand=['kane_williamson', 'tom_blundell', 'trent_boult', 'colin_de_grandhomme', 'lockie_ferguson', '_martin_guptill', 'matt_henry', 'tom_latham', 'colin_munro']
south_africa=['faf_du_plessis', 'quinton_de_kock', 'david_miller', 'jp_duminy', 'hashim_amla', 'aiden_markram', 'rassie_van_der_dussen', 'dwaine_pretorius', 'andile_phehlukwayo']
sri_lanka=['dimuth_karunaratne', 'angelo_mathews', 'thisara_perera', 'kusal_perera', 'dhananjaya_de_silva', 'kusal_mendis', 'isuru_udana', 'milinda_siriwardana', 'avishka_fernando']
west_indies=['jason_holder', 'evin_lewis', 'darren_bravo', 'chris_gayle', 'andre_russell', 'carlos_brathwaite', 'nicholas_pooran', 'oshane_thomas', 'shai_hope', 'shimron_hetmyer']

				@sou=[]
			@t8=Hash.new()
			for i in south_africa do
				stri= i + "\" ,count(*) "
				sql="select \""+ stri.to_str + "from "+ country + " where "+i.to_str+" > 0 ;"

				pql="select distinct(tweet) as dt from "+ country + " where "+i.to_str+" > 0 and tweet is not NULL order by dt desc;"
				pql=ActiveRecord::Base.connection.execute(pql.to_str) 
				@in=ActiveRecord::Base.connection.execute(sql.to_str)
						@t8[i]=pql
						for p in @in
						@sou.push(p)
						end
		end
		

end
def sri_lanka_players(country)
	
india=['dhoni', 'virat', 'rohit_sharma', 'dhawan', 'jadhav', 'hardik_pandya', 'bhuvneshwar_kumar', 'kuldeep_yadav', 'yuzvendra_chahal', 'jasprit_bumrah', 'mohammed_shami', 'vijay_shankar', 'dinesh_karthik', 'kl_rahul', 'ravindra_jadeja']
pakistan=['shoaib_malik', 'mohammad_hafeez', 'sarfaraz_ahmed', 'wahab_riaz', 'mohammad_amir', 'haris_sohail', 'babar_azam', 'imamulhaq', 'asif_ali', 'imad_wasim', 'fakhar_zaman']
england=['eoin_morgan', 'jason_roy', 'jonny_bairstow', 'james_vince', 'jos_buttler', 'ben_stokes', 'moeen_ali', 'chris_woakes', 'liam_dawson', 'tom_curran', 'liam_plunkett']
afganistan=['gulbadin_naib', 'mohammad_shahzad', 'noor_ali_zadran', 'hazratullah_zazai', 'rahmat_shah', 'asghar_afghan', 'hashmatullah_shahidi', 'najibullah_zadran', 'samiullah_shinwari', 'mohammad_nabi']
australia=['aaron_finch', 'david_warner', 'usman_khawaja', 'steven_smith', 'shaun_marsh', 'marcus_stoinis', 'alex_carey', 'nathan_coulternile', 'jason_behrendorff', 'kane_richardson']
bangladesh=['mashrafe_mortaza', 'tamim_iqbal', 'liton_das', 'soumya_sarkar', 'mushfiqur_rahim', 'mahmudullah_riyad', 'shakib_al_hasan', 'mohammad_mithun', 'sabbir_rahman']
new_zealand=['kane_williamson', 'tom_blundell', 'trent_boult', 'colin_de_grandhomme', 'lockie_ferguson', '_martin_guptill', 'matt_henry', 'tom_latham', 'colin_munro']
south_africa=['faf_du_plessis', 'quinton_de_kock', 'david_miller', 'jp_duminy', 'hashim_amla', 'aiden_markram', 'rassie_van_der_dussen', 'dwaine_pretorius', 'andile_phehlukwayo']
sri_lanka=['dimuth_karunaratne', 'angelo_mathews', 'thisara_perera', 'kusal_perera', 'dhananjaya_de_silva', 'kusal_mendis', 'isuru_udana', 'milinda_siriwardana', 'avishka_fernando']
west_indies=['jason_holder', 'evin_lewis', 'darren_bravo', 'chris_gayle', 'andre_russell', 'carlos_brathwaite', 'nicholas_pooran', 'oshane_thomas', 'shai_hope', 'shimron_hetmyer']

				@sri=[]
			@t9=Hash.new()
			for i in sri_lanka do
				stri= i + "\" ,count(*) "
				sql="select \""+ stri.to_str + "from "+ country + " where "+i.to_str+" > 0 ;"

				pql="select distinct(tweet) as dt from "+ country + " where "+i.to_str+" > 0 and tweet is not NULL order by dt desc;"
				pql=ActiveRecord::Base.connection.execute(pql.to_str) 
				@in=ActiveRecord::Base.connection.execute(sql.to_str)
						@t9[i]=pql
						for p in @in
						@sri.push(p)
						end
		end
		

end

def west_indies_players(country)
	
india=['dhoni', 'virat', 'rohit_sharma', 'dhawan', 'jadhav', 'hardik_pandya', 'bhuvneshwar_kumar', 'kuldeep_yadav', 'yuzvendra_chahal', 'jasprit_bumrah', 'mohammed_shami', 'vijay_shankar', 'dinesh_karthik', 'kl_rahul', 'ravindra_jadeja']
pakistan=['shoaib_malik', 'mohammad_hafeez', 'sarfaraz_ahmed', 'wahab_riaz', 'mohammad_amir', 'haris_sohail', 'babar_azam', 'imamulhaq', 'asif_ali', 'imad_wasim', 'fakhar_zaman']
england=['eoin_morgan', 'jason_roy', 'jonny_bairstow', 'james_vince', 'jos_buttler', 'ben_stokes', 'moeen_ali', 'chris_woakes', 'liam_dawson', 'tom_curran', 'liam_plunkett']
afganistan=['gulbadin_naib', 'mohammad_shahzad', 'noor_ali_zadran', 'hazratullah_zazai', 'rahmat_shah', 'asghar_afghan', 'hashmatullah_shahidi', 'najibullah_zadran', 'samiullah_shinwari', 'mohammad_nabi']
australia=['aaron_finch', 'david_warner', 'usman_khawaja', 'steven_smith', 'shaun_marsh', 'marcus_stoinis', 'alex_carey', 'nathan_coulternile', 'jason_behrendorff', 'kane_richardson']
bangladesh=['mashrafe_mortaza', 'tamim_iqbal', 'liton_das', 'soumya_sarkar', 'mushfiqur_rahim', 'mahmudullah_riyad', 'shakib_al_hasan', 'mohammad_mithun', 'sabbir_rahman']
new_zealand=['kane_williamson', 'tom_blundell', 'trent_boult', 'colin_de_grandhomme', 'lockie_ferguson', '_martin_guptill', 'matt_henry', 'tom_latham', 'colin_munro']
south_africa=['faf_du_plessis', 'quinton_de_kock', 'david_miller', 'jp_duminy', 'hashim_amla', 'aiden_markram', 'rassie_van_der_dussen', 'dwaine_pretorius', 'andile_phehlukwayo']
sri_lanka=['dimuth_karunaratne', 'angelo_mathews', 'thisara_perera', 'kusal_perera', 'dhananjaya_de_silva', 'kusal_mendis', 'isuru_udana', 'milinda_siriwardana', 'avishka_fernando']
west_indies=['jason_holder', 'evin_lewis', 'darren_bravo', 'chris_gayle', 'andre_russell', 'carlos_brathwaite', 'nicholas_pooran', 'oshane_thomas', 'shai_hope', 'shimron_hetmyer']

				@wes=[]
			@t10=Hash.new()
			for i in west_indies do
				stri= i + "\" ,count(*) "
				sql="select \""+ stri.to_str + "from "+ country + " where "+i.to_str+" > 0 ;"

				pql="select distinct(tweet) as dt from "+ country + " where "+i.to_str+" > 0 and tweet is not NULL order by dt desc;"
				pql=ActiveRecord::Base.connection.execute(pql.to_str) 
				@in=ActiveRecord::Base.connection.execute(sql.to_str)
						@t10[i]=pql
						for p in @in
						@wes.push(p)
						end
		end

end


def index2
i=params[:country]
@xx=params[:country]
countystat(i)
india_players(i)
pakistan_players(i)
england_players(i)
afganistan_players(i)
australia_players(i)
bangladesh_players(i)
new_zealand_players(i)
south_africa_players(i)
sri_lanka_players(i)
west_indies_players(i)

end
def slider
	    render layout: false

end







end
