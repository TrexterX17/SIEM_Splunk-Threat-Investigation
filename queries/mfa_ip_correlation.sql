-- Figure 7: Correlation of MFA Events with Attacker IP
-- Purpose: Associate MFA activity with known malicious IP

index=final_project sourcetype=mfa
| search src_ip=180.76.54.93
| stats count by user action application
