pipeline {
    agent any

    stages {
        stage('Application Deployment') {
            agent {
                label 'application'
            }
            steps {
                sh '''
				sudo rm -rf *
    				git clone https://github.com/wanjaripriya/Priya-project.git
				cd Priya-project
				docker build -t tomcat .
				docker run -d -p 8080:8080 --name tomcat-server tomcat
    				cp /home/ubuntu/mumbai-key .
				scp -i "mumbai-key" -r init-scripts docker-compose.yml ubuntu@10.0.1.114:/home/ubuntu
				'''
            }
        }
        stage('Database Deployment') {
			agent {
                label 'database'
            }
            steps {
                sh '''
				cd /home/ubuntu/
				docker-compose up --build
				'''
            }
        }
    }
}
