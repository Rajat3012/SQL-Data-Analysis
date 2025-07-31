--Task 5:Roles and Permissions
  --Create roles:ClaimAnalyst and ClaimManager
  --'ClaimAnalyst' role should have read-only access to claim and policies data.
  --'ClaimManager' role should have full access to claim data and ability to update policy information.

  create role ClaimAnalyst Login Password 'password1'

  create role ClaimManager Login Password 'password2'

  grant select on Claims,Policies,PolicyTYpes to ClaimAnalyst

  grant select,insert,update,delete on Claims,Policies,PolicyTYpes to ClaimManager