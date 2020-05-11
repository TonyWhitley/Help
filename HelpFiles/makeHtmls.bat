for %%f in (
GettingStarted_General
GettingStarted_GameSpecific
Voice_Speech_DriverNames
Voice_Speech_Swearing
Voice_Speech_TextToSpeech
Voice_Speech_PitExitPositionPrediction
Voice_VoiceRecognition_InstallationTraining
Voice_VoiceRecognition_VoiceCommands
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
About_Customising_TrackLandmarks
About_Customising_PaceNotes
About_Customising_VoicePacks
About_Customising_NameRequests
About_Credits
About_ChangeLog
) do if '%%f' neq '' copy menu.ht+%%f.txt+menu.ml %%f.html

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
copy menu.ht+GettingStarted_GameSpecific_%%f.txt+menu.ml GettingStarted_GameSpecific_%%f.html
copy menu.ht+GameSpecific_ForEachGame_%%f.txt+menu.ml GameSpecific_ForEachGame_%%f.html

)
