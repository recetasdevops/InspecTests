title "Check database pasionporlosbits"

control 'azurerm_sql_database' do
    title "Test database settings"
    desc "Test settings of pasionporlosbits database"
    describe azurerm_sql_database(resource_group: 'madriddotnet-rg', server_name: 'pasionporlosbitsdbserver', database_name: 'pasionporlosbitsdatabase') do
        it            { should exist }
        its('name')   { should eq "pasionporlosbitsdatabase"}
        its('location') { should eq "westeurope"}
        its('sku.name') { should eq "Basic"}
        its('properties.collation') { should eq "SQL_Latin1_General_CP1_CI_AS"}
      end
end
