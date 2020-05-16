for %%f in (
GettingStarted_General
GettingStarted_nAudio
GettingStarted_GameSpecific
Speech_DriverNames
Speech_Swearing
Speech_TextToSpeech
Speech_PitExitPositionPrediction
Speech_PaceNotes
VoiceRecognition_InstallationTraining
VoiceRecognition_VoiceCommandsAll
VoiceRecognition_VoiceCommandsGrouped
VoiceRecognition_VoiceCommandsCheatSheet
VoiceRecognition_FreeDictationChatMessages
VoiceRecognition_CommandMacros
Overlays
GameSpecific_ForEachGame
GameSpecific_CommandLineSwitches
Properties_Properties
Properties_Profiles
About_blurb
About_Updating
About_Contact
About_KnownIssues
About_Customising_TrackLandmarks
About_Customising_VoicePacks
About_Customising_NameRequests
About_Credits
About_Donations
About_ChangeLog
) do if '%%f' neq '' copy /b menu.ht+%%f.txt+menu.ml %%f.html

for %%f in (
AssettoCorsa
AssettoCorsaCompetizione
ProjectCars
ProjectCars2
rFactor
rFactor2
) do if '%%f' neq '' (
copy /b menu.ht+GettingStarted_GameSpecific_%%f.txt+menu.ml GettingStarted_GameSpecific_%%f.html
copy /b menu.ht+GameSpecific_ForEachGame_%%f.txt+menu.ml GameSpecific_ForEachGame_%%f.html

)

copy *.html ..\docs
copy styles.css ..\docs
copy CrewChiefHelp.jpg ..\docs
