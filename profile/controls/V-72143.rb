control "V-72143" do
  title "The operating system must generate audit records for all
successful/unsuccessful account access count events."
  desc  "Without generating audit records that are specific to the security and
mission needs of the organization, it would be difficult to establish,
correlate, and investigate the events relating to an incident or identify those
responsible for one.Audit records can be generated from various components
within the information system (e.g., module or policy filter)."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000392-GPOS-00172"
  tag "satisfies": ["SRG-OS-000392-GPOS-00172", "SRG-OS-000470-GPOS-00214",
"SRG-OS-000473-GPOS-00218"]
  tag "gid": "V-72143"
  tag "rid": "SV-86767r2_rule"
  tag "stig_id": "RHEL-07-030600"
  tag "fix_id": "F-78495r4_fix"
  tag "cci": ["CCI-000126", "CCI-000172", "CCI-002884"]
  tag "nist": ["AU-2 d", "AU-12 c", "MA-4 (1) (a)", "Rev_4"]
  tag "false_negatives": nil
  tag "false_positives": nil
  tag "documentable": false
  tag "mitigations": nil
  tag "severity_override_guidance": false
  tag "potential_impacts": nil
  tag "third_party_tools": nil
  tag "mitigation_controls": nil
  tag "responsibility": nil
  tag "ia_controls": nil
  tag "check": "Verify the operating system generates audit records when
successful/unsuccessful account access count events occur. Check the file
system rule in \"/etc/audit/audit.rules\" with the following commands: # grep
-i /var/log/tallylog /etc/audit/audit.rules-w /var/log/tallylog -p wa -k
loginsIf the command does not return any output, this is a finding."
  tag "fix": "Configure the operating system to generate audit records when
successful/unsuccessful account access count events occur.Add or update the
following rule in \"/etc/audit/rules.d/audit.rules\": -w /var/log/tallylog -p
wa -k loginsThe audit daemon must be restarted for the changes to take effect."
end

