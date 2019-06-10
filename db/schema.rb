# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 0) do

  create_table "afganistan", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "id"
    t.bigint "dhoni"
    t.bigint "virat"
    t.bigint "rohit_sharma"
    t.bigint "dhawan"
    t.bigint "jadhav"
    t.bigint "hardik_pandya"
    t.bigint "bhuvneshwar_kumar"
    t.bigint "kuldeep_yadav"
    t.bigint "yuzvendra_chahal"
    t.bigint "jasprit_bumrah"
    t.bigint "mohammed_shami"
    t.bigint "vijay_shankar"
    t.bigint "dinesh_karthik"
    t.bigint "kl_rahul"
    t.bigint "ravindra_jadeja"
    t.bigint "shoaib_malik"
    t.bigint "mohammad_hafeez"
    t.bigint "sarfaraz_ahmed"
    t.bigint "wahab_riaz"
    t.bigint "mohammad_amir"
    t.bigint "haris_sohail"
    t.bigint "babar_azam"
    t.bigint "imamulhaq"
    t.bigint "asif_ali"
    t.bigint "imad_wasim"
    t.bigint "fakhar_zaman"
    t.bigint "eoin_morgan"
    t.bigint "jason_roy"
    t.bigint "jonny_bairstow"
    t.bigint "james_vince"
    t.bigint "jos_buttler"
    t.bigint "ben_stokes"
    t.bigint "moeen_ali"
    t.bigint "chris_woakes"
    t.bigint "liam_dawson"
    t.bigint "tom_curran"
    t.bigint "liam_plunkett"
    t.bigint "gulbadin_naib"
    t.bigint "mohammad_shahzad"
    t.bigint "noor_ali_zadran"
    t.bigint "hazratullah_zazai"
    t.bigint "rahmat_shah"
    t.bigint "asghar_afghan"
    t.bigint "hashmatullah_shahidi"
    t.bigint "najibullah_zadran"
    t.bigint "samiullah_shinwari"
    t.bigint "mohammad_nabi"
    t.bigint "aaron_finch"
    t.bigint "david_warner"
    t.bigint "usman_khawaja"
    t.bigint "steven_smith"
    t.bigint "shaun_marsh"
    t.bigint "marcus_stoinis"
    t.bigint "alex_carey"
    t.bigint "nathan_coulternile"
    t.bigint "jason_behrendorff"
    t.bigint "kane_richardson"
    t.bigint "mashrafe_mortaza"
    t.bigint "tamim_iqbal"
    t.bigint "liton_das"
    t.bigint "soumya_sarkar"
    t.bigint "mushfiqur_rahim"
    t.bigint "mahmudullah_riyad"
    t.bigint "shakib_al_hasan"
    t.bigint "mohammad_mithun"
    t.bigint "sabbir_rahman"
    t.bigint "kane_williamson"
    t.bigint "tom_blundell"
    t.bigint "trent_boult"
    t.bigint "colin_de_grandhomme"
    t.bigint "lockie_ferguson"
    t.bigint "_martin_guptill"
    t.bigint "matt_henry"
    t.bigint "tom_latham_wk"
    t.bigint "colin_munro"
    t.bigint "faf_du_plessis"
    t.bigint "quinton_de_kock"
    t.bigint "david_miller"
    t.bigint "jp_duminy"
    t.bigint "hashim_amla"
    t.bigint "aiden_markram"
    t.bigint "rassie_van_der_dussen"
    t.bigint "dwaine_pretorius"
    t.bigint "andile_phehlukwayo"
    t.bigint "dimuth_karunaratne"
    t.bigint "angelo_mathews"
    t.bigint "thisara_perera"
    t.bigint "kusal_perera"
    t.bigint "dhananjaya_de_silva"
    t.bigint "kusal_mendis"
    t.bigint "isuru_udana"
    t.bigint "milinda_siriwardana"
    t.bigint "avishka_fernando"
    t.index ["id"], name: "ix_afganistan_id", using: :btree
  end

  create_table "australia", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "id"
    t.bigint "dhoni"
    t.bigint "virat"
    t.bigint "rohit_sharma"
    t.bigint "dhawan"
    t.bigint "jadhav"
    t.bigint "hardik_pandya"
    t.bigint "bhuvneshwar_kumar"
    t.bigint "kuldeep_yadav"
    t.bigint "yuzvendra_chahal"
    t.bigint "jasprit_bumrah"
    t.bigint "mohammed_shami"
    t.bigint "vijay_shankar"
    t.bigint "dinesh_karthik"
    t.bigint "kl_rahul"
    t.bigint "ravindra_jadeja"
    t.bigint "shoaib_malik"
    t.bigint "mohammad_hafeez"
    t.bigint "sarfaraz_ahmed"
    t.bigint "wahab_riaz"
    t.bigint "mohammad_amir"
    t.bigint "haris_sohail"
    t.bigint "babar_azam"
    t.bigint "imamulhaq"
    t.bigint "asif_ali"
    t.bigint "imad_wasim"
    t.bigint "fakhar_zaman"
    t.bigint "eoin_morgan"
    t.bigint "jason_roy"
    t.bigint "jonny_bairstow"
    t.bigint "james_vince"
    t.bigint "jos_buttler"
    t.bigint "ben_stokes"
    t.bigint "moeen_ali"
    t.bigint "chris_woakes"
    t.bigint "liam_dawson"
    t.bigint "tom_curran"
    t.bigint "liam_plunkett"
    t.bigint "gulbadin_naib"
    t.bigint "mohammad_shahzad"
    t.bigint "noor_ali_zadran"
    t.bigint "hazratullah_zazai"
    t.bigint "rahmat_shah"
    t.bigint "asghar_afghan"
    t.bigint "hashmatullah_shahidi"
    t.bigint "najibullah_zadran"
    t.bigint "samiullah_shinwari"
    t.bigint "mohammad_nabi"
    t.bigint "aaron_finch"
    t.bigint "david_warner"
    t.bigint "usman_khawaja"
    t.bigint "steven_smith"
    t.bigint "shaun_marsh"
    t.bigint "marcus_stoinis"
    t.bigint "alex_carey"
    t.bigint "nathan_coulternile"
    t.bigint "jason_behrendorff"
    t.bigint "kane_richardson"
    t.bigint "mashrafe_mortaza"
    t.bigint "tamim_iqbal"
    t.bigint "liton_das"
    t.bigint "soumya_sarkar"
    t.bigint "mushfiqur_rahim"
    t.bigint "mahmudullah_riyad"
    t.bigint "shakib_al_hasan"
    t.bigint "mohammad_mithun"
    t.bigint "sabbir_rahman"
    t.bigint "kane_williamson"
    t.bigint "tom_blundell"
    t.bigint "trent_boult"
    t.bigint "colin_de_grandhomme"
    t.bigint "lockie_ferguson"
    t.bigint "_martin_guptill"
    t.bigint "matt_henry"
    t.bigint "tom_latham_wk"
    t.bigint "colin_munro"
    t.bigint "faf_du_plessis"
    t.bigint "quinton_de_kock"
    t.bigint "david_miller"
    t.bigint "jp_duminy"
    t.bigint "hashim_amla"
    t.bigint "aiden_markram"
    t.bigint "rassie_van_der_dussen"
    t.bigint "dwaine_pretorius"
    t.bigint "andile_phehlukwayo"
    t.bigint "dimuth_karunaratne"
    t.bigint "angelo_mathews"
    t.bigint "thisara_perera"
    t.bigint "kusal_perera"
    t.bigint "dhananjaya_de_silva"
    t.bigint "kusal_mendis"
    t.bigint "isuru_udana"
    t.bigint "milinda_siriwardana"
    t.bigint "avishka_fernando"
    t.index ["id"], name: "ix_australia_id", using: :btree
  end

  create_table "bangladesh", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "id"
    t.bigint "dhoni"
    t.bigint "virat"
    t.bigint "rohit_sharma"
    t.bigint "dhawan"
    t.bigint "jadhav"
    t.bigint "hardik_pandya"
    t.bigint "bhuvneshwar_kumar"
    t.bigint "kuldeep_yadav"
    t.bigint "yuzvendra_chahal"
    t.bigint "jasprit_bumrah"
    t.bigint "mohammed_shami"
    t.bigint "vijay_shankar"
    t.bigint "dinesh_karthik"
    t.bigint "kl_rahul"
    t.bigint "ravindra_jadeja"
    t.bigint "shoaib_malik"
    t.bigint "mohammad_hafeez"
    t.bigint "sarfaraz_ahmed"
    t.bigint "wahab_riaz"
    t.bigint "mohammad_amir"
    t.bigint "haris_sohail"
    t.bigint "babar_azam"
    t.bigint "imamulhaq"
    t.bigint "asif_ali"
    t.bigint "imad_wasim"
    t.bigint "fakhar_zaman"
    t.bigint "eoin_morgan"
    t.bigint "jason_roy"
    t.bigint "jonny_bairstow"
    t.bigint "james_vince"
    t.bigint "jos_buttler"
    t.bigint "ben_stokes"
    t.bigint "moeen_ali"
    t.bigint "chris_woakes"
    t.bigint "liam_dawson"
    t.bigint "tom_curran"
    t.bigint "liam_plunkett"
    t.bigint "gulbadin_naib"
    t.bigint "mohammad_shahzad"
    t.bigint "noor_ali_zadran"
    t.bigint "hazratullah_zazai"
    t.bigint "rahmat_shah"
    t.bigint "asghar_afghan"
    t.bigint "hashmatullah_shahidi"
    t.bigint "najibullah_zadran"
    t.bigint "samiullah_shinwari"
    t.bigint "mohammad_nabi"
    t.bigint "aaron_finch"
    t.bigint "david_warner"
    t.bigint "usman_khawaja"
    t.bigint "steven_smith"
    t.bigint "shaun_marsh"
    t.bigint "marcus_stoinis"
    t.bigint "alex_carey"
    t.bigint "nathan_coulternile"
    t.bigint "jason_behrendorff"
    t.bigint "kane_richardson"
    t.bigint "mashrafe_mortaza"
    t.bigint "tamim_iqbal"
    t.bigint "liton_das"
    t.bigint "soumya_sarkar"
    t.bigint "mushfiqur_rahim"
    t.bigint "mahmudullah_riyad"
    t.bigint "shakib_al_hasan"
    t.bigint "mohammad_mithun"
    t.bigint "sabbir_rahman"
    t.bigint "kane_williamson"
    t.bigint "tom_blundell"
    t.bigint "trent_boult"
    t.bigint "colin_de_grandhomme"
    t.bigint "lockie_ferguson"
    t.bigint "_martin_guptill"
    t.bigint "matt_henry"
    t.bigint "tom_latham_wk"
    t.bigint "colin_munro"
    t.bigint "faf_du_plessis"
    t.bigint "quinton_de_kock"
    t.bigint "david_miller"
    t.bigint "jp_duminy"
    t.bigint "hashim_amla"
    t.bigint "aiden_markram"
    t.bigint "rassie_van_der_dussen"
    t.bigint "dwaine_pretorius"
    t.bigint "andile_phehlukwayo"
    t.bigint "dimuth_karunaratne"
    t.bigint "angelo_mathews"
    t.bigint "thisara_perera"
    t.bigint "kusal_perera"
    t.bigint "dhananjaya_de_silva"
    t.bigint "kusal_mendis"
    t.bigint "isuru_udana"
    t.bigint "milinda_siriwardana"
    t.bigint "avishka_fernando"
    t.index ["id"], name: "ix_bangladesh_id", using: :btree
  end

  create_table "country", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "id"
    t.bigint "india"
    t.bigint "pakistan"
    t.bigint "sri_lanka"
    t.bigint "england"
    t.bigint "afganistan"
    t.bigint "australia"
    t.bigint "bangladesh"
    t.bigint "new_zealand"
    t.bigint "south_africa"
    t.bigint "west_indies"
    t.index ["id"], name: "ix_country_id", using: :btree
  end

  create_table "england", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "id"
    t.bigint "dhoni"
    t.bigint "virat"
    t.bigint "rohit_sharma"
    t.bigint "dhawan"
    t.bigint "jadhav"
    t.bigint "hardik_pandya"
    t.bigint "bhuvneshwar_kumar"
    t.bigint "kuldeep_yadav"
    t.bigint "yuzvendra_chahal"
    t.bigint "jasprit_bumrah"
    t.bigint "mohammed_shami"
    t.bigint "vijay_shankar"
    t.bigint "dinesh_karthik"
    t.bigint "kl_rahul"
    t.bigint "ravindra_jadeja"
    t.bigint "shoaib_malik"
    t.bigint "mohammad_hafeez"
    t.bigint "sarfaraz_ahmed"
    t.bigint "wahab_riaz"
    t.bigint "mohammad_amir"
    t.bigint "haris_sohail"
    t.bigint "babar_azam"
    t.bigint "imamulhaq"
    t.bigint "asif_ali"
    t.bigint "imad_wasim"
    t.bigint "fakhar_zaman"
    t.bigint "eoin_morgan"
    t.bigint "jason_roy"
    t.bigint "jonny_bairstow"
    t.bigint "james_vince"
    t.bigint "jos_buttler"
    t.bigint "ben_stokes"
    t.bigint "moeen_ali"
    t.bigint "chris_woakes"
    t.bigint "liam_dawson"
    t.bigint "tom_curran"
    t.bigint "liam_plunkett"
    t.bigint "gulbadin_naib"
    t.bigint "mohammad_shahzad"
    t.bigint "noor_ali_zadran"
    t.bigint "hazratullah_zazai"
    t.bigint "rahmat_shah"
    t.bigint "asghar_afghan"
    t.bigint "hashmatullah_shahidi"
    t.bigint "najibullah_zadran"
    t.bigint "samiullah_shinwari"
    t.bigint "mohammad_nabi"
    t.bigint "aaron_finch"
    t.bigint "david_warner"
    t.bigint "usman_khawaja"
    t.bigint "steven_smith"
    t.bigint "shaun_marsh"
    t.bigint "marcus_stoinis"
    t.bigint "alex_carey"
    t.bigint "nathan_coulternile"
    t.bigint "jason_behrendorff"
    t.bigint "kane_richardson"
    t.bigint "mashrafe_mortaza"
    t.bigint "tamim_iqbal"
    t.bigint "liton_das"
    t.bigint "soumya_sarkar"
    t.bigint "mushfiqur_rahim"
    t.bigint "mahmudullah_riyad"
    t.bigint "shakib_al_hasan"
    t.bigint "mohammad_mithun"
    t.bigint "sabbir_rahman"
    t.bigint "kane_williamson"
    t.bigint "tom_blundell"
    t.bigint "trent_boult"
    t.bigint "colin_de_grandhomme"
    t.bigint "lockie_ferguson"
    t.bigint "_martin_guptill"
    t.bigint "matt_henry"
    t.bigint "tom_latham_wk"
    t.bigint "colin_munro"
    t.bigint "faf_du_plessis"
    t.bigint "quinton_de_kock"
    t.bigint "david_miller"
    t.bigint "jp_duminy"
    t.bigint "hashim_amla"
    t.bigint "aiden_markram"
    t.bigint "rassie_van_der_dussen"
    t.bigint "dwaine_pretorius"
    t.bigint "andile_phehlukwayo"
    t.bigint "dimuth_karunaratne"
    t.bigint "angelo_mathews"
    t.bigint "thisara_perera"
    t.bigint "kusal_perera"
    t.bigint "dhananjaya_de_silva"
    t.bigint "kusal_mendis"
    t.bigint "isuru_udana"
    t.bigint "milinda_siriwardana"
    t.bigint "avishka_fernando"
    t.index ["id"], name: "ix_england_id", using: :btree
  end

  create_table "india", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "id"
    t.bigint "dhoni"
    t.bigint "virat"
    t.bigint "rohit_sharma"
    t.bigint "dhawan"
    t.bigint "jadhav"
    t.bigint "hardik_pandya"
    t.bigint "bhuvneshwar_kumar"
    t.bigint "kuldeep_yadav"
    t.bigint "yuzvendra_chahal"
    t.bigint "jasprit_bumrah"
    t.bigint "mohammed_shami"
    t.bigint "vijay_shankar"
    t.bigint "dinesh_karthik"
    t.bigint "kl_rahul"
    t.bigint "ravindra_jadeja"
    t.bigint "shoaib_malik"
    t.bigint "mohammad_hafeez"
    t.bigint "sarfaraz_ahmed"
    t.bigint "wahab_riaz"
    t.bigint "mohammad_amir"
    t.bigint "haris_sohail"
    t.bigint "babar_azam"
    t.bigint "imamulhaq"
    t.bigint "asif_ali"
    t.bigint "imad_wasim"
    t.bigint "fakhar_zaman"
    t.bigint "eoin_morgan"
    t.bigint "jason_roy"
    t.bigint "jonny_bairstow"
    t.bigint "james_vince"
    t.bigint "jos_buttler"
    t.bigint "ben_stokes"
    t.bigint "moeen_ali"
    t.bigint "chris_woakes"
    t.bigint "liam_dawson"
    t.bigint "tom_curran"
    t.bigint "liam_plunkett"
    t.bigint "gulbadin_naib"
    t.bigint "mohammad_shahzad"
    t.bigint "noor_ali_zadran"
    t.bigint "hazratullah_zazai"
    t.bigint "rahmat_shah"
    t.bigint "asghar_afghan"
    t.bigint "hashmatullah_shahidi"
    t.bigint "najibullah_zadran"
    t.bigint "samiullah_shinwari"
    t.bigint "mohammad_nabi"
    t.bigint "aaron_finch"
    t.bigint "david_warner"
    t.bigint "usman_khawaja"
    t.bigint "steven_smith"
    t.bigint "shaun_marsh"
    t.bigint "marcus_stoinis"
    t.bigint "alex_carey"
    t.bigint "nathan_coulternile"
    t.bigint "jason_behrendorff"
    t.bigint "kane_richardson"
    t.bigint "mashrafe_mortaza"
    t.bigint "tamim_iqbal"
    t.bigint "liton_das"
    t.bigint "soumya_sarkar"
    t.bigint "mushfiqur_rahim"
    t.bigint "mahmudullah_riyad"
    t.bigint "shakib_al_hasan"
    t.bigint "mohammad_mithun"
    t.bigint "sabbir_rahman"
    t.bigint "kane_williamson"
    t.bigint "tom_blundell"
    t.bigint "trent_boult"
    t.bigint "colin_de_grandhomme"
    t.bigint "lockie_ferguson"
    t.bigint "_martin_guptill"
    t.bigint "matt_henry"
    t.bigint "tom_latham_wk"
    t.bigint "colin_munro"
    t.bigint "faf_du_plessis"
    t.bigint "quinton_de_kock"
    t.bigint "david_miller"
    t.bigint "jp_duminy"
    t.bigint "hashim_amla"
    t.bigint "aiden_markram"
    t.bigint "rassie_van_der_dussen"
    t.bigint "dwaine_pretorius"
    t.bigint "andile_phehlukwayo"
    t.bigint "dimuth_karunaratne"
    t.bigint "angelo_mathews"
    t.bigint "thisara_perera"
    t.bigint "kusal_perera"
    t.bigint "dhananjaya_de_silva"
    t.bigint "kusal_mendis"
    t.bigint "isuru_udana"
    t.bigint "milinda_siriwardana"
    t.bigint "avishka_fernando"
    t.index ["id"], name: "ix_india_id", using: :btree
  end

  create_table "new_zealand", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "id"
    t.bigint "dhoni"
    t.bigint "virat"
    t.bigint "rohit_sharma"
    t.bigint "dhawan"
    t.bigint "jadhav"
    t.bigint "hardik_pandya"
    t.bigint "bhuvneshwar_kumar"
    t.bigint "kuldeep_yadav"
    t.bigint "yuzvendra_chahal"
    t.bigint "jasprit_bumrah"
    t.bigint "mohammed_shami"
    t.bigint "vijay_shankar"
    t.bigint "dinesh_karthik"
    t.bigint "kl_rahul"
    t.bigint "ravindra_jadeja"
    t.bigint "shoaib_malik"
    t.bigint "mohammad_hafeez"
    t.bigint "sarfaraz_ahmed"
    t.bigint "wahab_riaz"
    t.bigint "mohammad_amir"
    t.bigint "haris_sohail"
    t.bigint "babar_azam"
    t.bigint "imamulhaq"
    t.bigint "asif_ali"
    t.bigint "imad_wasim"
    t.bigint "fakhar_zaman"
    t.bigint "eoin_morgan"
    t.bigint "jason_roy"
    t.bigint "jonny_bairstow"
    t.bigint "james_vince"
    t.bigint "jos_buttler"
    t.bigint "ben_stokes"
    t.bigint "moeen_ali"
    t.bigint "chris_woakes"
    t.bigint "liam_dawson"
    t.bigint "tom_curran"
    t.bigint "liam_plunkett"
    t.bigint "gulbadin_naib"
    t.bigint "mohammad_shahzad"
    t.bigint "noor_ali_zadran"
    t.bigint "hazratullah_zazai"
    t.bigint "rahmat_shah"
    t.bigint "asghar_afghan"
    t.bigint "hashmatullah_shahidi"
    t.bigint "najibullah_zadran"
    t.bigint "samiullah_shinwari"
    t.bigint "mohammad_nabi"
    t.bigint "aaron_finch"
    t.bigint "david_warner"
    t.bigint "usman_khawaja"
    t.bigint "steven_smith"
    t.bigint "shaun_marsh"
    t.bigint "marcus_stoinis"
    t.bigint "alex_carey"
    t.bigint "nathan_coulternile"
    t.bigint "jason_behrendorff"
    t.bigint "kane_richardson"
    t.bigint "mashrafe_mortaza"
    t.bigint "tamim_iqbal"
    t.bigint "liton_das"
    t.bigint "soumya_sarkar"
    t.bigint "mushfiqur_rahim"
    t.bigint "mahmudullah_riyad"
    t.bigint "shakib_al_hasan"
    t.bigint "mohammad_mithun"
    t.bigint "sabbir_rahman"
    t.bigint "kane_williamson"
    t.bigint "tom_blundell"
    t.bigint "trent_boult"
    t.bigint "colin_de_grandhomme"
    t.bigint "lockie_ferguson"
    t.bigint "_martin_guptill"
    t.bigint "matt_henry"
    t.bigint "tom_latham_wk"
    t.bigint "colin_munro"
    t.bigint "faf_du_plessis"
    t.bigint "quinton_de_kock"
    t.bigint "david_miller"
    t.bigint "jp_duminy"
    t.bigint "hashim_amla"
    t.bigint "aiden_markram"
    t.bigint "rassie_van_der_dussen"
    t.bigint "dwaine_pretorius"
    t.bigint "andile_phehlukwayo"
    t.bigint "dimuth_karunaratne"
    t.bigint "angelo_mathews"
    t.bigint "thisara_perera"
    t.bigint "kusal_perera"
    t.bigint "dhananjaya_de_silva"
    t.bigint "kusal_mendis"
    t.bigint "isuru_udana"
    t.bigint "milinda_siriwardana"
    t.bigint "avishka_fernando"
    t.index ["id"], name: "ix_new_zealand_id", using: :btree
  end

  create_table "pakistan", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "id"
    t.bigint "dhoni"
    t.bigint "virat"
    t.bigint "rohit_sharma"
    t.bigint "dhawan"
    t.bigint "jadhav"
    t.bigint "hardik_pandya"
    t.bigint "bhuvneshwar_kumar"
    t.bigint "kuldeep_yadav"
    t.bigint "yuzvendra_chahal"
    t.bigint "jasprit_bumrah"
    t.bigint "mohammed_shami"
    t.bigint "vijay_shankar"
    t.bigint "dinesh_karthik"
    t.bigint "kl_rahul"
    t.bigint "ravindra_jadeja"
    t.bigint "shoaib_malik"
    t.bigint "mohammad_hafeez"
    t.bigint "sarfaraz_ahmed"
    t.bigint "wahab_riaz"
    t.bigint "mohammad_amir"
    t.bigint "haris_sohail"
    t.bigint "babar_azam"
    t.bigint "imamulhaq"
    t.bigint "asif_ali"
    t.bigint "imad_wasim"
    t.bigint "fakhar_zaman"
    t.bigint "eoin_morgan"
    t.bigint "jason_roy"
    t.bigint "jonny_bairstow"
    t.bigint "james_vince"
    t.bigint "jos_buttler"
    t.bigint "ben_stokes"
    t.bigint "moeen_ali"
    t.bigint "chris_woakes"
    t.bigint "liam_dawson"
    t.bigint "tom_curran"
    t.bigint "liam_plunkett"
    t.bigint "gulbadin_naib"
    t.bigint "mohammad_shahzad"
    t.bigint "noor_ali_zadran"
    t.bigint "hazratullah_zazai"
    t.bigint "rahmat_shah"
    t.bigint "asghar_afghan"
    t.bigint "hashmatullah_shahidi"
    t.bigint "najibullah_zadran"
    t.bigint "samiullah_shinwari"
    t.bigint "mohammad_nabi"
    t.bigint "aaron_finch"
    t.bigint "david_warner"
    t.bigint "usman_khawaja"
    t.bigint "steven_smith"
    t.bigint "shaun_marsh"
    t.bigint "marcus_stoinis"
    t.bigint "alex_carey"
    t.bigint "nathan_coulternile"
    t.bigint "jason_behrendorff"
    t.bigint "kane_richardson"
    t.bigint "mashrafe_mortaza"
    t.bigint "tamim_iqbal"
    t.bigint "liton_das"
    t.bigint "soumya_sarkar"
    t.bigint "mushfiqur_rahim"
    t.bigint "mahmudullah_riyad"
    t.bigint "shakib_al_hasan"
    t.bigint "mohammad_mithun"
    t.bigint "sabbir_rahman"
    t.bigint "kane_williamson"
    t.bigint "tom_blundell"
    t.bigint "trent_boult"
    t.bigint "colin_de_grandhomme"
    t.bigint "lockie_ferguson"
    t.bigint "_martin_guptill"
    t.bigint "matt_henry"
    t.bigint "tom_latham_wk"
    t.bigint "colin_munro"
    t.bigint "faf_du_plessis"
    t.bigint "quinton_de_kock"
    t.bigint "david_miller"
    t.bigint "jp_duminy"
    t.bigint "hashim_amla"
    t.bigint "aiden_markram"
    t.bigint "rassie_van_der_dussen"
    t.bigint "dwaine_pretorius"
    t.bigint "andile_phehlukwayo"
    t.bigint "dimuth_karunaratne"
    t.bigint "angelo_mathews"
    t.bigint "thisara_perera"
    t.bigint "kusal_perera"
    t.bigint "dhananjaya_de_silva"
    t.bigint "kusal_mendis"
    t.bigint "isuru_udana"
    t.bigint "milinda_siriwardana"
    t.bigint "avishka_fernando"
    t.index ["id"], name: "ix_pakistan_id", using: :btree
  end

  create_table "south_africa", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "id"
    t.bigint "dhoni"
    t.bigint "virat"
    t.bigint "rohit_sharma"
    t.bigint "dhawan"
    t.bigint "jadhav"
    t.bigint "hardik_pandya"
    t.bigint "bhuvneshwar_kumar"
    t.bigint "kuldeep_yadav"
    t.bigint "yuzvendra_chahal"
    t.bigint "jasprit_bumrah"
    t.bigint "mohammed_shami"
    t.bigint "vijay_shankar"
    t.bigint "dinesh_karthik"
    t.bigint "kl_rahul"
    t.bigint "ravindra_jadeja"
    t.bigint "shoaib_malik"
    t.bigint "mohammad_hafeez"
    t.bigint "sarfaraz_ahmed"
    t.bigint "wahab_riaz"
    t.bigint "mohammad_amir"
    t.bigint "haris_sohail"
    t.bigint "babar_azam"
    t.bigint "imamulhaq"
    t.bigint "asif_ali"
    t.bigint "imad_wasim"
    t.bigint "fakhar_zaman"
    t.bigint "eoin_morgan"
    t.bigint "jason_roy"
    t.bigint "jonny_bairstow"
    t.bigint "james_vince"
    t.bigint "jos_buttler"
    t.bigint "ben_stokes"
    t.bigint "moeen_ali"
    t.bigint "chris_woakes"
    t.bigint "liam_dawson"
    t.bigint "tom_curran"
    t.bigint "liam_plunkett"
    t.bigint "gulbadin_naib"
    t.bigint "mohammad_shahzad"
    t.bigint "noor_ali_zadran"
    t.bigint "hazratullah_zazai"
    t.bigint "rahmat_shah"
    t.bigint "asghar_afghan"
    t.bigint "hashmatullah_shahidi"
    t.bigint "najibullah_zadran"
    t.bigint "samiullah_shinwari"
    t.bigint "mohammad_nabi"
    t.bigint "aaron_finch"
    t.bigint "david_warner"
    t.bigint "usman_khawaja"
    t.bigint "steven_smith"
    t.bigint "shaun_marsh"
    t.bigint "marcus_stoinis"
    t.bigint "alex_carey"
    t.bigint "nathan_coulternile"
    t.bigint "jason_behrendorff"
    t.bigint "kane_richardson"
    t.bigint "mashrafe_mortaza"
    t.bigint "tamim_iqbal"
    t.bigint "liton_das"
    t.bigint "soumya_sarkar"
    t.bigint "mushfiqur_rahim"
    t.bigint "mahmudullah_riyad"
    t.bigint "shakib_al_hasan"
    t.bigint "mohammad_mithun"
    t.bigint "sabbir_rahman"
    t.bigint "kane_williamson"
    t.bigint "tom_blundell"
    t.bigint "trent_boult"
    t.bigint "colin_de_grandhomme"
    t.bigint "lockie_ferguson"
    t.bigint "_martin_guptill"
    t.bigint "matt_henry"
    t.bigint "tom_latham_wk"
    t.bigint "colin_munro"
    t.bigint "faf_du_plessis"
    t.bigint "quinton_de_kock"
    t.bigint "david_miller"
    t.bigint "jp_duminy"
    t.bigint "hashim_amla"
    t.bigint "aiden_markram"
    t.bigint "rassie_van_der_dussen"
    t.bigint "dwaine_pretorius"
    t.bigint "andile_phehlukwayo"
    t.bigint "dimuth_karunaratne"
    t.bigint "angelo_mathews"
    t.bigint "thisara_perera"
    t.bigint "kusal_perera"
    t.bigint "dhananjaya_de_silva"
    t.bigint "kusal_mendis"
    t.bigint "isuru_udana"
    t.bigint "milinda_siriwardana"
    t.bigint "avishka_fernando"
    t.index ["id"], name: "ix_south_africa_id", using: :btree
  end

  create_table "sri_lanka", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "id"
    t.bigint "dhoni"
    t.bigint "virat"
    t.bigint "rohit_sharma"
    t.bigint "dhawan"
    t.bigint "jadhav"
    t.bigint "hardik_pandya"
    t.bigint "bhuvneshwar_kumar"
    t.bigint "kuldeep_yadav"
    t.bigint "yuzvendra_chahal"
    t.bigint "jasprit_bumrah"
    t.bigint "mohammed_shami"
    t.bigint "vijay_shankar"
    t.bigint "dinesh_karthik"
    t.bigint "kl_rahul"
    t.bigint "ravindra_jadeja"
    t.bigint "shoaib_malik"
    t.bigint "mohammad_hafeez"
    t.bigint "sarfaraz_ahmed"
    t.bigint "wahab_riaz"
    t.bigint "mohammad_amir"
    t.bigint "haris_sohail"
    t.bigint "babar_azam"
    t.bigint "imamulhaq"
    t.bigint "asif_ali"
    t.bigint "imad_wasim"
    t.bigint "fakhar_zaman"
    t.bigint "eoin_morgan"
    t.bigint "jason_roy"
    t.bigint "jonny_bairstow"
    t.bigint "james_vince"
    t.bigint "jos_buttler"
    t.bigint "ben_stokes"
    t.bigint "moeen_ali"
    t.bigint "chris_woakes"
    t.bigint "liam_dawson"
    t.bigint "tom_curran"
    t.bigint "liam_plunkett"
    t.bigint "gulbadin_naib"
    t.bigint "mohammad_shahzad"
    t.bigint "noor_ali_zadran"
    t.bigint "hazratullah_zazai"
    t.bigint "rahmat_shah"
    t.bigint "asghar_afghan"
    t.bigint "hashmatullah_shahidi"
    t.bigint "najibullah_zadran"
    t.bigint "samiullah_shinwari"
    t.bigint "mohammad_nabi"
    t.bigint "aaron_finch"
    t.bigint "david_warner"
    t.bigint "usman_khawaja"
    t.bigint "steven_smith"
    t.bigint "shaun_marsh"
    t.bigint "marcus_stoinis"
    t.bigint "alex_carey"
    t.bigint "nathan_coulternile"
    t.bigint "jason_behrendorff"
    t.bigint "kane_richardson"
    t.bigint "mashrafe_mortaza"
    t.bigint "tamim_iqbal"
    t.bigint "liton_das"
    t.bigint "soumya_sarkar"
    t.bigint "mushfiqur_rahim"
    t.bigint "mahmudullah_riyad"
    t.bigint "shakib_al_hasan"
    t.bigint "mohammad_mithun"
    t.bigint "sabbir_rahman"
    t.bigint "kane_williamson"
    t.bigint "tom_blundell"
    t.bigint "trent_boult"
    t.bigint "colin_de_grandhomme"
    t.bigint "lockie_ferguson"
    t.bigint "_martin_guptill"
    t.bigint "matt_henry"
    t.bigint "tom_latham_wk"
    t.bigint "colin_munro"
    t.bigint "faf_du_plessis"
    t.bigint "quinton_de_kock"
    t.bigint "david_miller"
    t.bigint "jp_duminy"
    t.bigint "hashim_amla"
    t.bigint "aiden_markram"
    t.bigint "rassie_van_der_dussen"
    t.bigint "dwaine_pretorius"
    t.bigint "andile_phehlukwayo"
    t.bigint "dimuth_karunaratne"
    t.bigint "angelo_mathews"
    t.bigint "thisara_perera"
    t.bigint "kusal_perera"
    t.bigint "dhananjaya_de_silva"
    t.bigint "kusal_mendis"
    t.bigint "isuru_udana"
    t.bigint "milinda_siriwardana"
    t.bigint "avishka_fernando"
    t.index ["id"], name: "ix_sri_lanka_id", using: :btree
  end

  create_table "tweetsentiments", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text   "tweet",     limit: 65535
    t.string "sentiment"
  end

  create_table "twitter", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "tweet_id",    limit: 250
    t.string   "screen_name", limit: 128
    t.datetime "created_at"
    t.text     "location",    limit: 65535
    t.text     "text",        limit: 65535
  end

  create_table "west_indies", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "id"
    t.bigint "dhoni"
    t.bigint "virat"
    t.bigint "rohit_sharma"
    t.bigint "dhawan"
    t.bigint "jadhav"
    t.bigint "hardik_pandya"
    t.bigint "bhuvneshwar_kumar"
    t.bigint "kuldeep_yadav"
    t.bigint "yuzvendra_chahal"
    t.bigint "jasprit_bumrah"
    t.bigint "mohammed_shami"
    t.bigint "vijay_shankar"
    t.bigint "dinesh_karthik"
    t.bigint "kl_rahul"
    t.bigint "ravindra_jadeja"
    t.bigint "shoaib_malik"
    t.bigint "mohammad_hafeez"
    t.bigint "sarfaraz_ahmed"
    t.bigint "wahab_riaz"
    t.bigint "mohammad_amir"
    t.bigint "haris_sohail"
    t.bigint "babar_azam"
    t.bigint "imamulhaq"
    t.bigint "asif_ali"
    t.bigint "imad_wasim"
    t.bigint "fakhar_zaman"
    t.bigint "eoin_morgan"
    t.bigint "jason_roy"
    t.bigint "jonny_bairstow"
    t.bigint "james_vince"
    t.bigint "jos_buttler"
    t.bigint "ben_stokes"
    t.bigint "moeen_ali"
    t.bigint "chris_woakes"
    t.bigint "liam_dawson"
    t.bigint "tom_curran"
    t.bigint "liam_plunkett"
    t.bigint "gulbadin_naib"
    t.bigint "mohammad_shahzad"
    t.bigint "noor_ali_zadran"
    t.bigint "hazratullah_zazai"
    t.bigint "rahmat_shah"
    t.bigint "asghar_afghan"
    t.bigint "hashmatullah_shahidi"
    t.bigint "najibullah_zadran"
    t.bigint "samiullah_shinwari"
    t.bigint "mohammad_nabi"
    t.bigint "aaron_finch"
    t.bigint "david_warner"
    t.bigint "usman_khawaja"
    t.bigint "steven_smith"
    t.bigint "shaun_marsh"
    t.bigint "marcus_stoinis"
    t.bigint "alex_carey"
    t.bigint "nathan_coulternile"
    t.bigint "jason_behrendorff"
    t.bigint "kane_richardson"
    t.bigint "mashrafe_mortaza"
    t.bigint "tamim_iqbal"
    t.bigint "liton_das"
    t.bigint "soumya_sarkar"
    t.bigint "mushfiqur_rahim"
    t.bigint "mahmudullah_riyad"
    t.bigint "shakib_al_hasan"
    t.bigint "mohammad_mithun"
    t.bigint "sabbir_rahman"
    t.bigint "kane_williamson"
    t.bigint "tom_blundell"
    t.bigint "trent_boult"
    t.bigint "colin_de_grandhomme"
    t.bigint "lockie_ferguson"
    t.bigint "_martin_guptill"
    t.bigint "matt_henry"
    t.bigint "tom_latham_wk"
    t.bigint "colin_munro"
    t.bigint "faf_du_plessis"
    t.bigint "quinton_de_kock"
    t.bigint "david_miller"
    t.bigint "jp_duminy"
    t.bigint "hashim_amla"
    t.bigint "aiden_markram"
    t.bigint "rassie_van_der_dussen"
    t.bigint "dwaine_pretorius"
    t.bigint "andile_phehlukwayo"
    t.bigint "dimuth_karunaratne"
    t.bigint "angelo_mathews"
    t.bigint "thisara_perera"
    t.bigint "kusal_perera"
    t.bigint "dhananjaya_de_silva"
    t.bigint "kusal_mendis"
    t.bigint "isuru_udana"
    t.bigint "milinda_siriwardana"
    t.bigint "avishka_fernando"
    t.index ["id"], name: "ix_west_indies_id", using: :btree
  end

end
