source .env
az postgres server create --resource-group $AZ_GROUP --location 'Central US' --name $DB_HOST --admin-user $DB_USER --admin-password $DB_PASSWORD --sku-name B_Gen5_1
az postgres server firewall-rule create --resource-group $AZ_GROUP --server-name $DB_HOST --start-ip-address 0.0.0.0 --end-ip-address 255.255.255.255 --name AllowAllIPs
az postgres db create --resource-group $AZ_GROUP --server-name $DB_HOST --name $DB_NAME
az postgres server show --resource-group $AZ_GROUP --name $DB_HOST
