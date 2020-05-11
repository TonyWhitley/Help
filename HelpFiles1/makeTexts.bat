for %%f in (
GettingStarted_General
Voice_Speech_DriverNames
Voice_Speech_Swearing
Voice_Speech_TextToSpeech
Voice_Speech_PitExitPositionPrediction
Voice_VoiceRecognition_InstallationTraining
Voice_VoiceRecognition_VoiceCommands
Voice_VoiceRecognition_FreeDictationChatMessages
Overlays
CommandMacros
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
) do if '%%f' neq '' @echo. > %%f.txt

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
@echo. > GettingStarted_GameSpecific_%%f.txt
@echo. > GameSpecific_ForEachGame_%%f.txt
)
