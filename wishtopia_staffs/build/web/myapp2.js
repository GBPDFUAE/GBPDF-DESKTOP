var apiObj = null;
        function StartMeeting(sid,sname){
        const domain = 'meet.jit.si';
                var roomName = sid;
                const options = {
                roomName: roomName,
                        width: '100%',
                        height: '600px',
                        parentNode: document.querySelector('#jitsi-meet-conf-container'),
                        userInfo: {
                        displayName: sname
                        },
                        configOverwrite:{
                        enableWelcomePage: false,
                        enableClosePage:false,
                                prejoinPageEnabled: false
                                
                                
                        },
                        interfaceConfigOverwrite: {
                        SHOW_JITSI_WATERMARK: false,
                         DEFAULT_LOGO_URL: 'https://www.wishtopia.in/images/logo.png',
                                SHOW_WATERMARK_FOR_GUESTS: false,
                                HIDE_INVITE_MORE_HEADER :true,
                                 SHOW_WATERMARK_FOR_GUESTS: false,
    SHOW_BRAND_WATERMARK: false, 
    SHOW_PROMOTIONAL_CLOSE_PAGE: true,
  
                                TOOLBAR_BUTTONS: ['microphone', 'camera', 'chat', 'tileview', 'fullscreen', 'recording', 'hangup', 'raisehand', 'desktop', 'videoquality', 'mute-everyone']
                        },
                        localRecording: {
                        enabled: true,
                                format: 'flac' // can replace with ‘wav’, ‘ogg’
                                },
                        onload: function () {
                        //      alert('loaded');
                        },
                        //logoImageUrl:'https://www.wishtopia.in/images/logo.png'
                };
                apiObj = new JitsiMeetExternalAPI(domain, options);
                apiObj.addEventListeners({
                readyToClose: function () {
               window.location.href = "https://www.wishtopia.in/";
                },
                
                hangup: function () {
                    apiObj.executeCommand('hangup');
               window.location.href = "https://www.wishtopia.in/";
                }
                
                });
               // apiObj.dispose();
               // apiObj.executeCommand('subject', 'New Room 2');
                }

function HangupCall(){
apiObj.executeCommand('hangup');
        }