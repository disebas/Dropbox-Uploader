zenity --list \
     --title="Dropbox Uploader V(300.5)" \
     --text="Select an operation" \
     --radiolist \
     --width="480" \
     --height="350" \
     --column="" --column="#" --column="Operation" --column="Description" \
     FALSE 1 "Upload" "Option to upload files" && FILE=`zenity --file-selection --title="Select your file" `&&./dropbox_uploader.sh upload$FILE \
     FALSE 2 "Download" "Option to download files" \
     FALSE 3 "Delete" "Option to delete files" \
     FALSE 4 "Move" "Option to move files to another folder" \
     FALSE 5 "Copy" "Option to copy files" \
     FALSE 6 "Mkdir" "Option to make a folder" \
     FALSE 7 "List" "xxxxxxxxxx"  \
     FALSE 8 "Share" "Share your fiiles whith another user"  \
     FALSE 9 "Info" "Show the info file"  \
     FALSE 10 "Unlink" "xxxxxxxxx"  \


FILE=`zenity --file-selection --title="Seleccione un archivo"`
        case $? in
                 0)     echo "\"$FILE\" Selected.";;
                 1)     echo "You have not selected any files.";;
                -1)     echo "You have not selected any files.";;
        esac

