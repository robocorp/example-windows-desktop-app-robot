*** Settings ***
Documentation     Spotify Windows desktop application robot. Opens the Spotify
...               desktop application, searches for the given song, and plays
...               the song. Demonstrates the basic Windows automation
...               capabilities of the RPA Framework.
Library           RPA.Desktop.Windows

*** Variables ***
${SONG_NAME}=     Monody

*** Keywords ***
Open the Spotify desktop application
    Open From Search    Spotify    Spotify Premium

*** Keywords ***
Search for the song
    Send Keys To Input    ^l
    Send Keys To Input    ${SONG_NAME}

*** Keywords ***
Select the song
    Send Keys To Input    {ENTER}{TAB}{ENTER}

*** Keywords ***
Play the song
    Send Keys To Input    {ENTER}    with_enter=False
    Sleep    10

*** Tasks ***
Open Spotify desktop application and play a song
    Open the Spotify desktop application
    Search for the song
    Select the song
    Play the song
    [Teardown]    Close All Applications
