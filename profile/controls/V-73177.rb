control "V-73177" do
  title "Wireless network adapters must be disabled."
  desc  "The use of wireless networking can introduce many different attack
vectors into the organization's network. Common attack vectors such as
malicious association and ad hoc networks will allow an attacker to spoof a
wireless access point (AP), allowing validated systems to connect to the
malicious AP and enabling the attacker to monitor and record network traffic.
These malicious APs can also serve to create a man-in-the-middle attack or be
used to create a denial of service to valid network resources."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000424-GPOS-00188"
  tag "gid": "V-73177"
  tag "rid": "SV-87829r1_rule"
  tag "stig_id": "RHEL-07-041010"
  tag "fix_id": "F-79623r1_fix"
  tag "cci": ["CCI-001443", "CCI-001444", "CCI-002418"]
  tag "nist": ["AC-18 (1)", "AC-18 (1)", "SC-8", "Rev_4"]
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
  tag "check": "Verify that there are no wireless interfaces configured on the
system.This is N/A for systems that do not have wireless network adapters.Check
for the presence of active wireless interfaces with the following command:#
nmcli deviceDEVICE TYPE STATEeth0 ethernet connectedwlp3s0 wifi disconnectedlo
loopback unmanagedIf a wireless interface is configured and its use on the
system is not documented with the Information System Security Officer (ISSO),
this is a finding."
  tag "fix": "Configure the system to disable all wireless network interfaces
with the following command:#nmcli radio wifi off"
end

