[Setup]
AppName=RegisteredAppToURL
AppVersion=1.0
AppContact=RegisteredAppToURL
AppCopyright=Copyright (C) 2014 RegisteredAppToURL.
AppPublisher=RegisteredAppToURL
AppPublisherURL=http://tomek.kownet.info/
DefaultDirName={userappdata}\RegisteredAppToURL
DefaultGroupName=RegisteredAppToURL
Compression=lzma2
SolidCompression=yes
WizardImageBackColor=clWhite
UninstallDisplayName=RegisteredAppToURL
UninstallDisplayIcon={userappdata}\RegisteredAppToURL\ico\RegisteredAppToURL.ico
UninstallFilesDir={userappdata}\RegisteredAppToURL\Uninstall
OutputBaseFilename=Setup.RegisteredAppToURL
SetupIconFile=RegisteredAppToURL.ico
PrivilegesRequired=none

#define AppsReleaseDir "C:\Users\tkow\Documents\Visual Studio 2013\Projects\RegisteredAppToURL\RegisteredAppToURL.ClientWPF\bin\Release"
#define AppsInstallatorDir "C:\Users\tkow\Documents\Visual Studio 2013\Projects\RegisteredAppToURL\RegisteredAppToURL.Installer"

#define DefaultIconRegistry "{userappdata}\RegisteredAppToURL\RegisteredAppToURL.ClientWPF.exe,0"
#define CommandRegistry "{%|%22}{userappdata}\RegisteredAppToURL\RegisteredAppToURL.ClientWPF.exe{%|%22} {%|%22}%1{%|%22}"

[Files]
; RegisteredAppToURL Files
Source: "{#AppsInstallatorDir}\RegisteredAppToURL.ico"; DestDir: "{userappdata}\RegisteredAppToURL\ico"
Source: "{#AppsReleaseDir}\RegisteredAppToURL.ClientWPF.exe"; DestDir: "{userappdata}\RegisteredAppToURL"
[Icons]
Name: "{commondesktop}\RegisteredAppToURL"; Filename: "{userappdata}\RegisteredAppToURL\RegisteredAppToURL.ClientWPF.exe"
[Languages]
Name: "en"; MessagesFile: "compiler:Default.isl"
Name: "pl"; MessagesFile: "compiler:Languages\Polish.isl"
[Registry]
Root: HKCR; Subkey: "sampleApp"; Flags: uninsdeletekey
Root: HKCR; Subkey: "sampleApp"; ValueType: string; ValueName: "Content Type"; ValueData: "application/sampleApp";
Root: HKCR; Subkey: "sampleApp"; ValueType: string; ValueName: "URL Protocol"; ValueData: "";
Root: HKCR; Subkey: "sampleApp\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{#DefaultIconRegistry}";
Root: HKCR; Subkey: "sampleApp\shell\open\command"; ValueType: string; ValueName: ""; ValueData: "{#CommandRegistry}";