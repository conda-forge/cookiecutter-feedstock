pip install -r requirements.txt
cd "%SRC_DIR%"
py.test --cov=cookiecutter -k "not _hg_ and not mercurial and not test_make_sure_path_exists and not pypackage_git"
if errorlevel 1 exit 1
