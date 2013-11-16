ENTRY=$(zenity --info --title="To conect your account" \
	--text="This is the first time you run this script.\n\n
    1) Open the following URL in your Browser, and log in using your account: $APP_CREATE_URL\n
    2) Click on \"Create App\", then select \"Dropbox API app\"\n
    3) Select \"Files and datastores\"\n
    4) Now go on with the configuration, choosing the app permissions and access restrictions to your DropBox folder\n
    5) Enter the \"App Name\" that you prefer (e.g. MyUploader$RANDOM$RANDOM$RANDOM)\n\n
        Now, click on the \"Create app\" button.\n\n
        When your new App is successfully created, please type the\n
        App Key, App Secret and the Permission type shown in the confirmation page:"\ )

APPKEY=`zenity --entry --title="Dropbox Uploader V(11.13) -" --text="Enter App Key: "`
APPSECRET=`zenity --entry --title="Dropbox Uploader V(11.13) -" --text="Enter App Secret: "`
ACCES_LEVEL=`zenity --entry --title="Dropbox Uploader V(11.13) -" --text="Permission type, App folder or Full Dropbox [a/f]: "`

answer= zenity --question --title="Dropbox Uploader V(11.13) " --text="App key is: $APPKEY\n
App secret is: $APPSECRET \n
Access level is $ACCES_LEVEL\n\n
it's ok ? "



#echo "App key: `echo $ENTRY | cut -d '|' -f1 ` Contraseña: `echo $ENTRY | cut -d '|' -f2 ` PERMISSION : `echo $ENTRY | cut -d'|' -f3`"








# ``
