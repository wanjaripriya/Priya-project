pipeline {
    agent any

    stages {
        stage('Deployment') {
            agent {
                label 'application'
            }
            steps {
                sh '''
				git clone https://github.com/divyanshu-arya/Priya-project.git/
				cd Priya-project
				docker build -t tomcat .
				docker run -d -p 8080:8080 --name tomcat-server tomcat
				'''
            }
        }
    }
}
