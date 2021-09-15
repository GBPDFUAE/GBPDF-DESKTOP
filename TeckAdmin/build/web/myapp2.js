var apiObj = null;
        function StartMeeting(){
        const domain = 'meet.jit.si';
                var roomName = 'wishtopia_admin';
                const options = {
                roomName: roomName,
                        width: '100%',
                        height: '600px',
                        parentNode: document.querySelector('#jitsi-meet-conf-container'),
                        userInfo: {
                        displayName: 'wishtopia_admin'
                        },
                        configOverwrite:{
//                        enableWelcomePage: true,
//                                prejoinPageEnabled: false
                        },
                        interfaceConfigOverwrite: {
                        SHOW_JITSI_WATERMARK: false,
                                SHOW_WATERMARK_FOR_GUESTS: false,
                                HIDE_INVITE_MORE_HEADER :true,
                                 SHOW_WATERMARK_FOR_GUESTS: false,
    SHOW_BRAND_WATERMARK: false,
    BRAND_WATERMARK_LINK: '',
                                TOOLBAR_BUTTONS: ['microphone', 'camera', 'chat', 'tileview', 'fullscreen', 'recording', 'hangup', 'raisehand', 'desktop', 'videoquality', 'mute-everyone']
                        },
                        localRecording: {
                        enabled: true,
                                format: 'flac' // can replace with ‘wav’, ‘ogg’
                                },
                        onload: function () {
                        //      alert('loaded');
                        }
                };
                apiObj = new JitsiMeetExternalAPI(domain, options);
                apiObj.addEventListeners({
                readyToClose: function () {
                alert('going to close');
                }
                });
                apiObj.executeCommand('subject', 'New Room 2');
                }

function HangupCall(){
apiObj.executeCommand('hangup');
        }