terraform -chdir="environments/develop" apply ^
-target="module.meet" ^
-target="module.route-meet-to-sa-east-1" ^
-auto-approve "tfplan-aws-saeast1-meet-dev"