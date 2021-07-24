#delete book if exsiting
remove-item song-of-prayer.epub

#delete dist folder
remove-item dist -recurse -force
# build the project
npm run build

# reset the name of mimetype so we can add it to the archive later
rename-item -path dist\mimetype -newname !mimetype

#create the archive
C:\Programs\7Zip\App\7-Zip64\7z a -tzip song-of-prayer.epub .\dist\*

#add mimetype to the archive 
C:\Programs\7Zip\App\7-Zip64\7z rn song-of-prayer.epub !mimetype mimetype

