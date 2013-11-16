
#!/bin/sh
        zenity --list --title="Select an option"--column="Operation" --column="Description"\
        upload  "descrp"



        zenity --entry --title="Añadir un perfil nuevo" --text="Escriba el nombre del perfil nuevo:" \`



        `zenity --entry --title="Añadir un perfil nuevo" \
        --text="Escriba el nombre del perfil nuevo:" \
        --entry-text "NewProfile" `


        function usage
{
    echo -e "Dropbox Uploader v$VERSION"
    echo -e "Andrea Fabrizi - andrea.fabrizi@gmail.com\n"
    echo -e "Usage: $0 COMMAND [PARAMETERS]..."
    echo -e "\nCommands:"

    echo -e "\t upload  ## [LOCAL_FILE/DIR]  <REMOTE_FILE/DIR>"
    echo -e "\t download ##[REMOTE_FILE/DIR] <LOCAL_FILE/DIR>"
    echo -e "\t delete   ##[REMOTE_FILE/DIR]"
    echo -e "\t move     ##[REMOTE_FILE/DIR] [REMOTE_FILE/DIR]"
    echo -e "\t copy     ##[REMOTE_FILE/DIR] [REMOTE_FILE/DIR]"
    echo -e "\t mkdir    ##[REMOTE_DIR]"
    echo -e "\t list     ##<REMOTE_DIR>"
    echo -e "\t share    ##[REMOTE_FILE]"
    echo -e "\t info"  "##"
    echo -e "\t unlink"

    echo -e "\nOptional parameters:"
    echo -e "\t-f [FILENAME] Load the configuration file from a specific file"
    echo -e "\t-s            Skip already existing files when download/upload. Default: Overwrite"
    echo -e "\t-d            Enable DEBUG mode"
    echo -e "\t-q            Quiet mode. Don't show messages"
    echo -e "\t-p            Show cURL progress meter"
    echo -e "\t-k            Doesn't check for SSL certificates (insecure)"

    echo -en "\nFor more info and examples, please see the README file.\n\n"
    remove_temp_files
    exit 1

