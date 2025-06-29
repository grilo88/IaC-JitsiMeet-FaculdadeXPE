terraform -chdir="environments/develop" destroy ^
-target="module.meet" ^
-target="module.route-meet-to-sa-east-1" ^
-auto-approve