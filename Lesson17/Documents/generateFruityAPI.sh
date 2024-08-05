MODULE="Modules/FruityAPI/Sources/FruityAPI/"

openapi-generator generate -i "fruityapi.yaml" -g swift5 -o "fruityapi"
rm -r $MODULE""*
cp -R "fruityapi/OpenAPIClient/Classes/OpenAPIs/". $MODULE
rm -r "fruityapi"
