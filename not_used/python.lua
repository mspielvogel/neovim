" Starts Qt console and connect to pipenv ipykernel
command! -nargs=0 RunQtPipenv call StartConsolePipenv('jupyter qtconsole')

" Starts Qt console and connect to an existing ipykernel
command! -nargs=0 RunQtConsole call jobstart('jupyter qtconsole --existing')

" Starts pipenv ipykernel
command! -nargs=0 RunPipenvKernel terminal /bin/bash -i -c 'pipenv run python -m ipykernel'
command! -nargs=0 RunPoetryKernel terminal /bin/bash -i -c 'poetry run python -m ipykernel'

" Connects nvim-ipy to the existing ipykernel (non-interactive)
command! -nargs=0 ConnectToPipenvKernel call ConnectToPipenvKernel()

" Connects nvim-ipy to the existing ipykernel (interactive)
command! -nargs=0 ConnectConsole terminal /bin/bash -i -c 'jupyter console --existing'
command! -nargs=0 AddFilepathToSyspath call AddFilepathToSyspath()
