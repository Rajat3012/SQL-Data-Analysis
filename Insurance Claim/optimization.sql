--Task 4:Optimization with 
  --Discuss the creation of indexes on any columns used frequently in WHERE clauses or as join keys to improve performance.

  create index idx_claims_claimdate on Claims(ClaimDate)