# Verify ExecutionPolicy
Get-ExecutionPolicy

# Try to run script
.\script.ps1

# Create a new Certificate
New-SelfSignedCertificate -CertStoreLocation cert:\currentuser\my `
-Subject "CN=TechSnips CodeWorks" `
-KeyAlgorithm RSA `
-KeyLength 2048 `
-Provider "Microsoft Enhanced RSA and AES Cryptographic Provider" `
-KeyExportPolicy Exportable `
-KeyUsage DigitalSignature `
-Type CodeSigningCert

# Sign script with Certificate
$cert = @(Get-ChildItem Cert:\CurrentUser\My -CodeSigningCert)[0]
Set-AuthenticodeSignature -FilePath .\script.ps1 -Certificate $cert

# Try to run script again
.\script.ps1