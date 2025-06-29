terraform -chdir="environments/develop" plan ^
-target="module.meet" ^
-target="module.route-meet-to-sa-east-1" ^
-out="tfplan-aws-saeast1-meet-dev"