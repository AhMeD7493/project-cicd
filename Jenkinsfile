pipline{
     agent any
     stages {
     	stage('Setup Python Virtual ENV')
     	{
     	    sh '''
     	    chmod +x envsetup.sh
     	    ./envsetup
     	    '''
     	}
     	stage('Setup Gunicorn')
     	    steps {
     	       sh '''
     	       chmod +x gunicorn.sh
     	       ./gunicorn.sh
     	       '''
     	    }
     	stage('Setup Nginx')
     	   steps {
     	       sh '''
     	       chmod +x nginx.sh
     	       ./nginx.sh
     	       '''
     	    }
     }
}
