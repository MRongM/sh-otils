
# source tools.sh new
if [[ $1 == "new" ]]; then
  env_name='demo'
  conda create -n $env_name python=3.6.5 -y
  conda activate $env_name
  pip install django
  pip install djangorestframework
  pip install markdown
  pip install django-filter
  pip install drf_yasg
  pip install ipython
  project="project_$env_name"
  django-admin startproject $project
  cd $project
  django-admin startapp app1
fi

# source tools.sh remove
if [[ $1 == 'remove' ]];then
  env_name='demo'
  conda deactivate
  conda remove -n $env_name --all -y
  rm -rf "project_$env_name"
fi

