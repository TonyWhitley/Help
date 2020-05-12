for %%f in (
GettingStarted_General
GettingStarted_GameSpecific
Voice_Speech_DriverNames
Voice_Speech_Swearing
Voice_Speech_TextToSpeech
Voice_Speech_PitExitPositionPrediction
Voice_Speech_PaceNotes
Voice_VoiceRecognition_InstallationTraining
Voice_VoiceRecognition_VoiceCommandsAll
Voice_VoiceRecognition_VoiceCommandsGrouped
Voice_VoiceRecognition_VoiceCommandsCheatSheet
Voice_VoiceRecognition_FreeDictationChatMessages
Overlays
CommandMacros
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
Automobilista
Automobilista2
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
