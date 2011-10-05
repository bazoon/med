require 'test_helper'

class ClientTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  #
  
 test "should_not_save_without_required_fields" do
  client=Client.new
  client.father_name="D"
  client.pasp_num='930303'
  client.pasp_seria='71 72'
  client.address='town of tyumen'
  client.snils='29303'
  client.work_place='work place'
  client.work_position='work position'
  client.benefit_id='2333'
  client.veteran_id='333'
  client.mse_note='note'
  client.attach_date='01.01.2002'
  client.detach_date='01.01.2003'
  client.dlo='dlo'
  client.decease_mkb_10='mkb 10 here'
  client.special_note='note'
  client.notes='notes'
  client.phones='222'
  assert !client.save
 end


 test "should_save_with_required_fields" do
  client=Client.new
  client.name="David"
  client.surname="N"
  client.birth_date='01.01.2001'
  client.ins_company_id=1
  client.client_sex_id=1
  assert client.save
 end


  test "should_be_able_to_create_dependent" do
   client=Client.new 
   client.name="David"
   client.surname="N"
   client.birth_date='01.01.2001'
   client.ins_company_id=1
   client.client_sex_id=1
   assert client.save!

   lab_test_type=LabTestType.create!(:name => "Test")
   assert client.lab_tests.create!(:test_date=>'01.01.2010',:lab_test_type => lab_test_type,:result => "ok")
  
   diagnostic_test_type=DiagnosticTestType.create!(:name => "Test")
   assert client.diagnostic_tests.create!(:test_date=>'01.01.2010',:diagnostic_test_type => diagnostic_test_type,:result => "ok")
   
   hosp_type=HospitalizationType.create!(:name => "Ok")
   assert client.hospitalizations.create!(:actual_date => '01.01.2010',:hospitalization_type => hosp_type)

   htm_help_type=HtmHelpType.create!(:name => "Ok")
   assert client.htm_help_notes.create!(:actual_date => '01.01.2010',:htm_help_type => htm_help_type, :note => "OK")
   
   med_diagnostic_test_type=MedDiagnosticTestType.create!(:name => "Test")
   assert client.med_diagnostic_tests.create!(:test_date=>'01.01.2010',:med_diagnostic_test_type => med_diagnostic_test_type,:result => "ok")
 
   assert client.sanatorium_notes.create!(:actual_date => '01.01.2010',:neediness_reference => "Need",)
  end



  test "should_be_able_to_delete_dependent" do
   client=Client.new 
   client.name="David"
   client.surname="N"
   client.birth_date='01.01.2001'
   client.ins_company_id=1
   client.client_sex_id=1
   client.save!

   lab_test_type=LabTestType.create!(:name => "Test")
   lab_test_id = client.lab_tests.create!(:test_date=>'01.01.2010',:lab_test_type => lab_test_type,:result => "ok").id
  
   diagnostic_test_type=DiagnosticTestType.create!(:name => "Test")
   diagnistic_test_id = client.diagnostic_tests.create!(:test_date=>'01.01.2010',:diagnostic_test_type => diagnostic_test_type,:result => "ok").id
   
   hosp_type=HospitalizationType.create!(:name => "Ok")
   hosp_id = client.hospitalizations.create!(:actual_date => '01.01.2010',:hospitalization_type => hosp_type).id

   htm_help_type=HtmHelpType.create!(:name => "Ok")
   htm_help_id = client.htm_help_notes.create!(:actual_date => '01.01.2010',:htm_help_type => htm_help_type, :note => "OK").id
   
   med_diagnostic_test_type=MedDiagnosticTestType.create!(:name => "Test")
   med_diagnostic_id = client.med_diagnostic_tests.create!(:test_date=>'01.01.2010',:med_diagnostic_test_type => med_diagnostic_test_type,:result => "ok").id
 
   sanatorium_id = client.sanatorium_notes.create!(:actual_date => '01.01.2010',:neediness_reference => "Need").id

   client.destroy

   assert_raise ActiveRecord::RecordNotFound do
     LabTest.find(lab_test_id)
     DiagnosticTest.find(diagnostic_test_id)
     Hospitalizaion.find(hosp_id)
     HtmHelpType.find(htm_help_id)
     MedDiagnostic.find(med_diagnostic_id)
     Sanatorium.find(sanatorium_id)
   end
   

  end






end
