"Author: Aman Agarwal <amanagar@amazon.com>
"Version: 1.0
"Usage:
"   :S3Get
"   :S3Put 
"
"
" Just put s3.vim to ~/.vim/plugin/s3.vim
" type:
"   :S3Get              To Get the text from S3
"   :S3Put              To Upload the text to S3
"

fun! <SID>pasteContentFromS3()
        let g:binLink = input("Enter valid s3 file name : ")
        let g:data=system('rm  -f /tmp/'.g:binLink.';/apollo/env/envImprovement/bin/s3get  --key '.g:binLink.'; mv --force '.g:binLink.' /tmp;cat /tmp/'.g:binLink.';rm  -f /tmp/'.g:binLink.';')
        set paste
    exec "normal O".g:data
    startinsert
endfun

fun! <SID>pasteContentToS3()
     let g:filename = input("Enter the file name to upload the content to s3 : ")
     let g:saveFile = input("Do you want to save the existing file(y/n)")
     let g:orignal_filename = bufname("%")
     if g:saveFile == "y"
         :w
     endif
    
     let g:data=system('cp -f '.g:orignal_filename.' /tmp/'.g:filename.'; /apollo/env/envImprovement/bin/s3put  /tmp/'.g:filename)
     echo g:data
 endfun

command! -nargs=0 S3Get :call <SID>pasteContentFromS3()
command! -nargs=0 S3Put :call <SID>pasteContentToS3()

