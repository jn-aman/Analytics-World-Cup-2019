class Cricket2 < ApplicationRecord
def self.tweet
	`python3 ruby_scriptV4.py`

end


def self.getplayer(player)
country=['india','pakistan','sri_lanka','england','afganistan','australia','bangladesh','new_zealand','south_africa','west_indies']
ind=[]
for i in country do
			stri= player + "\" ,count(*) "
			sql="select \""+ stri.to_str + "from "+ i + " where "+player.to_str+" > 0 ;"

				@sql=ActiveRecord::Base.connection.execute(sql.to_str)

				for p in @sql
				
				ind.push(p)
				end
		end

return ind
	
end

def self.com(p,q)
country=['india','pakistan','sri_lanka','england','afganistan','australia','bangladesh','new_zealand','south_africa','west_indies']

	i=0
	k=[]
	while( i < q.length) do
	if(p[i][1] > q[i][1])
	p[i][0]=p[i][0]+" in "+ country[i];
	p[i][1]=p[i][1]- q[i][1]
	k.push(p[i])
	elsif(p[i][1]<q[i][1])
	q[i][0]=q[i][0]+" in "+ country[i];
	q[i][1]=q[i][1]-p[i][1]
	k.push(q[i])
	else
		q[i][0]=q[i][0]+" is Same";
		k.push(q[i])

	end
i=i+1
	end
return k
	
end





def self.indp(countryinfo,countryplayers)
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
t1=Hash.new()
t1["india"]=india
t1["pakistan"]=pakistan
t1["england"]=england
t1["afganistan"]=afganistan
t1["australia"]=australia
t1["bangladesh"]=bangladesh
t1["new_zealand"]=new_zealand
t1["south_africa"]=south_africa
t1["sri_lanka"]=sri_lanka
t1["west_indies"]=west_indies
ind=[]
		for i in t1[countryplayers] do
			stri= i + "\" ,count(*) "
			sql="select \""+ stri.to_str + "from "+ countryinfo + " where "+i.to_str+" > 0 ;"

				@sql=ActiveRecord::Base.connection.execute(sql.to_str)
				for p in @sql
				ind.push(p)
				end
		end

return ind


end

def self.compare(p,q,c1,c2)
	i=0


	k=[]
	while(i< p.length) do
	if(p[i][1]> q[i][1])
	p[i][0]=p[i][0]+" in "+ c1;
	p[i][1]=p[i][1]- q[i][1]

	k.push(p[i])
	elsif(p[i][1]<q[i][1])
	q[i][0]=q[i][0]+" in "+ c2;
	q[i][1]=q[i][1]-p[i][1]

	k.push(q[i])
	else
		q[i][0]=q[i][0]+" is Same";
		k.push(q[i])

	end
i=i+1
	end
return k
	
end









end
