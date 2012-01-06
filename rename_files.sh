# stupid script to rename a bunch of files for refeeding back into a data processing cronjob that would skip filenames it had already seen
# stole this from the convert script
# originally it was going to handle a bunch of files with spaces, thus the use of find, but I couldn't get it to work right, and well, fuck it.

counter=0

function convert ()
{
    while read item; do
        counter=$[$counter+1]
        echo "On file number: $counter, file: $item"
        renamed=$(echo $item | sed "s/resubmit.xml/resubmit-1.xml/")
        cp $item converted/$renamed
        echo
    done
}

find . -maxdepth 1 -name "*.xml" | convert

