ALTER NETWORK POLICY mypolicy1 UNSET COMMENT;

-- TODO
ALTER NETWORK POLICY mypolicy1 SET
  ALLOWED_NETWORK_RULE_LIST = ('policy1', policy2),
  BLOCKED_NETWORK_RULE_LIST = (policy3, 'policy4'),
  ALLOWED_IP_LIST = ('10.0.8.0/32', '10.168.255.12'),
  BLOCKED_IP_LIST = ('')
  COMMENT = 'A new comment'
;

ALTER NETWORK POLICY IF EXISTS mypolicy1 ADD
  ALLOWED_NETWORK_RULE_LIST = security.network_rules.ingress_on_vpn;

ALTER NETWORK POLICY IF EXISTS mypolicy1 REMOVE
  BLOCKED_NETWORK_RULE_LIST = blocked_list;

ALTER NETWORK POLICY "my quoted policy" RENAME TO unquoted_policy;
